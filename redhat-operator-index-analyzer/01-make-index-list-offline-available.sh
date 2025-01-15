#!/usr/bin/bash

# Usage-Hinweis
if [ "$#" -ne 1 ]; then
    echo "Usage: bash $0 <openshift-major-version>"
    echo "e.g.: bash $0 4.14"
    exit 1
fi

# Print oc-mirror version-information
/usr/local/bin/oc-mirror version --output=json | jq -r '
.clientVersion | 
[
  ["Key", "Value"],
  ["Major", .major],
  ["Minor", .minor],
  ["GitVersion", .gitVersion],
  ["GitCommit", .gitCommit],
  ["GitTreeState", .gitTreeState],
  ["BuildDate", .buildDate],
  ["GoVersion", .goVersion],
  ["Compiler", .compiler],
  ["Platform", .platform]
] | 
.[] | @tsv' | column -t -s$'\t'

# Argument setzen
OCP_MAJOR_VERSION=$1
IMAGE="registry.redhat.io/redhat/redhat-operator-index:v${OCP_MAJOR_VERSION}"
LOCAL_DIR="./v${OCP_MAJOR_VERSION}"

# Schritt 1: Download des Images
echo "Downloading image: ${IMAGE}"
if ! podman pull "${IMAGE}"; then
    echo "Error: Failed to pull image ${IMAGE}"
    exit 1
fi

# Schritt 2: Ordner mit Operatoren abrufen
echo "Fetching folder information from image..."
CONFIGS_FOLDER=$(podman inspect --format '{{index .Config.Labels "operators.operatorframework.io.index.configs.v1"}}' "${IMAGE}")

if [ -z "$CONFIGS_FOLDER" ]; then
    echo "Error: Failed to retrieve configs folder information from image."
    exit 1
fi
echo "Configs folder: ${CONFIGS_FOLDER}"

# Schritt 3: Container im Hintergrund starten
echo "Running container in the background..."
if ! podman run --rm -d --name redhat-catalog "${IMAGE}"; then
    echo "Error: Failed to start container redhat-catalog."
    exit 1
fi

# Schritt 4: Prüfen, ob der Ordner existiert
if [ -d "${LOCAL_DIR}" ]; then
    echo "Directory ${LOCAL_DIR} already exists. Removing it..."
    rm -rf "${LOCAL_DIR}"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to remove existing directory ${LOCAL_DIR}."
        exit 1
    fi
fi

# Ordner erstellen
mkdir -p "${LOCAL_DIR}"
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directory ${LOCAL_DIR}."
    exit 1
fi


# Schritt 5: Inhalte aus dem Container kopieren
echo "Copying content from container to local filesystem..."
mkdir -p "${LOCAL_DIR}"
if ! podman cp "redhat-catalog:${CONFIGS_FOLDER}" "${LOCAL_DIR}/"; then
    echo "Error: Failed to copy configs from container to ${LOCAL_DIR}/."
    podman stop redhat-catalog >/dev/null 2>&1
    exit 1
fi

# Schritt 6: Container stoppen und bereinigen
echo "Stopping and removing the container..."
if ! podman stop redhat-catalog >/dev/null 2>&1; then
    echo "Warning: Failed to stop container redhat-catalog."
fi

echo "Process completed successfully. Operators copied to ${LOCAL_DIR}/."
