{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- .Chart.Name | trimSuffix "-app" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "labels.common" -}}
{{ include "labels.selector" . }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/name: {{ include "name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
giantswarm.io/service-type: "managed"
helm.sh/chart: {{ include "chart" . | quote }}
k8s-addon: cluster-autoscaler.addons.k8s.io
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "labels.selector" -}}
app: {{ include "name" . | quote }}
{{- end -}}

{{/*
Support cloud provider aliases
*/}}
{{- define "cloud-provider" -}}
{{- if eq .Values.provider "gcp" -}}
gce
{{- else if eq .Values.provider "capa" -}}
aws
{{- else -}}
{{ .Values.provider }}
{{- end -}}
{{- end -}}
