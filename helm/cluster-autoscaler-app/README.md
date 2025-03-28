# cluster-autoscaler-app

![Version: 1.30.4-gs1](https://img.shields.io/badge/Version-1.30.4--gs1-informational?style=flat-square) ![AppVersion: 1.30.4](https://img.shields.io/badge/AppVersion-1.30.4-informational?style=flat-square)

A Helm chart for the Cluster Autoscaler.

**Homepage:** <https://github.com/giantswarm/cluster-autoscaler-app>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| autoscaling.minAllowed | object | `{"cpu":"50m","memory":"100Mi"}` | Lower bounds for vertical autoscaling. |
| azure.managedIdentity | bool | `true` | If the VMSS instances' managed identity should be used or not. |
| azure.subscriptionID | string | `""` | ID of the subscription the VMSSs are contained in. |
| azure.vmType | string | `"VMSS"` | Azure VM type. |
| cluster.proxy | object | `{"http":"","https":"","noProxy":""}` | Global proxy settings. This value is set automatically. Do not overwrite it. |
| clusterID | string | `"sc4l3"` | Cluster ID. This value is set automatically. Do not overwrite it. |
| configmap.balanceSimilarNodeGroups | string | `"true"` | Detect similar node groups and balance the number of nodes between them. |
| configmap.balancingIgnoreLabels | list | `["ip","vpc.amazonaws.com/eniConfig","giantswarm.io/machine-deployment"]` | Specifies a label to ignore in addition to the basic and cloud-provider set of labels when comparing if two node groups are similar. |
| configmap.expander | string | `"least-waste"` | Type of node group expander to be used in scale up. Available values:  - random: Selects a node group at random. - most-pods: Selects a node group that fits the most pods. - least-waste: Selects a node group that leaves the least fraction of CPU and Memory. - price: Selects a node group that is the most cost-effective and consistent with the preferred node size for the cluster. - priority: Selects a node group based on a user-configured priorities assigned to group names. - grpc: Uses the gRPC client expander to call to an external gRPC server to select a node group for scale up.  Specifying multiple values separated by commas will call the expanders in succession until there is only one option remaining. Ties still existing after this process are broken randomly. |
| configmap.newPodScaleUpDelay | string | `"0s"` | Pods less than this old will not be considered for scale-up. Can be increased for individual pods through annotation 'cluster-autoscaler.kubernetes.io/pod-scale-up-delay'. |
| configmap.nodeStartupTaints | list | `["node.cluster.x-k8s.io/uninitialized"]` | Taints that are added to new nodes during node initialization. Cluster Autoscaler treats nodes tainted with startup taints as unready, but taken into account during scale up logic, assuming they will become ready shortly. See: https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler/FAQ.md#how-does-cluster-autoscaler-treat-nodes-with-statusstartupignore-taints |
| configmap.scaleDownUnneededTime | string | `"5m0s"` | How long a node should be unneeded before it is eligible for scale down. |
| configmap.scaleDownUtilizationThreshold | float | `0.7` | The maximum value between the sum of cpu requests and sum of memory requests of all pods running on the node divided by node's corresponding allocatable resource, below which a node can be considered for scale down. Keep https://github.com/giantswarm/docs/blob/main/src/layouts/shortcodes/autoscaler_utilization_threshold.html updated. |
| configmap.scanInterval | string | `"30s"` | How often cluster is reevaluated for scale up or down. |
| configmap.skipNodesWithLocalStorage | string | `"false"` | If true cluster autoscaler will never delete nodes with pods with local storage, e.g. EmptyDir or HostPath. |
| configmap.skipNodesWithSystemPods | string | `"true"` | If true cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). |
| global.podSecurityStandards.enforced | bool | `true` | If Pod Security Standards are being used or not. This value is set automatically. Do not overwrite it. |
| image.name | string | `"giantswarm/cluster-autoscaler"` | Image name. |
| image.registry | string | `"gsoci.azurecr.io"` | Registry host to pull images from. This value is set automatically. Do not overwrite it. |
| image.tag | string | `"v1.30.4"` | Image tag. |
| isManagementCluster | bool | `false` | If the chart is installed on a management cluster or not. This value is set automatically. Do not overwrite it. |
| managementCluster | string | `"sc4l3"` | Name of the management cluster this chart is installed on. This value is set automatically. Do not overwrite it. |
| node.caBundlePath | string | `"/etc/ssl/certs/ca-certificates.crt"` | Host path of the CA bundle. |
| node.nodeSelector | object | `{"node-role.kubernetes.io/control-plane":""}` | Node selector for the autoscaler pod. `control-plane` gets translated to `master` and vice versa depending on Kubernetes version. |
| podMonitor.additionalLabels | object | `{}` | Add extra labels to the PodMonitor resource |
| provider | string | `"aws"` | Provider the cluster is running on. This value is set automatically. Do not overwrite it. |
| proxy | object | `{"http":"","https":"","noProxy":""}` | Local proxy settings. Overrides global proxy settings. This value is set automatically. Do not overwrite it. |
| registry.domain | string | `"gsoci.azurecr.io"` | Registry host to pull images from. This value is set automatically. Do not overwrite it. |
| resources | object | `{"limits":{"memory":"400Mi"},"requests":{"cpu":"50m","memory":"100Mi"}}` | Container resource requests and limits. |
| securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}` | Container security context. |
| serviceAccount.annotations | object | `{}` | Annotations of the service account. |
