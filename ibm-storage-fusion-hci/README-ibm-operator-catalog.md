# Image-Liste anzeigen lassen

```bash
# Alle Operatoren aus dem Katalog anzeigen lassen
oc-mirror list operators --catalog=icr.io/cpopen/ibm-operator-catalog:latest

# Liste Channel-Informationen zum Operator ibm-appconnect
oc-mirror list operators --catalog=icr.io/cpopen/ibm-operator-catalog:latest --package=ibm-appconnect

# Liste Versions-Informationen zum Operator ibm-appconnect
oc-mirror list operators --catalog=icr.io/cpopen/ibm-operator-catalog:latest --package=ibm-appconnect --channel=v12.9

```