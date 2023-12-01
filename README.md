# openshift-image-set-configuration

## Mirror Images
```bash
cd /root/image-mirrors-with-oc-mirror
oc mirror --config=./imageset-config.yaml docker://patrick-local-docker-repo.artifactory.home.local/mirror/oc-mirror-metadata
```

## Prerquisites
- Bastion Host with RHEL, Cent OS or Fedora

## Download oc-mirror client
```bash
# Download
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.14.4/oc-mirror.tar.gz

# Extract and Copy Binary to executable PATH
tar xf oc-mirror.tar.gz
chmod +x oc-mirror && cp oc-mirror /usr/local/bin/
```

## List all OpenShift-Versions (Releases)
```bash
# List OpenShift Release-Versions
# oc-mirror list releases

# Available OpenShift Container Platform release versions: 
  4.0
  4.1
  4.2
  4.3
  4.4
  4.5
  4.6
  4.7
  4.8
  4.9
  4.10
  4.11
  4.12
  4.13
  4.14
  4.15
```

# List Releases by Version 4.14
```bash
# oc-mirror list releases --version=4.14
Logging to .oc-mirror.log
Listing stable channels. Use --channel=<channel-name> to filter.
Use oc-mirror list release --channels to discover other channels.

Channel: stable-4.14
Architecture: amd64
4.14.0
4.14.1
4.14.2
4.14.3
```


# List all Channels by Version 4.14 
```bash
# oc-mirror list releases --version=4.14 --channels
Logging to .oc-mirror.log
Listing channels for version 4.14.

candidate-4.14
eus-4.14
fast-4.14
stable-4.14
candidate-4.1
```

# List all Versions by selecting Channel eus-4.14
```bash
# oc-mirror list releases --version=4.14 --channel=eus-4.14
Logging to .oc-mirror.log
Channel: eus-4.14
Architecture: amd64
4.14.0
4.14.1
4.14.2
4.14.3
```

# List all Versions by selecting Channel fast-4.14
```bash
# oc-mirror list releases --version=4.14 --channel=fast-4.14
Logging to .oc-mirror.log
Channel: fast-4.14
Architecture: amd64
4.13.0
4.13.1
4.13.2
4.13.3
4.13.4
4.13.5
4.13.6
4.13.8
4.13.9
4.13.10
4.13.11
4.13.12
4.13.13
4.13.14
4.13.15
4.13.17
4.13.18
4.13.19
4.13.21
4.13.22
4.13.23
4.14.0
4.14.1
4.14.2
4.14.3
4.14.4
```

# List all Catalog-Hub Operators-Versions
```bash
# oc-mirror list operators
Available OpenShift OperatorHub catalog versions:
  v4.8
  v4.5
  v4.12
  v4.13
  v4.10
  v4.6
  v4.9
  v4.14
  v4.15
  v4.11
  v4.7
```

# List operators by OpenShift-Version
```bash
# oc-mirror list operators --version=4.14
Logging to .oc-mirror.log
Available OpenShift OperatorHub catalogs:
OpenShift 4.14:
registry.redhat.io/redhat/redhat-operator-index:v4.14
registry.redhat.io/redhat/certified-operator-index:v4.14
registry.redhat.io/redhat/community-operator-index:v4.14
registry.redhat.io/redhat/redhat-marketplace-index:v4.14
```

