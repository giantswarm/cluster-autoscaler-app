{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "cluster-autoscaler-app-bundle.name" -}}
{{- default .Chart.Name .Values.bundleNameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Name of the HelmRelease for the cluster-autoscaler-app.
*/}}
{{- define "cluster-autoscaler-app-bundle.helmReleaseName" -}}
{{ .Values.clusterID }}-cluster-autoscaler-app
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "cluster-autoscaler-app-bundle.fullname" -}}
{{- if .Values.fullBundleNameOverride -}}
{{- .Values.fullBundleNameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.bundleNameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cluster-autoscaler-app-bundle.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "cluster-autoscaler-app-bundle.labels" -}}
app.kubernetes.io/name: {{ include "cluster-autoscaler-app-bundle.name" . }}
helm.sh/chart: {{ include "cluster-autoscaler-app-bundle.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
giantswarm.io/service-type: "managed"
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
giantswarm.io/cluster: {{ .Values.clusterID | quote }}
{{- end -}}

{{/*
Get trust policy statements for all provided OIDC domains
*/}}
{{- define "cluster-autoscaler-app-bundle.trustPolicyStatements" -}}
{{- $configmap := (lookup "v1" "ConfigMap" .Release.Namespace (printf "%s-crossplane-config" .Values.clusterID)) -}}
{{- $cmvalues := dict -}}
{{- if and $configmap $configmap.data $configmap.data.values -}}
  {{- $cmvalues = fromYaml $configmap.data.values -}}
{{- end -}}
{{- range $index, $oidcDomain := $cmvalues.oidcDomains -}}
{{- if not (eq $index 0) }}, {{ end }}{
  "Effect": "Allow",
  "Principal": {
    "Federated": "arn:{{ $cmvalues.awsPartition }}:iam::{{ $cmvalues.accountID }}:oidc-provider/{{ $oidcDomain }}"
  },
  "Action": "sts:AssumeRoleWithWebIdentity",
  "Condition": {
    "StringEquals": {
      "{{ $oidcDomain }}:sub": "system:serviceaccount:kube-system:{{ include "cluster-autoscaler-app-bundle.helmReleaseName" $ }}"
    }
  }
}
{{- end -}}
{{- end -}}
