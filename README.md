[![CircleCI](https://circleci.com/gh/giantswarm/cluster-autoscaler-app.svg?style=shield)](https://circleci.com/gh/giantswarm/cluster-autoscaler-app)

# cluster-autoscaler-app

Helm chart for Kubernetes Cluster Autoscaler running in Tenant Clusters

* Installs the [kubernetes-cluster-autoscaler].

## Deployment

* Managed by [app-operator].
* Production releases are stored in the [default-catalog].
* WIP releases are stored in the [default-test-catalog].

## Installing the Chart

To install the chart locally:

```bash
$ git clone https://github.com/giantswarm/cluster-autoscaler-app.git
$ cd cluster-autoscaler-app
$ helm install helm/cluster-autoscaler-app
```

Provide a custom `values.yaml`:

```bash
$ helm install cluster-autoscaler-app -f values.yaml
```

 ## Release Process

* Ensure CHANGELOG.md is up to date.
* Create a new GitHub release with the version e.g. `v0.1.0` and link the
changelog entry.
* This will push a new git tag and trigger a new tarball to be pushed to the
[default-catalog].  
* Update [cluster-operator] with the new version.

[app-operator]: https://github.com/giantswarm/app-operator
[cluster-operator]: https://github.com/giantswarm/cluster-operator
[default-catalog]: https://github.com/giantswarm/default-catalog
[default-test-catalog]: https://github.com/giantswarm/default-test-catalog
[kubernetes-cluster-autoscaler]: https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler#cluster-autoscaler