module github.com/giantswarm/cluster-autoscaler-app

go 1.15

require (
	github.com/giantswarm/apptest v1.1.0
	github.com/giantswarm/backoff v1.0.0
	github.com/giantswarm/microerror v0.4.0
	github.com/giantswarm/micrologger v0.6.0
	k8s.io/apimachinery v0.21.4
	sigs.k8s.io/controller-runtime v0.9.7 // indirect
)

replace github.com/coreos/etcd v3.3.10+incompatible => github.com/coreos/etcd v3.3.25+incompatible
