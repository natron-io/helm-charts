{{/*
Return the proper api image name
*/}}
{{- define "sinpex-app-backend.api.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.api.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper worker image name
*/}}
{{- define "sinpex-app-backend.worker.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.worker.image "global" .Values.global) }}
{{- end -}}

{{/*
Create the name of the service account to use
 */}}
{{- define "sinpex-app-backend.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "common.names.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}
