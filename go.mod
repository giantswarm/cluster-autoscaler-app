module github.com/giantswarm/cluster-autoscaler-app

go 1.15

require (
	github.com/giantswarm/apptest v0.10.3
	github.com/giantswarm/backoff v0.2.0
	github.com/giantswarm/microerror v0.3.0
	github.com/giantswarm/micrologger v0.5.0
	github.com/imdario/mergo v0.3.11 // indirect
	github.com/stretchr/testify v1.6.1 // indirect
	google.golang.org/protobuf v1.24.0 // indirect
	gopkg.in/yaml.v3 v3.0.0-20200615113413-eeeca48fe776 // indirect
	k8s.io/apimachinery v0.18.18
	k8s.io/client-go v0.18.18 // indirect
	k8s.io/klog/v2 v2.2.0 // indirect
)

replace (
	github.com/coreos/etcd v3.3.10+incompatible => github.com/coreos/etcd v3.3.25+incompatible
	// v0.1.0 forced by k8s.io/client-go v0.18.18
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.1.0
	k8s.io/client-go => k8s.io/client-go v0.18.18
)
