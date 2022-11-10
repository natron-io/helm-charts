# Sinpex App Backend

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square)

Sinpex App Backend Helm Chart

**Homepage:** <https://github.com/natrongmbh/helm-charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Sinpex GmbH |  | <https://sinpex.ch> |
| Natron Tech GmbH |  | <https://natron.io> |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 2.x.x |

# Major Changes

Major Changes to functions are documented with the version affected. **Before upgrading the dependency version, check this section out!**

| **Change** | **Chart Version** | **Description** | **Commits/PRs** |
| :----------- | :---------------- | :--------------------- | :-------------- |
|||||

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| api.affinity | object | `{}` | Affinity for pod assignment |
| api.args | list | `[]` | Override default container args for Api container |
| api.command | list | `[]` | Override default container command for Api container |
| api.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"enabled":true}` | Api containers' Security Context |
| api.extraEnvVars | list | `[]` | Extra environment variables to be set on Api container |
| api.extraEnvVarsSecret | string | `""` | Secret with extra environment variables for Api contianer |
| api.extraVolumeMounts | list | `[]` | Array to add extra mount for the Api container |
| api.extraVolumes | list | `[]` | Array to add extra volumes |
| api.image.digest | string | `""` | image digest in the way sha256:aa... for Api container (will override the tag) |
| api.image.pullPolicy | string | `"IfNotPresent"` | Sinpex App-Backend API image pull policy |
| api.image.pullSecrets | list | `[]` | Sinpex App-Backend API image pull secret |
| api.image.registry | string | `"registry.gitlab.com"` | Image registry for Api container |
| api.image.repository | string | `"sinpex-cloud/clients/arcplace/app-backend"` | Sinpex App-Backend API image repository |
| api.image.tag | string | `"v0.1.33"` | Sinpex App-Backend API image tag |
| api.initContainers | list | `[]` | Extra init containers |
| api.livenessProbe | object | `{"enabled":false}` | LivenessProbe for Api container |
| api.nodeSelector | object | `{}` | Node labels for pod assignment |
| api.podAnnotations | object | `{}` | Annotations for Sinpex App-Backend API pods |
| api.podLabels | object | `{}` | Additional labels for Sinpex App-Backend API pods |
| api.podSecurityContext | object | `{"enabled":false}` | Sinpex App-Backend API pods' Security Context |
| api.readinessProbe | object | `{"enabled":false}` | ReadinessProbe for Api container |
| api.replicaCount | int | `1` | Number of Sinpex App-Backend API replicas to deploy |
| api.resources | object | `{}` | Api containers' resource requests and limits |
| api.service.annotations | object | `{}` | set the annotations for the api service |
| api.service.labels | object | `{}` | set the labels for the api service |
| api.service.port | int | `80` | set the port for the api service |
| api.service.type | string | `"ClusterIP"` | set the type for the api service |
| api.startupProbe | object | `{"enabled":false}` | StartupProbe for Api container |
| api.tolerations | list | `[]` | Tolerations for pod assignment |
| api.topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pod assignment |
| api.updateStrategy.type | string | `"Recreate"` | Deployment strategy type |
| commonAnnotations | object | `{}` | Add annotations to all the deployed resources |
| commonLabels | object | `{}` | Add labels to all the deployed resources |
| extraDeploy | list | `[]` | Extra objects to deploy (value evaluated as a template) |
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
| nameOverride | string | `""` | String to partially override .fullname template (will maintain the release name) |
| namespaceOverride | string | `""` | String to fully override common.names.namespace |
| postgresql.enabled | bool | `false` |  |
| service.api.annotations | object | `{}` | set the annotations for the Api service |
| service.api.labels | object | `{}` | set the labels for the Api service |
| service.api.port | int | `80` | set the port for the Api service |
| service.api.type | string | `"ClusterIP"` | set the type for the Api service |
| service.ws.annotations | object | `{}` | set the annotations for the Websocket service |
| service.ws.labels | object | `{}` | set the labels for the Websocket service |
| service.ws.port | int | `6001` | set the port for the Websocket service |
| service.ws.type | string | `"ClusterIP"` | set the type for the Websocket service |
| serviceAccount.automountServiceAccountToken | bool | `false` | Auto-mount the service account token in the pod |
| serviceAccount.create | bool | `true` | Enable creation of ServiceAccount for sinpex-app-backend pod |
| serviceAccount.name | string | If not set, name is generated using the `common.names.fullname` template | The name of the ServiceAccount to use |
| timezone | string | `"Europe/Zurich"` | timezone to set as environment variable 'TZ' in each pod |
| worker.affinity | object | `{}` | Affinity for pod assignment |
| worker.args | list | `[]` | Override default container args for Worker container |
| worker.command | list | `[]` | Override default container command for Worker container |
| worker.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"enabled":true}` | Worker containers' Security Context |
| worker.extraEnvVars | list | `[]` | Extra environment variables to be set on Worker container |
| worker.extraEnvVarsSecret | string | `""` | Secret with extra environment variables for Worker contianer |
| worker.extraVolumeMounts | list | `[]` | Array to add extra mount for the Worker container |
| worker.extraVolumes | list | `[]` | Array to add extra volumes |
| worker.image.digest | string | `""` | image digest in the way sha256:aa... for Worker container (will override the tag) |
| worker.image.pullPolicy | string | `"IfNotPresent"` | Sinpex App-Backend Worker image pull policy |
| worker.image.pullSecrets | list | `[]` | Sinpex App-Backend Worker image pull secret |
| worker.image.registry | string | `"registry.gitlab.com"` | Image registry for Worker container |
| worker.image.repository | string | `"sinpex-cloud/clients/arcplace/app-backend"` | Sinpex App-Backend Worker image repository |
| worker.image.tag | string | `"v0.1.33"` | Sinpex App-Backend Worker image tag |
| worker.initContainers | list | `[]` | Extra init containers |
| worker.livenessProbe | object | `{"enabled":false}` | LivenessProbe for Worker container |
| worker.nodeSelector | object | `{}` | Node labels for pod assignment |
| worker.podAnnotations | object | `{}` | Annotations for Sinpex App-Backend Worker pods |
| worker.podLabels | object | `{}` | Additional labels for Sinpex App-Backend Worker pods |
| worker.podSecurityContext | object | `{"enabled":false}` | Sinpex App-Backend Worker pods' Security Context |
| worker.readinessProbe | object | `{"enabled":false}` | ReadinessProbe for Worker container |
| worker.replicaCount | int | `1` | Number of Sinpex App-Backend Worker replicas to deploy |
| worker.resources | object | `{}` | Worker containers' resource requests and limits |
| worker.service.annotations | object | `{}` | set the annotations for the Worker service |
| worker.service.labels | object | `{}` | set the labels for the Worker service |
| worker.service.port | int | `80` | set the port for the Worker service |
| worker.service.type | string | `"ClusterIP"` | set the type for the Worker service |
| worker.startupProbe | object | `{"enabled":false}` | StartupProbe for Worker container |
| worker.tolerations | list | `[]` | Tolerations for pod assignment |
| worker.topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pod assignment |
| worker.updateStrategy.type | string | `"Recreate"` | Deployment strategy type |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
