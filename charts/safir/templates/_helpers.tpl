{/*
Return the proper tomcat image name
*/}}
{{- define "safir.tomcat.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.tomcat.image "global" .Values.global) }}
{{- end -}}

{{/*
 Create the name of the service account to use
 */}}
{{- define "safir.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "common.names.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
 Create the name of the SecretProviderClass to use
 */}}
{{- define "safir.secretProviderClassName" -}}
    {{ default (include "common.names.fullname" .) .Values.secretProviderClass.name }}
{{- end -}}