# List available Operators in OpenShift v4.14 in the catalog redhat-operator-index:v4.14
```bash
# oc-mirror list operators --version=4.14 --catalog=registry.redhat.io/redhat/redhat-operator-index:v4.14
# 30.11.23 - 08:53
Logging to .oc-mirror.log
NAME                                          DISPLAY NAME                                             DEFAULT CHANNEL
3scale-operator                               Red Hat Integration - 3scale                             threescale-2.13
advanced-cluster-management                   Advanced Cluster Management for Kubernetes               release-2.9    
amq-broker-rhel8                              Red Hat Integration - AMQ Broker for RHEL 8 (Multiarch)  7.11.x
amq-online                                    Red Hat Integration - AMQ Online                         stable
amq-streams                                   AMQ Streams                                              stable
amq7-interconnect-operator                    Red Hat Integration - AMQ Interconnect                   1.10.x
ansible-automation-platform-operator          Ansible Automation Platform                              stable-2.4-cluster-scoped
ansible-cloud-addons-operator                 Ansible Cloud Addons                                     stable-2.4-cluster-scoped
apicast-operator                              Red Hat Integration - 3scale APIcast gateway             threescale-2.13
aws-efs-csi-driver-operator                   AWS EFS CSI Driver Operator                              stable
aws-load-balancer-operator                    AWS Load Balancer Operator                               stable-v1
bamoe-businessautomation-operator             IBM Business Automation                                  8.x-stable
bamoe-kogito-operator                         IBM BAMOE Kogito Operator                                8.x
bare-metal-event-relay                        Bare Metal Event Relay                                   stable
businessautomation-operator                   Business Automation                                      stable
cincinnati-operator                           OpenShift Update Service                                 v1
cluster-kube-descheduler-operator             Kube Descheduler Operator                                stable
cluster-logging                               Red Hat OpenShift Logging                                stable-5.8
cluster-observability-operator                Cluster Observability Operator                           development
clusterresourceoverride                       ClusterResourceOverride Operator                         stable
compliance-operator                           Compliance Operator                                      stable
container-security-operator                   Red Hat Quay Container Security Operator                 stable-3.9
costmanagement-metrics-operator               Cost Management Metrics Operator                         stable
cryostat-operator                             Red Hat build of Cryostat                                stable
datagrid                                      Data Grid                                                8.4.x
devspaces                                     Red Hat OpenShift Dev Spaces                             stable
devworkspace-operator                         DevWorkspace Operator                                    fast
dpu-network-operator                          DPU Network Operator                                     stable
eap                                           JBoss EAP                                                stable
elasticsearch-operator                        OpenShift Elasticsearch Operator                         stable-5.8
external-dns-operator                         ExternalDNS Operator                                     stable-v1
fence-agents-remediation                      Fence Agents Remediation Operator                        stable
file-integrity-operator                       File Integrity Operator                                  stable
fuse-apicurito                                Red Hat Integration - API Designer                       fuse-apicurito-7.12.x
fuse-console                                  Red Hat Integration - Fuse Console                       7.12.x
fuse-online                                   Red Hat Integration - Fuse Online                        latest
gatekeeper-operator-product                   Gatekeeper Operator                                      stable
gcp-filestore-csi-driver-operator             GCP Filestore CSI Driver Operator                        stable
ingress-node-firewall                         Ingress Node Firewall Operator                           stable
jaeger-product                                Red Hat OpenShift distributed tracing platform           stable
jws-operator                                  JWS Operator                                             alpha
kernel-module-management                      Kernel Module Management                                 stable
kernel-module-management-hub                  Kernel Module Management (Hub)                           stable
kiali-ossm                                    Kiali Operator                                           stable
klusterlet-product                            Klusterlet                                               stable-2.4
kubernetes-nmstate-operator                   Kubernetes NMState Operator                              stable
kubevirt-hyperconverged                       OpenShift Virtualization                                 stable
local-storage-operator                        Local Storage                                            stable
loki-operator                                 Loki Operator                                            stable-5.8
lvms-operator                                 LVM Storage                                              stable-4.14
machine-deletion-remediation                  Machine Deletion Remediation operator                    stable
mcg-operator                                  NooBaa Operator                                          stable-4.14
metallb-operator                              MetalLB Operator                                         stable
mta-operator                                  Migration Toolkit for Applications Operator              stable-v6.2
mtc-operator                                  Migration Toolkit for Containers Operator                release-v1.8
mtr-operator                                  Migration Toolkit for Runtimes Operator                  alpha
mtv-operator                                  Migration Toolkit for Virtualization Operator            release-v2.5
multicluster-engine                           multicluster engine for Kubernetes                       stable-2.3
multicluster-global-hub-operator-rh           Multicluster Global Hub Operator                         release-1.0
netobserv-operator                            Network Observability                                    stable
nfd                                           Node Feature Discovery Operator                          stable
node-healthcheck-operator                     Node Health Check Operator                               stable
node-maintenance-operator                     Node Maintenance Operator                                stable
node-observability-operator                   Node Observability Operator                              alpha
numaresources-operator                        numaresources-operator                                   4.14
ocs-client-operator                           OpenShift Data Foundation Client                         stable-4.14
ocs-operator                                  OpenShift Container Storage                              stable-4.14
odf-csi-addons-operator                       CSI Addons                                               stable-4.14
odf-multicluster-orchestrator                 ODF Multicluster Orchestrator                            stable-4.14
odf-operator                                  OpenShift Data Foundation                                stable-4.14
odr-cluster-operator                          Openshift DR Cluster Operator                            stable-4.14
odr-hub-operator                              Openshift DR Hub Operator                                stable-4.14
openshift-cert-manager-operator               cert-manager Operator for Red Hat OpenShift              stable-v1
openshift-custom-metrics-autoscaler-operator  Custom Metrics Autoscaler                                stable
openshift-gitops-operator                     Red Hat OpenShift GitOps                                 latest
openshift-pipelines-operator-rh               Red Hat OpenShift Pipelines                              latest
openshift-secondary-scheduler-operator        Secondary Scheduler Operator for Red Hat OpenShift       stable
opentelemetry-product                         Red Hat OpenShift distributed tracing data collection    stable
ptp-operator                                  PTP Operator                                             stable
quay-bridge-operator                          Red Hat Quay Bridge Operator                             stable-3.10
quay-operator                                 Red Hat Quay                                             stable-3.9
red-hat-camel-k                               Red Hat Integration - Camel K                            1.10.x
redhat-oadp-operator                          OADP Operator                                            stable-1.3
rh-service-binding-operator                   Service Binding Operator                                 stable
rhacs-operator                                Advanced Cluster Security for Kubernetes                 stable
rhbk-operator                                 Keycloak Operator                                        stable-v22
rhods-codeflare-operator                      RHODS CodeFlare Operator                                 alpha
rhods-operator                                Red Hat OpenShift Data Science                           stable
rhods-prometheus-operator                     Prometheus Operator                                      beta
rhpam-kogito-operator                         RHPAM Kogito Operator                                    7.x
rhsso-operator                                Red Hat Single Sign-On Operator                          stable
run-once-duration-override-operator           Run Once Duration Override Operator                      stable
sandboxed-containers-operator                 OpenShift sandboxed containers Operator                  stable
secrets-store-csi-driver-operator             Secrets Store CSI Driver Operator                        preview
security-profiles-operator                    Security Profiles Operator                               release-alpha-rhel-8
self-node-remediation                         Self Node Remediation Operator                           stable
serverless-operator                           Red Hat OpenShift Serverless                             stable
service-registry-operator                     Red Hat Integration - Service Registry Operator          2.x
servicemeshoperator                           Red Hat OpenShift Service Mesh                           stable
skupper-operator                              Red Hat Service Interconnect                             alpha
sriov-network-operator                        SR-IOV Network Operator                                  stable
submariner                                    Submariner                                               stable-0.16
tang-operator                                 NBDE Tang Server                                         alpha
tempo-product                                 Tempo Operator                                           stable
topology-aware-lifecycle-manager              Topology Aware Lifecycle Manager                         stable
vertical-pod-autoscaler                       VerticalPodAutoscaler                                    stable
volsync-product                               VolSync                                                  stable
web-terminal                                  Web Terminal                                             fast
windows-machine-config-operator               Windows Machine Config Operator                          stable
```

