# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project's packages adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).


## [Unreleased]

## [1.20.3] - 2021-05-27

- Allow users to set container resources

## [1.19.3] - 2021-05-20

### Added

- Allow users to set container resources

## [1.20.2] - 2021-03-26

### Changed

- Set docker.io as the default registry

## [1.20.1] - 2020-12-17

### Changed

- Update cluster-autoscaler to version `1.20.0`.

## [1.20.0] - 2020-12-17


### Added

- Push app to the control plane app catalog.
- Push app to the aws/azure app-collections.

### Changed

- Update templates to run app in Control-Plane cluster.

### Fixed

- Remove priority class used in integration tests that is no longer required.

## [1.19.1] - 2020-11-03

### Changed

- Updated cluster-autoscaler to version `1.19.1`.

## [1.18.2] - 2020-10-19

### Changed

- Updated cluster-autoscaler to version `1.18.2`.

## [1.17.4] - 2020-09-14

### Added
- Added monitoring annotations and common labels.

### Changed
- The `ARM_SUBSCRIPTION_ID` env variable is not set when the customer is not giving it a value. The `cluster-autoscaler` detects the value from the VM it is running on.

## [1.17.3] - 2020-07-30

### Updated

- Updated cluster-autoscaler to version `1.17.3`.

## [1.17.2] - 2020-07-22

### Added
- Added worflows for a automatic release generation.

### Updated
- Updated cluster-autoscaler to version `1.17.2`.

## [v1.16.0](https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.1.4...v1.16.0) 2020-05-26

Note that with this release we start to align the versioning scheme to the upstream project, so our v1.16.x represents upstream v1.16.x.

### Changed

- Use cluster-autoscaler version v1.16.5.
  - This version introduces a new method to read AWS EC2 instance type details from an AWS API. Since this API is not reachable from the AWS China regions, the autoscaler is started with the `--aws-use-static-instance-list=true` flag.
- Set `scan-interval` to 30 seconds (from 10 seconds) to save resources.
- Set `scale-down-unneeded-time` to 5 minutes (from the default of 10 minutes) to release unneeded nodes earlier.
- Lower `scaleDownUtilizationThreshold` to 0.5.

## [v1.1.4] 2020-02-05

### Changed

- Increase memory request and limits to 400MB.

## [v1.1.3] 2020-01-22

### Changed

- Add CSINode access to RBAC role.

## [v1.1.2] 2020-01-03

### Changed

- Updated manifests for Kubernetes 1.16.

## [v1.1.1] 2019-12-24

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

[Unreleased]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.20.3...HEAD
[1.20.3]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.19.3...v1.20.3
[1.19.3]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.20.2...v1.19.3
[1.20.2]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.20.1...v1.20.2
[1.20.1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.20.0...v1.20.1
[1.20.0]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.19.1...v1.20.0
[1.19.1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.18.2...v1.19.1
[1.18.2]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.17.4...v1.18.2
[1.17.4]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.17.3...v1.17.4
[1.17.3]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.17.2...v1.17.3
[1.17.2]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.1.5...v1.17.2
[v1.1.5]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.1.4...v1.1.5
[v1.1.4]: https://github.com/giantswarm/cluster-autoscaler-app/pull/17
[v1.1.3]: https://github.com/giantswarm/cluster-autoscaler-app/pull/14
[v1.1.2]: https://github.com/giantswarm/cluster-autoscaler-app/pull/13
[v1.1.1]: https://github.com/giantswarm/cluster-autoscaler-app/pull/11
[v1.1.0]: https://github.com/giantswarm/cluster-autoscaler-app/pull/9
[v1.0.0]: https://github.com/giantswarm/cluster-autoscaler-app/pull/6
[v0.9.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/27
[v0.8.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/26
[v0.7.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/24
[v0.6.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/23
[v0.5.0]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/22
[v0.4.1]: https://github.com/giantswarm/kubernetes-cluster-autoscaler/pull/21
