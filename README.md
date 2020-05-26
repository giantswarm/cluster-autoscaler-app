[![CircleCI](https://circleci.com/gh/giantswarm/cluster-autoscaler-app.svg?style=shield)](https://circleci.com/gh/giantswarm/cluster-autoscaler-app)

# cluster-autoscaler-app

Helm chart for the Kubernetes [Cluster Autoscaler](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler) running in Giant Swarm tenant clusters.

## Deployment

* Managed by [app-operator].
* Production releases are stored in the [default-catalog].
* WIP releases are stored in the [default-test-catalog].

## Installing the Chart

To install the chart locally:

```nohighlight
git clone https://github.com/giantswarm/cluster-autoscaler-app.git
cd cluster-autoscaler-app
helm install helm/cluster-autoscaler-app
```

Provide a custom `values.yaml`:

```nohighlight
helm install cluster-autoscaler-app -f values.yaml
```

## Release Process

* Ensure CHANGELOG.md is up to date.
* Create a new GitHub release with the version e.g. `v1.16.1` and link the
changelog entry.
  * Make sure the Major and Minor versions match with the upstream version.
* This will push a new git tag and trigger a new tarball to be pushed to the
[default-catalog].
* Update [cluster-operator] with the new version.

[app-operator]: https://github.com/giantswarm/app-operator
[cluster-operator]: https://github.com/giantswarm/cluster-operator
[default-catalog]: https://github.com/giantswarm/default-catalog
[default-test-catalog]: https://github.com/giantswarm/default-test-catalog
