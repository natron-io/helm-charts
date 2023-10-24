{/*
Return the proper tomcat image name
*/}}
{{- define "shop.tomcat.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.tomcat.image "global" .Values.global) }}
{{- end -}}

{{/*
 Create the name of the service account to use
 */}}
{{- define "shop.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "common.names.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
 Create the name of the SecretProviderClass to use
 */}}
{{- define "shop.secretProviderClassName" -}}
    {{ default (include "common.names.fullname" .) .Values.secretProviderClass.name }}
{{- end -}}
