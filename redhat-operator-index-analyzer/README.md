# Documentation
These scripts will help you to analyze the content of the catalogsource-index in a fast way


## How To

```bash
# Step 01 - Download the index and make it offline available
bash 01-make-index-list-offline-available.sh 4.16

# Step 02 - Analyze the details of the operator
bash 02-get-infos-about-operator.sh 4.16 kubernetes-nmstate-operator

# List all operators
ls v4.13/configs/
ls v4.14/configs/
ls v4.15/configs/
ls v4.16/configs/
```



## Advanced stuff
```bash
# Iterate through alle OpenShift-Major-Versions and make all offline available
for i in 4.13 4.14 4.15 4.16; do bash 01-make-index-list-offline-available.sh $i; done

# Iterate through all OpenShift-Major-Versions for the same operator and list details/infos about it
for i in 4.13 4.14 4.15 4.16; do bash 02-get-infos-about-operator.sh $i kubernetes-nmstate-operator; done
```