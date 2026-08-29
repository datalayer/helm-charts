{{- define "dataserver.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "dataserver.labels" -}}
app.kubernetes.io/name: {{ include "dataserver.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "dataserver.selectorLabels" -}}
app: data-server
release: {{ .Release.Name }}
{{- end -}}
