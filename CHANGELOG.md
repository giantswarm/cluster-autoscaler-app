# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project's packages adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [v1.1.4] 2020-01-23

### Changed

- Updated cluster-autoscaler to upstream version [1.16.3](https://github.com/kubernetes/autoscaler/releases/tag/cluster-autoscaler-1.16.3)

## [v1.1.3] 2020-01-22

### Changed

- Add CSINode access to RBAC role.

## [v1.1.2] 2020-01-03

### Changed

- Updated manifests for Kubernetes 1.16.

## [1.1.1] 2019-12-24

### Changed

- Remove CPU limits.

## [v1.1.0]

### Changed

- Updated cluster-autoscaler to upstream version [1.16.2](https://github.com/kubernetes/autoscaler/releases/tag/cluster-autoscaler-1.16.2).

### Added

- Added support for Azure with auto-discovery.

## [v1.0.0]

### Changed

- Migrated to be deployed via an app CR not a chartconfig CR.

## [v0.9.0]

### Changed

- Updated cluster-autoscaler to upstream version [1.15.2](https://github.com/kubernetes/autoscaler/releases/tag/cluster-autoscaler-1.15.2).

## [v0.8.0] 

### Changed

- Change priority class to `giantswarm-critical`.


## [v0.7.0]

### Changed

- Updated cluster-autoscaler to version 1.14.3.


## [v0.6.0]

### Added

- Separate network policy for cluster-autoscaler.


## [v0.5.0]

### Added

- Separate pod security policy for cluster-autoscaler.
- Security context with non-root user (`giantswarm`) for running cluster-autoscaler inside container.


## [v0.4.1]

### Changed

- Extend configuration options to allow users to tune the Cluster Autoscaler in deep.

[v1.1.2]: https://github.com/giantswarm/cluster-autoscaler-app/pull/13
[v1.1.1]: https://github.com/giantswarm/cluster-autoscaler-app/pull/11
[v1.0.0]: https://github.com/giantswarm/cluster-autoscaler-app/pull/6
[v0.9.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/27
[v0.8.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/26 
[v0.7.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/24
[v0.6.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/23
[v0.5.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/22
[v0.4.1]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/21