# List available Operators in OpenShift v4.14 in the catalog certified-operator-index:v4.14
```bash
# oc-mirror list operators --version=4.14 --catalog=registry.redhat.io/redhat/certified-operator-index:v4.14
Logging to .oc-mirror.log
NAME                                         DISPLAY NAME                                                          DEFAULT CHANNEL
abinitio-runtime-operator                    Co>Operating System Runtime Operator                                  stable
aci-containers-operator                      Cisco ACI Containers Operator                                         stable
aikit-operator                               Intel® oneAPI AI Analytics Toolkit Operator                           alpha
ako-operator                                 AKO Operator                                                          stable
alloy                                        Alloy                                                                 alpha
anchore-engine                               Anchore Engine Operator                                               alpha
anzo-operator                                Anzo Operator                                                         stable
anzograph-operator                           AnzoGraph Operator                                                    stable
anzounstructured-operator                    Anzo Unstructured Operator                                            stable
appdynamics-operator                         AppDynamics Operator for Kubernetes                                   alpha
cass-operator                                DataStax Kubernetes Operator for Apache Cassandra                     stable
ccm-node-agent-dcap-operator                 CCM Node Agent DCAP Operator                                          alpha
ccm-node-agent-operator                      CCM Node Agent Operator                                               alpha
cilium                                       Cilium                                                                1.14
cilium-enterprise                            Cilium Enterprise                                                     1.14
citrix-adc-istio-ingress-gateway-operator    Citrix ADC Istio Ingress Gateway Operator                             alpha
citrix-cpx-istio-sidecar-injector-operator   Citrix ADC CPX Istio Sidecar Injector Operator                        alpha
citrix-cpx-with-ingress-controller-operator  Citrix ADC CPX with Ingress Controller                                stable
citrix-ingress-controller-operator           Citrix Ingress Controller                                             stable
cloud-native-postgresql                      EDB Postgres for Kubernetes                                           stable-v1.21
cloudbees-ci                                 CloudBees CI                                                          alpha
cnfv-operator                                CloudNFV                                                              alpha
cockroachdb-certified                        CockroachDB Operator                                                  stable
conjur-follower-operator                     Conjur Enterprise Follower Operator                                   stable
crunchy-postgres-operator                    Crunchy Postgres for Kubernetes                                       v5
cte-k8s-operator                             CipherTrust Transparent Encryption for Kubernetes (CTE-K8s) Operator  stable
datadog-operator-certified                   Datadog Operator                                                      stable
eginnovations-operator                       eG Innovations Universal Agent Operator                               beta
elasticsearch-eck-operator-certified         Elasticsearch (ECK) Operator                                          stable
federatorai-certified                        Federator.ai                                                          stable
fujitsu-enterprise-operator                  FUJITSU Enterprise Postgres 13 Operator                               stable-13
fujitsu-enterprise-postgres-operator         Fujitsu Enterprise Postgres Operator                                  stable
function-mesh                                Function Mesh Operator                                                alpha
gpu-operator-certified                       NVIDIA GPU Operator                                                   v23.9
hazelcast-platform-operator                  Hazelcast Platform Operator                                           alpha
hpe-ezmeral-csi-operator                     HPE Ezmeral Data Fabric CSI Operator for Kubernetes                   stable
ibm-application-gateway-operator             IBM Application Gateway Operator                                      stable
ibm-data-reporter-operator                   IBM Data Reporter Operator                                            stable
ibm-metrics-operator                         IBM Metrics Operator                                                  stable
ibm-security-verify-directory-operator       IBM Security Verify Directory                                         stable
ibm-security-verify-operator                 IBM Security Verify Operator                                          stable
infoscale-dr-manager                         InfoScale™ DR Manager                                                 8.0.200x
infoscale-licensing-operator                 InfoScale™ Licensing Operator                                         8.0.200x
infoscale-operator                           InfoScale™ SDS Operator                                               stable
infoscale-sds-operator                       InfoScale™ SDS Operator                                               8.0.200x
infrastructure-asset-orchestrator-certified  Infrastructure Asset Orchestrator                                     stable
instana-agent-operator                       Instana Agent Operator                                                stable
intel-device-plugins-operator                Intel Device Plugins Operator                                         alpha
intel-kubernetes-power-manager               Intel Kubernetes Power Manager                                        alpha
iomesh-operator                              IOMesh Operator                                                       stable
joget-dx-operator                            Joget DX Operator                                                     alpha
joget-dx8-operator                           Joget DX 8 Operator                                                   alpha
k8s-triliovault                              Trilio for Kubernetes                                                 3.1.x
keysight-ati-updates                         Keysight ATI Updates Operator                                         alpha
keysight-kcos-framework                      Keysight KCOS Framework Operator                                      alpha
keysight-kcos-ingress                        Keysight KCOS Ingress Operator                                        alpha
keysight-kcos-licensing                      Keysight KCOS Licensing Operator                                      alpha
keysight-kcos-sso                            Keysight KCOS SSO Operator                                            alpha
keysight-keycloak-operator                   Keysight Keycloak Operator                                            alpha
keysight-load-core                           Keysight LoadCore Operator                                            alpha
keysight-loadcore-agents                     Keysight LoadCore Agents Operator                                     alpha
keysight-nats-operator                       Keysight Nats Operator                                                alpha
keysight-nimbusmosaic-dusim                  Keysight Nimbus Mosaic DUSim Operator                                 alpha
keysight-rest-api-browser-v1                 Keysight Rest API Browser Operator v1                                 alpha
keysight-wap-appsec                          Keysight WAP APPSEC Operator                                          alpha
keysight-wap-core                            Keysight WAP Core Operator                                            alpha
keysight-wap-db                              Keysight WAP DB Operator                                              alpha
keysight-wap-diagnostics                     Keysight WAP Diagnostics Operator                                     alpha
keysight-wap-logging                         Keysight WAP Logging Operator                                         alpha
keysight-wap-migration                       Keysight WAP Migration Operator                                       alpha
keysight-wap-msg-broker                      Keysight WAP Message Broker Operator                                  alpha
keysight-wap-notifications                   Keysight WAP Notifications Operator                                   alpha
keysight-wap-stats-dashboards                Keysight WAP Stats Dashboard Operator                                 alpha
keysight-wap-storage                         Keysight WAP Storage Operator                                         alpha
keysight-wap-test-core                       Keysight WAP Test Core Operator                                       alpha
keysight-wap-ui                              Keysight WAP UI Operator                                              alpha
keysight-websocket-service                   Keysight Websocket Operator                                           alpha
kong-gateway-operator                        Kong                                                                  alpha
kubearmor-operator-certified                 KubeArmor Operator                                                    stable
kubemq-operator-marketplace                  Kubemq Enterprise Operator                                            alpha
kubeturbo-certified                          Kubeturbo Operator                                                    stable
lenovo-locd-operator                         lenovo-locd-operator                                                  alpha
marketplace-games-operator                   Arcade Operator                                                       alpha
memcached-operator-ogaye                     memcached-operator-ogaye                                              alpha
minio-operator                               Minio Operator                                                        stable
model-builder-for-vision-certified           IBM Model Builder for Vision                                          stable
mongodb-atlas-kubernetes                     MongoDB Atlas Operator                                                stable
mongodb-enterprise                           MongoDB Enterprise Operator                                           stable
netscaler-adm-agent-operator                 Netscaler ADM Agent Operator                                          stable
netscaler-operator                           NetScaler Operator                                                    stable
neuvector-certified-operator                 NeuVector Operator                                                    beta
nexus-repository-ha-operator-certified       Nexus Repository HA Operator                                          stable
nginx-ingress-operator                       Nginx Ingress Operator                                                alpha
nutanixcsioperator                           Nutanix CSI Operator                                                  stable
nxiq-operator-certified                      Nexus IQ Operator                                                     stable
nxrm-operator-certified                      Nexus Repository Operator                                             stable
open-liberty-certified                       Open Liberty                                                          v1.2
openshiftartifactoryha-operator              JFrog Artifactory Enterprise Operator                                 alpha
openshiftxray-operator                       JFrog Xray Continuous Security Operator                               alpha
operator-certification-operator              Operator Certification Operator                                       alpha
ovms-operator                                OpenVINO Toolkit Operator                                             alpha
pachyderm-operator                           Pachyderm                                                             stable
pcc-operator                                 Prisma Cloud Compute Operator                                         stable
pmem-csi-operator-os                         Operator for PMEM-CSI driver                                          stable
portworx-certified                           Portworx Enterprise                                                   stable
prometurbo-certified                         Prometurbo Operator                                                   stable
redhat-marketplace-operator                  Red Hat Marketplace Deployment Operator by IBM                        stable
redis-enterprise-operator-cert               Redis Enterprise Operator                                             production
runtime-component-operator-certified         Runtime Component                                                     v1.2
runtime-fabric-operator                      Runtime Fabric Operator                                               alpha
sanstoragecsi-operator-bundle                NEC Storage M Series CSI Operator                                     stable
silicom-sts-operator                         Silicom STS Operator                                                  stable
smilecdr-operator                            Smilecdr Operator                                                     alpha
sriov-fec                                    SR-IOV Operator for Wireless FEC Accelerators                         stable
stackable-commons-operator                   Stackable Commons Operator                                            stable
stackable-zookeeper-operator                 Apache Zookeeper Operator                                             stable
sysdig-certified                             Sysdig Agent Operator                                                 stable
t8c-certified                                Turbonomic Platform Operator                                          stable
t8c-tsc-client-certified                     Turbonomic Secure Connect Client                                      stable
tawon-operator                               Tawon                                                                 alpha
test-obi-new-cnf-option                      test-obi-new-cnf-option                                               stable
tigera-operator                              Tigera Operator                                                       release-v1.29
timemachine-operator                         Time Machine Operator                                                 alpha
vault-secrets-operator                       Vault Secrets Operator                                                stable
vfunction-server-operator                    vFunction Operator                                                    stable
webotx-operator                              WebOTX Operator for Kubernetes                                        stable
xcrypt-operator                              Zettaset XCrypt Operator                                              alpha
zabbix-operator-certified                    Zabbix Operator                                                       lts
```
# List available Operators in OpenShift v4.14 in the catalog community-operator-index:v4.14
```bash
# oc-mirror list operators --version=4.14 --catalog=registry.redhat.io/redhat/community-operator-index:v4.14
Logging to .oc-mirror.log
NAME                                       DISPLAY NAME                                                      DEFAULT CHANNEL
3scale-community-operator                  3scale API Management                                             threescale-2.13
ack-acm-controller                         AWS Controllers for Kubernetes - Amazon ACM                       alpha
ack-apigatewayv2-controller                AWS Controllers for Kubernetes - Amazon API Gateway v2            alpha
ack-applicationautoscaling-controller      AWS Controllers for Kubernetes - Amazon Application Auto Scaling  alpha
ack-cloudtrail-controller                  AWS Controllers for Kubernetes - Amazon CloudTrail                alpha
ack-cloudwatch-controller                  AWS Controllers for Kubernetes - Amazon CloudWatch                alpha
ack-dynamodb-controller                    AWS Controllers for Kubernetes - Amazon DynamoDB                  alpha
ack-ec2-controller                         AWS Controllers for Kubernetes - Amazon EC2                       alpha
ack-ecr-controller                         AWS Controllers for Kubernetes - Amazon ECR                       alpha
ack-eks-controller                         AWS Controllers for Kubernetes - Amazon EKS                       alpha
ack-elasticache-controller                 AWS Controllers for Kubernetes - Amazon ElastiCache               alpha
ack-emrcontainers-controller               AWS Controllers for Kubernetes - Amazon EMR on EKS                alpha
ack-eventbridge-controller                 AWS Controllers for Kubernetes - Amazon EventBridge               alpha
ack-iam-controller                         AWS Controllers for Kubernetes - Amazon IAM                       alpha
ack-kinesis-controller                     AWS Controllers for Kubernetes - Amazon Kinesis                   alpha
ack-kms-controller                         AWS Controllers for Kubernetes - Amazon KMS                       alpha
ack-lambda-controller                      AWS Controllers for Kubernetes - Amazon Lambda                    alpha
ack-memorydb-controller                    AWS Controllers for Kubernetes - MemoryDB                         alpha
ack-mq-controller                          AWS Controllers for Kubernetes - Amazon MQ                        alpha
ack-opensearchservice-controller           AWS Controllers for Kubernetes - Amazon OpenSearch Service        alpha
ack-pipes-controller                       AWS Controllers for Kubernetes - Amazon Pipes                     alpha
ack-prometheusservice-controller           AWS Controllers for Kubernetes - Amazon Prometheus                alpha
ack-rds-controller                         AWS Controllers for Kubernetes - Amazon RDS                       alpha
ack-route53-controller                     AWS Controllers for Kubernetes - Amazon Route53                   alpha
ack-route53resolver-controller             AWS Controllers for Kubernetes - Amazon Route53Resolver           alpha
ack-s3-controller                          AWS Controllers for Kubernetes - Amazon S3                        alpha
ack-sagemaker-controller                   AWS Controllers for Kubernetes - Amazon SageMaker                 alpha
ack-secretsmanager-controller              AWS Controllers for Kubernetes - Amazon Secrets Manager           alpha
ack-sfn-controller                         AWS Controllers for Kubernetes - Amazon Step Functions            alpha
ack-sns-controller                         AWS Controllers for Kubernetes - Amazon SNS                       alpha
ack-sqs-controller                         AWS Controllers for Kubernetes - Amazon SQS                       alpha
aerospike-kubernetes-operator              Aerospike Kubernetes Operator                                     stable
airflow-helm-operator                      Airflow Helm Operator                                             alpha
alvearie-imaging-ingestion                 Alvearie Imaging Ingestion Operator                               alpha
annotationlab                              NLP Lab                                                           alpha
apicast-community-operator                 APIcast                                                           stable
apicurio-registry                          Apicurio Registry Operator                                        2.x
apicurito                                  API Designer                                                      latest
apimatic-kubernetes-operator               APIMatic Operator                                                 alpha
application-services-metering-operator     Application Services Metering Operator                            alpha
argocd-operator                            Argo CD                                                           alpha
assisted-service-operator                  Infrastructure Operator for Red Hat OpenShift                     alpha
authorino-operator                         Authorino Operator                                                stable
aws-efs-operator                           AWS EFS Operator                                                  stable
awss3-operator-registry                    AWS S3 Operator                                                   alpha
awx-operator                               AWX                                                               alpha
azure-service-operator                     Azure Service Operator                                            stable
beegfs-csi-driver-operator                 BeeGFS CSI Driver                                                 stable
bpfd-operator                              Bpfd Operator                                                     alpha
camel-k                                    Camel K Operator                                                  stable-v2
camel-karavan-operator                     Camel Karavan Operator                                            alpha
cass-operator-community                    DataStax Kubernetes Operator for Apache Cassandra                 stable
cert-manager                               cert-manager                                                      stable
cert-utils-operator                        Cert Utils Operator                                               alpha
cluster-aas-operator                       Cluster as a service operator                                     alpha
cluster-impairment-operator                cluster-impairment-operator                                       beta
cluster-manager                            Cluster Manager                                                   stable
cluster-relocation-operator                Cluster Relocation Operator                                       stable
cockroachdb                                CockroachDB Helm Operator                                         stable-v6.x
codeflare-operator                         CodeFlare Operator                                                alpha
community-kubevirt-hyperconverged          KubeVirt HyperConverged Cluster Operator                          stable
community-trivy-operator                   Community Trivy Operator                                          stable
community-windows-machine-config-operator  Community Windows Machine Config Operator                         preview
dapr-kubernetes-operator                   Dapr Control Plane Operator                                       alpha
datadog-operator                           Datadog Operator                                                  alpha
datatrucker-operator                       DataTrucker.IO                                                    alpha
dbaas-operator                             OpenShift Database Access Operator                                stable
debezium-operator                          Debezium Operator                                                 debezium-latest
dell-csm-operator                          Dell CSM Operator                                                 alpha
deployment-validation-operator             Deployment Validation Operator                                    alpha
devopsinabox                               Devops-in-a-box                                                   alpha
dynatrace-operator                         Dynatrace Operator                                                alpha
eclipse-amlen-operator                     eclipse-amlen-operator                                            alpha
eclipse-che                                Eclipse Che                                                       stable
ecr-secret-operator                        ECR Secret Operator                                               v0.4
edp-keycloak-operator                      EDP Keycloak Operator                                             alpha
eginnovations-operator                     eG Innovations Universal Agent Operator                           beta
egressip-ipam-operator                     Egressip Ipam Operator                                            alpha
ember-csi-community-operator               Ember CSI Operator                                                beta
etcd                                       etcd                                                              singlenamespace-alpha
eventing-kogito                            Kogito Knative Eventing Source                                    alpha
external-secrets-operator                  External Secrets Operator                                         alpha
falcon-operator                            CrowdStrike Falcon Platform - Operator                            alpha
fence-agents-remediation                   Fence Agents Remediation Operator - Community Edition             stable
flink-kubernetes-operator                  Flink Kubernetes Operator                                         alpha
flux                                       Flux                                                              stable
forklift-operator                          Forklift Operator                                                 stable-v2.5
fossul-operator                            Fossul Operator                                                   alpha
github-arc-operator                        github-arc-operator                                               alpha
gitops-primer                              gitops-primer                                                     alpha
gitwebhook-operator                        GitWebhook operator                                               alpha
global-load-balancer-operator              Global Load Balancer Operator                                     alpha
grafana-operator                           Grafana Operator                                                  v4
group-sync-operator                        Group Sync Operator                                               alpha
hawtio-operator                            Hawtio Operator                                                   alpha
hazelcast-platform-operator                Hazelcast Platform Operator                                       alpha
hedvig-operator                            Hedvig Operator                                                   stable
hive-operator                              Hive for Red Hat OpenShift                                        alpha
horreum-operator                           Horreum                                                           alpha
hyperfoil-bundle                           Hyperfoil                                                         alpha
ibm-block-csi-operator-community           IBM block storage CSI driver operator                             stable
ibm-security-verify-access-operator        IBM Security Verify Access Operator                               stable
ibm-spectrum-scale-csi-operator            IBM Spectrum Scale CSI Plugin Operator                            stable
ibmcloud-operator                          IBM Cloud Operator                                                stable
infinispan                                 Infinispan Operator                                               2.3.x
integrity-shield-operator                  K8s Integrity Shield                                              alpha-0.3.3
ipfs-operator                              IPFS Operator                                                     alpha
istio-workspace-operator                   Istio Workspace                                                   alpha
jaeger                                     Community Jaeger Operator                                         stable
k8gb                                       k8gb                                                              alpha
kaoto-operator                             Kaoto Operator                                                    alpha
keda                                       [DEPRECATED] KEDA                                                 alpha
keepalived-operator                        Keepalived Operator                                               alpha
kepler-operator                            Kepler                                                            alpha
keycloak-operator                          Keycloak Operator                                                 fast
kiali                                      Kiali Operator                                                    stable
klusterlet                                 Klusterlet                                                        stable
kogito-operator                            Kogito                                                            1.x
koku-metrics-operator                      Koku Metrics Operator                                             beta
konveyor-operator                          Konveyor Operator                                                 beta
kuadrant-operator                          Kuadrant Operator                                                 stable
kube-green                                 kube-green                                                        alpha
kubecost                                   Kubecost                                                          alpha
kubernetes-imagepuller-operator            Kubernetes Image Puller Operator                                  stable
kubeturbo                                  Kubeturbo Operator                                                stable
l5-operator                                L5 Operator                                                       alpha
lbconfig-operator                          External Load-Balancer Configuration Operator                     beta
lib-bucket-provisioner                     lib-bucket-provisioner                                            alpha
limitador-operator                         Limitador                                                         stable
logging-operator                           Logging Operator                                                  beta
loki-helm-operator                         Loki Helm Operator                                                alpha
loki-operator                              Community Loki Operator                                           alpha
machine-deletion-remediation               Machine Deletion Remediation Operator - Community Edition         stable
mariadb-operator                           MariaDB Operator                                                  alpha
marin3r                                    MARIN3R                                                           stable
mercury-operator                           Mercury Operator                                                  1.0.x
microcks                                   Microcks Operator                                                 stable
mongodb-atlas-kubernetes                   MongoDB Atlas Operator                                            stable
mongodb-operator                           MongoDB Operator                                                  alpha
move2kube-operator                         Konveyor Move2Kube                                                prerelease
multi-nic-cni-operator                     multi-nic-cni-operator                                            stable
multicluster-global-hub-operator           Multicluster Global Hub Operator                                  alpha
multicluster-operators-subscription        Multicluster Subscription Operator                                release-2.5
must-gather-operator                       Must Gather Operator                                              alpha
namespace-configuration-operator           Namespace Configuration Operator                                  alpha
ndmspc-operator                            NdmSpc operator                                                   alpha
netobserv-operator                         NetObserv Operator                                                latest
neuvector-community-operator               NeuVector Operator                                                beta
nexus-operator-m88i                        Nexus Operator                                                    alpha
nfs-provisioner-operator                   NFS Provisioner Operator                                          alpha
nlp-server                                 nlp-server                                                        alpha
node-healthcheck-operator                  Node Health Check Operator - Community Edition                    stable
node-maintenance-operator                  Node Maintenance Operator - Community Edition                     stable
nsm-operator                               nsm-operator                                                      alpha
oadp-operator                              OADP Operator                                                     stable
observability-operator                     Observability Operator                                            stable
oci-ccm-operator                           oci-ccm-operator                                                  alpha
ocm-operator                               OpenShift Cluster Manager Operator                                alpha
odoo-operator                              Odoo Operator                                                     alpha
opendatahub-operator                       Open Data Hub Operator                                            rolling
openebs                                    OpenEBS                                                           alpha
openshift-nfd-operator                     Node Feature Discovery Operator                                   stable
openshift-qiskit-operator                  QiskitPlayground                                                  alpha
opentelemetry-operator                     Community OpenTelemetry Operator                                  alpha
patch-operator                             Patch Operator                                                    alpha
patterns-operator                          Validated Patterns Operator                                       fast
pcc-operator                               Prisma Cloud Compute Operator                                     stable
pelorus-operator                           Pelorus Operator                                                  alpha
percona-xtradb-cluster-operator            Percona XtraDB Cluster Operator                                   stable
portworx-essentials                        Portworx Essentials                                               stable
postgresql                                 Crunchy Postgres for Kubernetes                                   v5
proactive-node-scaling-operator            Proactive Node Scaling Operator                                   alpha
project-quay                               Quay                                                              stable-3.9
prometheus                                 Prometheus Operator                                               beta
prometheus-exporter-operator               Prometheus Exporter Operator                                      alpha
prometurbo                                 Prometurbo Operator                                               stable
pubsubplus-eventbroker-operator            Solace PubSub+ Event Broker Operator                              stable
pulp-operator                              Pulp Project                                                      beta
rabbitmq-cluster-operator                  RabbitMQ-cluster-operator                                         stable
rabbitmq-messaging-topology-operator       rabbitmq-messaging-topology-operator                              stable
rabbitmq-single-active-consumer-operator   rabbitmq-single-active-consumer-operator                          stable
redis-operator                             Redis Operator                                                    stable
reportportal-operator                      reportportal-operator                                             alpha
resource-locker-operator                   Resource Locker Operator                                          alpha
rhoas-operator                             OpenShift Application Services (RHOAS)                            beta
ripsaw                                     benchmark-operator                                                alpha
sailoperator                               Sail Operator                                                     3.0-nightly
sap-commerce-operator                      SAP Commerce Operator                                             alpha
sap-data-intelligence-observer-operator    SAP Data Intelligence 3 - Observer Operator                       stable
sap-hana-express-operator                  SAP Hana Express Operator                                         stable
seldon-operator                            Seldon Operator                                                   stable
self-node-remediation                      Self Node Remediation Operator - Community Edition                stable
service-binding-operator                   Service Binding Operator                                          stable
shipwright-operator                        Shipwright Operator                                               alpha
sigstore-helm-operator                     sigstore                                                          alpha
silicom-sts-operator                       Silicom STS Operator                                              alpha
snapscheduler                              SnapScheduler                                                     stable
snyk-operator                              Snyk Operator                                                     stable
sonar-operator                             EDP Sonar Operator                                                alpha
sonataflow-operator                        SonataFlow Operator                                               alpha
sosivio                                    Sosivio | Predictive Troubleshooting for Kubernetes               stable
sosreport-operator                         sosreport-operator                                                alpha
spark-helm-operator                        Spark Helm Operator                                               alpha
special-resource-operator                  Special Resource Operator                                         alpha
stolostron                                 Stolostron                                                        community-0.2
stolostron-engine                          Stolostron Engine                                                 community-0.2
strimzi-kafka-operator                     Strimzi                                                           stable
syndesis                                   Syndesis Operator                                                 latest
t8c                                        Turbonomic Platform Operator                                      stable
tagger                                     Tagger                                                            alpha
tempo-operator                             Community Tempo Operator                                          alpha
tf-controller                              Weave GitOps Terraform Controller                                 stable
tidb-operator                              TiDB Operator                                                     stable
ucs-ci-solutions-operator                  UCS-CI-Solutions-Operator                                         alpha
universal-crossplane                       Upbound Universal Crossplane (UXP)                                stable
varnish-operator                           Varnish Operator                                                  alpha
vault-config-operator                      Vault Config Operator                                             alpha
verticadb-operator                         VerticaDB Operator                                                stable
victoriametrics-operator                   VictoriaMetrics Operator                                          beta
volume-expander-operator                   Volume Expander Operator                                          alpha
windup-operator                            Windup Operator                                                   alpha
yaks                                       YAKS Operator                                                     alpha
```

