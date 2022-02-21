module github.com/giantswarm/cluster-autoscaler-app

go 1.15

require (
	github.com/giantswarm/apptest v1.0.0
	github.com/giantswarm/backoff v0.2.0
	github.com/giantswarm/microerror v0.4.0
	github.com/giantswarm/micrologger v0.5.0
	k8s.io/apimachinery v0.21.4
)

replace github.com/coreos/etcd v3.3.10+incompatible => github.com/coreos/etcd v3.3.25+incompatible
