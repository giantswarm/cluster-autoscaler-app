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
{{- if .Values.clusterAPI.enabled -}}
clusterapi
{{- else if eq .Values.provider "gcp" -}}
gce
{{- else if eq .Values.provider "capa" -}}
aws
{{- else -}}
{{ .Values.provider }}
{{- end -}}
{{- end -}}

{{/*
Returns the cluster name. For management clusters, it uses the managementCluster value. For workload clusters, it uses the clusterID value.
*/}}
{{- define "cluster-name" -}}
{{- if .Values.isManagementCluster -}}
{{- required ".Values.managementCluster is required when .Values.isManagementCluster is true" .Values.managementCluster -}}
{{- else -}}
{{- required ".Values.clusterID is required when .Values.isManagementCluster is false" .Values.clusterID -}}
{{- end -}}
{{- end -}}

{{/*
Build CAPI autodiscovery configuration string.
Combines clusterName, namespace, and labels into comma-separated key=value pairs.
*/}}
{{- define "cluster-autoscaler.capiAutodiscoveryConfig" -}}
{{- $parts := list -}}
{{- $parts = append $parts (printf "clusterName=%s" (include "cluster-name" .)) -}}
{{- $parts = append $parts (printf "namespace=%s" (.Values.clusterAPI.autoDiscovery.namespace | default .Release.Namespace)) -}}
{{- range .Values.clusterAPI.autoDiscovery.labels -}}
{{- $parts = append $parts (printf "%s=%s" .key .value) -}}
{{- end -}}
{{- join "," $parts -}}
{{- end -}}