# List available Operators in OpenShift v4.14 in the catalog redhat-marketplace-index:v4.14
```bash
# oc-mirror list operators --version=4.14 --catalog=registry.redhat.io/redhat/redhat-marketplace-index:v4.14
Logging to .oc-mirror.log
NAME                                              DISPLAY NAME                                      DEFAULT CHANNEL
abot-operator-rhmp                                ABot                                              alpha
aerospike-kubernetes-operator-rhmp                Aerospike Kubernetes Operator                     stable
aikit-operator-rhmp                               Intel® oneAPI AI Analytics Toolkit Operator       alpha
anzo-operator-rhmp                                Anzo Operator                                     stable
anzograph-operator-rhmp                           AnzoGraph Operator                                stable
anzounstructured-operator-rhmp                    Anzo Unstructured Operator                        stable
citrix-cpx-with-ingress-controller-operator-rhmp  Citrix ADC CPX with Ingress Controller            alpha
citrix-ingress-controller-operator-rhmp           Citrix Ingress Controller                         alpha
cloudbees-ci-rhmp                                 CloudBees CI                                      alpha
cockroachdb-certified-rhmp                        CockroachDB Operator                              stable
crunchy-postgres-operator-rhmp                    Crunchy Postgres for Kubernetes                   v5
datadog-operator-certified-rhmp                   Datadog Operator                                  stable
entando-k8s-operator-rhmp                         Entando Operator                                  stable
falcon-operator-rhmp                              CrowdStrike Falcon Platform - Operator            certified-0.9
flux                                              Flux                                              stable
instana-agent-operator-rhmp                       Instana Agent Operator                            stable
iomesh-operator-rhmp                              IOMesh Operator                                   stable
joget-dx-operator-rhmp                            Joget DX Operator                                 alpha
joget-dx8-operator-rhmp                           Joget DX 8 Operator                               alpha
k8s-triliovault-rhmp                              TrilioVault for Kubernetes                        stable
kubemq-operator-marketplace-rhmp                  Kubemq Enterprise Operator                        alpha
kubeturbo-certified-rhmp                          Kubeturbo Operator                                stable
linstor-operator-rhmp                             Linstor Operator                                  stable
marketplace-games-operator-rhmp                   Arcade Operator                                   alpha
minio-operator-rhmp                               Minio Operator Rhmp                               stable
model-builder-for-vision-certified-rhmp           IBM Model Builder for Vision                      stable
neuvector-certified-operator-rhmp                 NeuVector Operator                                beta
ovms-operator-rhmp                                OpenVINO Toolkit Operator                         alpha
pachyderm-operator-rhmp                           Pachyderm                                         stable
redis-enterprise-operator-cert-rhmp               Redis Enterprise Operator                         production
seldon-deploy-operator-rhmp                       Seldon Deploy Operator                            stable
starburst-enterprise-helm-operator-paygo-rhmp     Starburst Enterprise Pay as you go Helm Operator  alpha
starburst-enterprise-helm-operator-rhmp           Starburst Enterprise Helm Operator                alpha
sysdig-certified-rhmp                             Sysdig Agent Operator                             stable
t8c-certified-rhmp                                Turbonomic Platform Operator                      stable
timemachine-operator-rhmp                         Time Machine Operator                             alpha
vfunction-server-operator-rhmp                    vFunction Operator                                stable
xcrypt-operator-rhmp                              Zettaset XCrypt Operator                          alpha
yugabyte-platform-operator-bundle-rhmp            Yugabyte Platform Operator                        alpha
zabbix-operator-certified-rhmp                    Zabbix Operator                                   lts
```

# List detailed Package-Info about the advanced-cluster-management-Operator in OpenShift v4.14 in the catalog redhat-operator-index:v4.14
```bash
# oc-mirror list operators --version=4.14 --catalog=registry.redhat.io/redhat/redhat-operator-index:v4.14 --package=advanced-cluster-management
Logging to .oc-mirror.log
NAME                         DISPLAY NAME                                DEFAULT CHANNEL
advanced-cluster-management  Advanced Cluster Management for Kubernetes  release-2.8

PACKAGE                      CHANNEL      HEAD
advanced-cluster-management  release-2.8  advanced-cluster-management.v2.8.3

# oc-mirror list operators --version=4.14 --catalog=registry.redhat.io/redhat/redhat-operator-index:v4.14 --package=advanced-cluster-management --channel=release-2.8
Logging to .oc-mirror.log
VERSIONS
2.8.1
2.8.2
2.8.3
2.8.0
```

# List available updates in the upgrade graph for releases and operators from upstream sources based on current state. A storage configuration must be specified to use this command.
```bash
oc-mirror list updates mirror-config.yaml
```

