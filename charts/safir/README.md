# safir

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

A helm chart for safir applicaion

**Homepage:** <https://github.com/BRF-Solutions/charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| BRF Solutions GmbH |  | <https://github.com/BRF-Solutions/charts> |

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
| affinity | object | `{}` |  |
| apache.args | list | `[]` |  |
| apache.command | list | `[]` |  |
| apache.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| apache.containerSecurityContext.enabled | bool | `true` |  |
| apache.extraEnvVars | list | `[]` |  |
| apache.extraEnvVarsSecret | string | `""` |  |
| apache.extraVolumeMounts | list | `[]` |  |
| apache.image.digest | string | `""` |  |
| apache.image.pullPolicy | string | `"Always"` |  |
| apache.image.registry | string | `"docker.io"` |  |
| apache.image.repository | string | `"brf-solutions/safir-apache"` |  |
| apache.image.tag | string | `"1.1.63"` |  |
| apache.livenessProbe.enabled | bool | `false` |  |
| apache.readinessProbe.enabled | bool | `false` |  |
| apache.resources.limits.cpu | string | `"100m"` |  |
| apache.resources.limits.memory | string | `"200Mi"` |  |
| apache.resources.requests.cpu | string | `"100m"` |  |
| apache.resources.requests.memory | string | `"100Mi"` |  |
| apache.startupProbe.enabled | bool | `false` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| extraDeploy | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| global.imagePullSecrets[0].name | string | `"github-imagepullsecret"` |  |
| global.imageRegistry | string | `"ghcr.io"` |  |
| ingress.annotations."cert-manager.io/cluster-issuer" | string | `"safirpro-staging"` |  |
| ingress.annotations."ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hostname | string | `"safirtest.safirpro.com"` |  |
| ingress.ingressClassName | string | `"nginx"` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | bool | `true` |  |
| initContainers | list | `[]` |  |
| nameOverride | string | `""` |  |
| namespaceOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.enabled | bool | `false` |  |
| pvc.accessModes | string | `""` |  |
| pvc.storage | string | `"1Gi"` |  |
| pvc.storageClassName | string | `"standard"` |  |
| replicaCount | int | `1` |  |
| safir.domain | string | `"brf-solutions-test.safirpro.com"` |  |
| safir.environment | string | `"prod"` |  |
| safir.jdbcString | string | `"jdbc:postgresql://db-prod-safir.postgres.database.azure.com:5432/brf_solutions_test"` |  |
| secretProviderClass.cloudName | string | `""` |  |
| secretProviderClass.enabled | bool | `true` |  |
| secretProviderClass.keyvaultName | string | `"kv-prod-brfsolutions"` |  |
| secretProviderClass.name | string | `"azure-kv-prod-brf-solutions-safir-secrets"` |  |
| secretProviderClass.objects[0] | string | `"objectName: github-imagepullsecret\nobjectType: secret\nobjectVersion: \"\"\n"` |  |
| secretProviderClass.objects[1] | string | `"objectName: postgresql-brf-solutions-test-username\nobjectType: secret\nobjectVersion: \"\"\n"` |  |
| secretProviderClass.objects[2] | string | `"objectName: postgresql-brf-solutions-test-password\nobjectType: secret\nobjectVersion: \"\"\n"` |  |
| secretProviderClass.secretObjects[0].data[0].key | string | `".dockerconfigjson"` |  |
| secretProviderClass.secretObjects[0].data[0].objectName | string | `"github-imagepullsecret"` |  |
| secretProviderClass.secretObjects[0].secretName | string | `"github-imagepullsecret"` |  |
| secretProviderClass.secretObjects[0].type | string | `"kubernetes.io/dockerconfigjson"` |  |
| secretProviderClass.secretObjects[1].data[0].key | string | `"SAFIR_DB_USER"` |  |
| secretProviderClass.secretObjects[1].data[0].objectName | string | `"postgresql-brf-solutions-test-username"` |  |
| secretProviderClass.secretObjects[1].data[1].key | string | `"SAFIR_DB_PASSWORD"` |  |
| secretProviderClass.secretObjects[1].data[1].objectName | string | `"postgresql-brf-solutions-test-password"` |  |
| secretProviderClass.secretObjects[1].secretName | string | `"safir-deployment-tomcat"` |  |
| secretProviderClass.secretObjects[1].type | string | `"Opaque"` |  |
| secretProviderClass.tenantId | string | `"3a46ee62-6dd0-4d46-a9b1-6fdc5426b6cb"` |  |
| secretProviderClass.usePodIdentity | string | `""` |  |
| secretProviderClass.useVMManagedIdentity | string | `""` |  |
| secretProviderClass.userAssignedIdentityID | string | `""` |  |
| service.annotations | object | `{}` |  |
| serviceAccount.automountServiceAccountToken | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| tomcat.args | list | `[]` |  |
| tomcat.command | list | `[]` |  |
| tomcat.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| tomcat.containerSecurityContext.enabled | bool | `true` |  |
| tomcat.extraEnvVars | list | `[]` |  |
| tomcat.extraEnvVarsSecret | string | `"safir-deployment-tomcat"` |  |
| tomcat.extraVolumeMounts | list | `[]` |  |
| tomcat.image.digest | string | `""` |  |
| tomcat.image.pullPolicy | string | `"Always"` |  |
| tomcat.image.registry | string | `""` |  |
| tomcat.image.repository | string | `"brf-solutions/safir"` |  |
| tomcat.image.tag | string | `"1.1.63"` |  |
| tomcat.livenessProbe.enabled | bool | `false` |  |
| tomcat.readinessProbe.enabled | bool | `false` |  |
| tomcat.resources.limits.cpu | string | `"1"` |  |
| tomcat.resources.limits.memory | string | `"2Gi"` |  |
| tomcat.resources.requests.cpu | string | `"100m"` |  |
| tomcat.resources.requests.memory | string | `"100Mi"` |  |
| tomcat.startupProbe.enabled | bool | `false` |  |
| topologySpreadConstraints | list | `[]` |  |
| updateStrategy.type | string | `"Recreate"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
