# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project's packages adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.30.3-gs1] - 2024-11-04

### Changed

- Values: Enable Pod Security Standards. ([#296](https://github.com/giantswarm/cluster-autoscaler-app/pull/296))
- Chart: Update to upstream v1.30.3. ([#298](https://github.com/giantswarm/cluster-autoscaler-app/pull/298))

## [1.30.2-gs1] - 2024-09-02

### Changed

- Update `PolicyExceptions` apiVersion to `v2beta1`. ([#282](https://github.com/giantswarm/cluster-autoscaler-app/pull/282))
- Chart: Update to upstream v1.30.2. ([#284](https://github.com/giantswarm/cluster-autoscaler-app/pull/284))

## [1.29.3-gs1] - 2024-07-17

### Changed

- Chart: Update to upstream v1.29.3. ([#279](https://github.com/giantswarm/cluster-autoscaler-app/pull/279))

## [1.28.5-gs1] - 2024-07-11

### Changed

- Update to upstream 1.28.5. ([#276](https://github.com/giantswarm/cluster-autoscaler-app/pull/276)) 

## [1.27.3-gs10] - 2024-07-08

### Changed

- Add node startup taints. ([#274](https://github.com/giantswarm/cluster-autoscaler-app/pull/274)) 

## [1.27.3-gs9] - 2024-05-20

### Changed

- Reduce minimum CPU and memory requests.

## [1.27.3-gs8] - 2024-02-12

### Changed

- Chart: Improve proxy settings. ([#249](https://github.com/giantswarm/cluster-autoscaler-app/pull/249))

## [1.27.3-gs7] - 2024-02-12

### Added

- Add possibility to use egress proxy.

## [1.27.3-gs6] - 2024-02-05

### Added

- Repository: Rework chart. ([#237](https://github.com/giantswarm/cluster-autoscaler-app/pull/237))
  - Repository: Add ABS & ATS.
  - Helpers: Add `fullname` template.
  - Helpers: Add `application.giantswarm.io/team` label.
  - Deployment: Tolerate `control-plane`.

### Changed

- Repository: Rework chart. ([#237](https://github.com/giantswarm/cluster-autoscaler-app/pull/237))
  - Chart: Make PSS compliant.
  - Chart: Respect `.Release.Name` & `.Release.Namespace`.
  - Values: Move `balancingIgnoreLabels` to `configmap`.
  - Values: Rename `clusterAutoscalerResources` to `resources`.
  - Values: Rename `verticalPodAutoscaler` to `autoscaling`.
  - Helpers: Rename templates.
  - Helpers: Keep `-app` suffix in `name` template.
  - Deployment: Improve `nodeSelector` compatibility.

### Removed

- Repository: Rework chart. ([#237](https://github.com/giantswarm/cluster-autoscaler-app/pull/237))
  - Values: Remove `port` & `serviceType`.
  - Helpers: Remove `k8s-addon` label.
  - RBAC: Remove PSP role & binding.
  - Deployment: Remove `replicas`.
  - Deployment: Remove `imagePullPolicy`.
  - Deployment: Remove `aws-use-static-instance-list` workaround.
  - Policy Exception: Remove `-exceptions` suffix.
  - Service: Replace by pod monitor.

## [1.27.3-gs5] - 2024-01-11

### Added

- Add configurable `node.nodeSelector` in values
- Add configurable `node.caBundlePath` in values

## [1.27.3-gs4] - 2023-11-15

### Added

- Service monitor.

## [1.27.3-gs3] - 2023-11-10

### Added

- Add service account annotations as value.

## [1.27.3-gs2] - 2023-11-03

### Changed

- Change helm value `managementCluster` from object to string.

## [1.27.3-gs1] - 2023-11-03

### Added

- Node Group Auto Discovery for CAPA MachinePools.

### Changed

- Update cluster-autoscaler to version `1.27.3`.
- Change ScaleDownUtilizationThreshold default from 0.5 to 0.7
- Replace condition for PSP CR installation.
- Configure `gsoci.azurecr.io` as the default container image registry.

## [1.25.1-gs2] - 2023-06-30

### Fixed

- Adjusted minimum allowed CPU and memory

## [1.25.1-gs1] - 2023-05-04

### Changed

- Update cluster-autoscaler to version `1.25.1`.

## [1.24.0-gs2] - 2023-05-04

### Changed

- Add 'projected' volumes to the PSP.
- Add new-pod-scale-up-delay variable.
- Disable PSPs for k8s 1.25 and newer.

## [1.24.0-gs1] - 2022-09-21

### Changed

- Update cluster-autoscaler to version `1.24.0`.

## [1.23.1] - 2022-07-12

### Changed

- Update cluster-autoscaler to version `1.23.1`.

## [1.22.2-gs7] - 2022-06-27

### Changed

- Enable balance similar nodepools by default

### Fixed

- Ignore labels to consider nodepools similar groups

### Added

- Support to add extra arguments

## [1.22.2-gs6] - 2022-04-07

## [1.22.2-gs5] - 2022-04-06

### Added

- Support cloud provider alias names (GCP -> GCE)

## [1.22.2-gs4] - 2022-03-08

### Fixed

- Updated to correct cluster-autoscaler version
- Use GS-built 1.22 image to deliver upstream unreleased fix https://github.com/kubernetes/autoscaler/pull/4600

## [1.22.2-gs3] - 2022-02-07

### Added

- Added support for specifying `balance-similar-node-groups` flag

## [1.22.2-gs2] - 2022-01-14

### Fixed

- Fix RBAC for version 1.22.

## [1.22.2-gs1] - 2022-01-11

### Changed

- Updated cluster-autoscaler to version `1.22.2`.

## [1.21.2-gs1] - 2021-12-21

### Changed

- Updated cluster-autoscaler to version `1.21.2`.

## [1.21.0-gs2] - 2021-09-29

- Fix RBAC for cluster autoscaler 1.21.

## [1.21.0-gs1] - 2021-09-13

### Changed

- Updated cluster-autoscaler to version `1.21.0`.

## [1.23.0] - 2021-09-08

### Changed

- Use new node selector `node-role.kubernetes.io/master` in place of deprecated one `kubernetes.io/role`.

## [1.22.0] - 2021-07-28

### Changed

- Prepare helm values to configuration management.
- Update architect-orb to v4.0.0.

## [1.21.0] - 2021-07-27

### Added

- Add `VerticalPodAutoscaler` resource to adjust limits automatically.

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

[Unreleased]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.30.3-gs1...HEAD
[1.30.3-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.30.2-gs1...v1.30.3-gs1
[1.30.2-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.29.3-gs1...v1.30.2-gs1
[1.29.3-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.28.5-gs1...v1.29.3-gs1
[1.28.5-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs10...v1.28.5-gs1
[1.27.3-gs10]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs9...v1.27.3-gs10
[1.27.3-gs9]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs8...v1.27.3-gs9
[1.27.3-gs8]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs7...v1.27.3-gs8
[1.27.3-gs7]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs6...v1.27.3-gs7
[1.27.3-gs6]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs5...v1.27.3-gs6
[1.27.3-gs5]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs4...v1.27.3-gs5
[1.27.3-gs4]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs3...v1.27.3-gs4
[1.27.3-gs3]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs2...v1.27.3-gs3
[1.27.3-gs2]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.27.3-gs1...v1.27.3-gs2
[1.27.3-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.25.1-gs2...v1.27.3-gs1
[1.25.1-gs2]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.25.1-gs1...v1.25.1-gs2
[1.25.1-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.24.0-gs2...v1.25.1-gs1
[1.24.0-gs2]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.24.0-gs1...v1.24.0-gs2
[1.24.0-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.23.1...v1.24.0-gs1
[1.23.1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.22.2-gs7...v1.23.1
[1.22.2-gs7]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.22.2-gs6...v1.22.2-gs7
[1.22.2-gs6]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.22.2-gs5...v1.22.2-gs6
[1.22.2-gs5]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.22.2-gs4...v1.22.2-gs5
[1.22.2-gs4]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.22.2-gs3...v1.22.2-gs4
[1.22.2-gs3]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.22.2-gs2...v1.22.2-gs3
[1.22.2-gs2]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.22.2-gs1...v1.22.2-gs2
[1.22.2-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.21.2-gs1...v1.22.2-gs1
[1.21.2-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.21.0-gs2...v1.21.2-gs1
[1.21.0-gs2]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.21.0-gs1...v1.21.0-gs2
[1.21.0-gs1]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.23.0...v1.21.0-gs1
[1.23.0]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.22.0...v1.23.0
[1.22.0]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.21.0...v1.22.0
[1.21.0]: https://github.com/giantswarm/cluster-autoscaler-app/compare/v1.20.3...v1.21.0
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
