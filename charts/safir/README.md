# safir

![Version: 0.0.3](https://img.shields.io/badge/Version-0.0.3-informational?style=flat-square)

A helm chart for safir erp applicaion

**Homepage:** <https://github.com/natrongmbh/helm-charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Natron Tech GmbH |  | <https://natron.io> |
| BRF Solutions GmbH |  | <https://brf-solutions.ch> |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 2.x.x |
| https://charts.bitnami.com/bitnami | postgresql | 11.x.x |

# Major Changes

Major Changes to functions are documented with the version affected. **Before upgrading the dependency version, check this section out!**

| **Change** | **Chart Version** | **Description** | **Commits/PRs** |
| :----------- | :---------------- | :--------------------- | :-------------- |
|||||

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| apache.args | list | `[]` | Override default container args for apache container |
| apache.command | list | `[]` | Override default container command for apache container |
| apache.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"enabled":true}` | Apache containers' Security Context |
| apache.extraEnvVars | list | `[]` | Extra environment variables to be set on apache container |
| apache.extraEnvVarsSecret | string | `""` | Secret with extra environment variables for apache contianer |
| apache.extraVolumeMounts | list | `[]` | Array to add extra mount for the apache container |
| apache.image.digest | string | `""` | image digest in the way sha256:aa... for apache container (will override the tag) |
| apache.image.pullPolicy | string | `"Always"` | image pull policy for apache container |
| apache.image.registry | string | `"docker.io"` | image registry for apache container |
| apache.image.repository | string | `"httpd"` | image repository for apache container |
| apache.image.tag | string | `"latest"` | image tag for apache container |
| apache.livenessProbe | object | `{"enabled":false}` | LivenessProbe for apache container |
| apache.readinessProbe | object | `{"enabled":false}` | ReadinessProbe for apache container |
| apache.resources | object | `{}` | Apache containers' resource requests and limits |
| apache.startupProbe | object | `{"enabled":false}` | StartupProbe for apache container |
| commonAnnotations | object | `{}` | Add annotations to all the deployed resources |
| commonLabels | object | `{}` | Add labels to all the deployed resources |
| extraDeploy | list | `[]` | Extra objects to deploy (value evaluated as a template) |
| extraVolumes | list | `[]` | Array to add extra volumes |
| fullnameOverride | string | `""` | String to fully override .fullname template |
| global.imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| global.imageRegistry | string | `""` | Global Docker image registry, override the image parameters ref: https://github.com/bitnami/charts/tree/master/bitnami/common#images |
| ingress.annotations | object | `{"ingress.kubernetes.io/force-ssl-redirect":"true"}` | Additional annotations for the Ingress resource |
| ingress.enabled | bool | `false` | Enable ingress creation |
| ingress.hostname | string | `"example.com"` | Default host for the ingress resource |
| ingress.ingressClassName | string | `"nginx"` |  |
| ingress.path | string | `"/"` | Ingress path |
| ingress.pathType | string | `"ImplementationSpecific"` | Ingress path type |
| ingress.tls | bool | `true` | Create TLS Secret, named "domain-tls" |
| initContainers | list | `[]` | Extra init containers |
| nameOverride | string | `""` | String to partially override .fullname template (will maintain the release name) |
| namespaceOverride | string | `""` | String to fully override common.names.namespace |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podAnnotations | object | `{}` | Annotations for Safir pods |
| podLabels | object | `{}` | Additional labels for Safir pods |
| podSecurityContext | object | `{"enabled":false}` | Safir pods' Security Context |
| postgresql.enabled | bool | `false` |  |
| pvc.accessModes | string | If not set, `ReadWriteOnce` is used | Define AccessMode of pvc |
| pvc.reclaimPolicy | string | `"Retain"` | Define ReclaimPolicy of pvc |
| pvc.storage | string | `"1Gi"` | Define storage size for pvc |
| pvc.storageClassName | string | `""` | Define StorageClass to use |
| replicaCount | int | `1` | Number of Safir replicas to deploy |
| safir.domain | string | `"example.com"` | Safir Domain |
| safir.environment | string | `"test"` | Safir Environment  |
| safir.jdbcString | string | `"jdbc:postgresql://postgres:5432/dbname"` | Safir JDBC string |
| secretProviderClass.cloudName | string | If not set, `AzurePublicCloud` is used | Name of the secretProviderClass resource |
| secretProviderClass.enabled | bool | `true` | Enable secretProviderClass creation |
| secretProviderClass.keyvaultName | string | `""` | Name of the keyvault |
| secretProviderClass.name | string | If not set, name is generated using the `common.names.fullname` template | Name of the secretProviderClass resource |
| secretProviderClass.objects | list | `[]` | Array of objects |
| secretProviderClass.secretObjects | list | `[]` | Optional Array of secretObjects to generate |
| secretProviderClass.tenantId | string | `""` | Name of the tenant |
| secretProviderClass.usePodIdentity | string | `false` | Name of the secretProviderClass resource |
| secretProviderClass.useVMManagedIdentity | string | `true` for using managed identity | Name of the secretProviderClass resource |
| secretProviderClass.userAssignedIdentityID | string | "If empty, then defaults to use the system assigned identity on the VM" | Name of the secretProviderClass resource |
| service.annotations | object | `{}` | Service annotations |
| serviceAccount.automountServiceAccountToken | bool | `false` | Auto-mount the service account token in the pod |
| serviceAccount.create | bool | `true` | Enable creation of ServiceAccount for safir pod |
| serviceAccount.name | string | If not set, name is generated using the `common.names.fullname` template | The name of the ServiceAccount to use |
| timezone | string | `"Europe/Zurich"` | timezone to set as environment variable 'TZ' in each pod |
| tolerations | list | `[]` | Tolerations for pod assignment |
| tomcat.args | list | `[]` | Override default container args for tomcat container |
| tomcat.command | list | `[]` | Override default container command for tomcat container |
| tomcat.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"enabled":true}` | Tomcat containers' Security Context |
| tomcat.extraEnvVars | list | `[]` | Extra environment variables to be set on tomcat container |
| tomcat.extraEnvVarsSecret | string | `""` | Secret with extra environment variables for tomcat contianer |
| tomcat.extraVolumeMounts | list | `[]` | Array to add extra mount for the tomcat container |
| tomcat.image.digest | string | `""` | image digest in the way sha256:aa... for tomcat container (will override the tag) |
| tomcat.image.pullPolicy | string | `"Always"` | image pull policy for tomcat container |
| tomcat.image.registry | string | `"docker.io"` | image registry for tomcat container |
| tomcat.image.repository | string | `"tomcat"` | image repository for tomcat container |
| tomcat.image.tag | string | `"latest"` | image tag for tomcat container |
| tomcat.livenessProbe | object | `{"enabled":false}` | LivenessProbe for tomcat container |
| tomcat.readinessProbe | object | `{"enabled":false}` | ReadinessProbe for tomcat container |
| tomcat.resources | object | `{}` | Tomcat containers' resource requests and limits |
| tomcat.startupProbe | object | `{"enabled":false}` | StartupProbe for tomcat container |
| topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pod assignment |
| updateStrategy.type | string | `"Recreate"` | Deployment strategy type |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
