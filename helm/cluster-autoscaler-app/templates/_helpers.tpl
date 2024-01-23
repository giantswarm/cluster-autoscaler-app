{{/*
Expand the name of the chart.
*/}}
{{- define "cluster-autoscaler.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "cluster-autoscaler.fullname" -}}
{{- .Release.Name | trimSuffix "-app" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cluster-autoscaler.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cluster-autoscaler.labels" -}}
app.kubernetes.io/name: {{ include "cluster-autoscaler.name" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ include "cluster-autoscaler.chart" . }}
giantswarm.io/service-type: "managed"
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
{{ include "cluster-autoscaler.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cluster-autoscaler.selectorLabels" -}}
app: {{ include "cluster-autoscaler.fullname" . }}
{{- end }}

{{/*
Support cloud provider aliases.
*/}}
{{- define "cloud-provider" -}}
{{- if eq .Values.provider "gcp" -}}
gce
{{- else -}}
{{ .Values.provider }}
{{- end -}}
{{- end -}}
