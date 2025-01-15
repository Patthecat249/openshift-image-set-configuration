#!/bin/bash
# How to use:
# bash 02-get-infos-about-operator.sh <openshift-major-version> <operator-name>
# bash 02-get-infos-about-operator.sh 4.13 amq-streams

# ANSI-Farbcodes für Grün und Zurücksetzen
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Usage Hinweis
if [ "$#" -ne 2 ]; then
    echo "Usage: bash $0 <openshift-major-version> <operator-name>"
    exit 1
fi

# Argumente setzen
OCP_MAJOR_VERSION=$1
OPERATORNAME=$2

# Debugging-Hinweis
echo -e "OpenShift Version: ${GREEN}${OCP_MAJOR_VERSION}${NC}"
echo -e "Operator Name: ${GREEN}${OPERATORNAME}${NC}"

# Prüfen, ob die JSON-Datei existiert
FILE="./v${OCP_MAJOR_VERSION}/configs/${OPERATORNAME}/catalog.json"
if [ ! -f "$FILE" ]; then
    echo "Fehler: Datei ${FILE} nicht gefunden."
    exit 1
fi

# Name des Operators ausgeben
echo -e "Name of the chosen operator: ${GREEN}"
jq -cs . "$FILE" | jq -r '.[0].name'
echo -e "${NC}"

# Standardkanal des Operators ausgeben
echo -e "Default Channel of the chosen operator:"
OPDEFCHAN=$(jq -cs . "$FILE" | jq -r '.[0].defaultChannel')

# Ergebnis prüfen
if [ -z "$OPDEFCHAN" ] || [ "$OPDEFCHAN" == "null" ]; then
    echo "Fehler: Kein Standardkanal gefunden oder ungültig."
    exit 1
fi

# Ergebnis anzeigen
echo -e "${GREEN}${OPDEFCHAN}${NC}"
echo ""

# Ermittle alle anderen Channel für den Operator
# cat v4.16/configs/amq-streams/catalog.json | jq -r '. | select(.schema == "olm.channel") | .name'
# OPALLCHAN=$(jq -cs . "$FILE" | jq -r '. | select(.schema == "olm.channel") | .name')
OPALLCHAN=$(jq -cs . "$FILE" | jq -r '.[] | select(.schema == "olm.channel") | .name')

# Zeige alle Channel des Operators an
echo -e "All Channels available of the chosen operator:"
echo -e "${GREEN}${OPALLCHAN}${NC}"
echo ""

# Ermittle alle Release-Versionen eines Operators
OPRELEASE=$(jq -cs . "$FILE" | jq ".[] | select(.name==\"$OPDEFCHAN\")" | jq -r '.entries[].name')

# Ergebnis prüfen
if [ -z "$OPRELEASE" ]; then
    echo "Fehler: Keine Release-Versionen gefunden."
    exit 1
fi

# Alle Release-Versionen ausgeben
echo "Release-Versions of the operator in the default channel:"
echo -e "${GREEN}${OPRELEASE}${NC}"

# Two empty lines
echo -e "\n\n"
