# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module GkehubV1beta
      
      class AppDevExperienceFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppDevExperienceFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplianceCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Authority
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinaryAuthorizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeFleetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeFleetState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeGkeUpgrade
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeGkeUpgradeFeatureCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeGkeUpgradeFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeGkeUpgradeOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeGkeUpgradeState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeIgnoredMembership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeMembershipGkeUpgradeState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradePostConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeUpgradeStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonFleetDefaultMemberConfigSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompliancePostureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceStandard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementBinauthzConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementBinauthzState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementBinauthzVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSync
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSyncDeploymentState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSyncError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSyncState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSyncVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementContainerOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementDeploymentOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementErrorResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementGatekeeperDeploymentState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementGitConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementGroupVersionKind
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementHierarchyControllerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementHierarchyControllerDeploymentState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementHierarchyControllerState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementHierarchyControllerVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementInstallError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementOciConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementOperatorState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementPolicyController
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementPolicyControllerMigration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementPolicyControllerMonitoring
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementPolicyControllerState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementPolicyControllerVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementSyncError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementSyncState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectAgentResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataplaneV2FeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EdgeCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureResourceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fleet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetLifecycleState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityFeatureError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityFleetObservabilityBaseFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityFleetObservabilityLoggingState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityFleetObservabilityMonitoringState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetObservabilityRoutingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateConnectManifestResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateMembershipRbacRoleBindingYamlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceAuthMethod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceAzureAdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceDiagnosticInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceGoogleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceGroupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceIdentityServiceOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceLdapConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceOidcConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceSamlConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceServiceAccountConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceSimpleBindCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceUserConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KubernetesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KubernetesResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBoundMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFleetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipBindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipRbacRoleBindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPermittedScopesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListScopeNamespacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListScopeRbacRoleBindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListScopesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipBindingLifecycleState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MeteringMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiCloudCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiClusterIngressFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Namespace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NamespaceLifecycleState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnPremCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Origin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerBundleInstallSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerHubConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerMonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerOnClusterState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerPolicyContentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerPolicyContentState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerPolicyControllerDeploymentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerResourceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerResourceRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerTemplateLibraryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerToleration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RbacRoleBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RbacRoleBindingActuationFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RbacRoleBindingActuationFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RbacRoleBindingLifecycleState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceManifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Role
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScopeFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScopeFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScopeLifecycleState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPostureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshControlPlaneManagement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshDataPlaneManagement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshStatusDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeMeta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppDevExperienceFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppDevExperienceFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :networking_install_succeeded, as: 'networkingInstallSucceeded', class: Google::Apis::GkehubV1beta::Status, decorator: Google::Apis::GkehubV1beta::Status::Representation
      
        end
      end
      
      class ApplianceCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::GkehubV1beta::AuditLogConfig, decorator: Google::Apis::GkehubV1beta::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class Authority
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity_provider, as: 'identityProvider'
          property :issuer, as: 'issuer'
          property :oidc_jwks, :base64 => true, as: 'oidcJwks'
          property :scope_tenancy_identity_provider, as: 'scopeTenancyIdentityProvider'
          property :scope_tenancy_workload_identity_pool, as: 'scopeTenancyWorkloadIdentityPool'
          property :workload_identity_pool, as: 'workloadIdentityPool'
        end
      end
      
      class BinaryAuthorizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation_mode, as: 'evaluationMode'
          collection :policy_bindings, as: 'policyBindings', class: Google::Apis::GkehubV1beta::PolicyBinding, decorator: Google::Apis::GkehubV1beta::PolicyBinding::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::GkehubV1beta::Expr, decorator: Google::Apis::GkehubV1beta::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ClusterUpgradeFleetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gke_upgrade_overrides, as: 'gkeUpgradeOverrides', class: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeOverride, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeOverride::Representation
      
          property :post_conditions, as: 'postConditions', class: Google::Apis::GkehubV1beta::ClusterUpgradePostConditions, decorator: Google::Apis::GkehubV1beta::ClusterUpgradePostConditions::Representation
      
          collection :upstream_fleets, as: 'upstreamFleets'
        end
      end
      
      class ClusterUpgradeFleetState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :downstream_fleets, as: 'downstreamFleets'
          property :gke_state, as: 'gkeState', class: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeFeatureState, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeFeatureState::Representation
      
          hash :ignored, as: 'ignored', class: Google::Apis::GkehubV1beta::ClusterUpgradeIgnoredMembership, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeIgnoredMembership::Representation
      
        end
      end
      
      class ClusterUpgradeGkeUpgrade
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class ClusterUpgradeGkeUpgradeFeatureCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :status, as: 'status'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ClusterUpgradeGkeUpgradeFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeFeatureCondition, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeFeatureCondition::Representation
      
          collection :upgrade_state, as: 'upgradeState', class: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeState, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeState::Representation
      
        end
      end
      
      class ClusterUpgradeGkeUpgradeOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :post_conditions, as: 'postConditions', class: Google::Apis::GkehubV1beta::ClusterUpgradePostConditions, decorator: Google::Apis::GkehubV1beta::ClusterUpgradePostConditions::Representation
      
          property :upgrade, as: 'upgrade', class: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade::Representation
      
        end
      end
      
      class ClusterUpgradeGkeUpgradeState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :stats, as: 'stats'
          property :status, as: 'status', class: Google::Apis::GkehubV1beta::ClusterUpgradeUpgradeStatus, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeUpgradeStatus::Representation
      
          property :upgrade, as: 'upgrade', class: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade::Representation
      
        end
      end
      
      class ClusterUpgradeIgnoredMembership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignored_time, as: 'ignoredTime'
          property :reason, as: 'reason'
        end
      end
      
      class ClusterUpgradeMembershipGkeUpgradeState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::GkehubV1beta::ClusterUpgradeUpgradeStatus, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeUpgradeStatus::Representation
      
          property :upgrade, as: 'upgrade', class: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade::Representation
      
        end
      end
      
      class ClusterUpgradeMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignored, as: 'ignored', class: Google::Apis::GkehubV1beta::ClusterUpgradeIgnoredMembership, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeIgnoredMembership::Representation
      
          collection :upgrades, as: 'upgrades', class: Google::Apis::GkehubV1beta::ClusterUpgradeMembershipGkeUpgradeState, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeMembershipGkeUpgradeState::Representation
      
        end
      end
      
      class ClusterUpgradePostConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :soaking, as: 'soaking'
        end
      end
      
      class ClusterUpgradeUpgradeStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :reason, as: 'reason'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CommonFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1beta::AppDevExperienceFeatureSpec, decorator: Google::Apis::GkehubV1beta::AppDevExperienceFeatureSpec::Representation
      
          property :clusterupgrade, as: 'clusterupgrade', class: Google::Apis::GkehubV1beta::ClusterUpgradeFleetSpec, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeFleetSpec::Representation
      
          property :dataplanev2, as: 'dataplanev2', class: Google::Apis::GkehubV1beta::DataplaneV2FeatureSpec, decorator: Google::Apis::GkehubV1beta::DataplaneV2FeatureSpec::Representation
      
          property :fleetobservability, as: 'fleetobservability', class: Google::Apis::GkehubV1beta::FleetObservabilityFeatureSpec, decorator: Google::Apis::GkehubV1beta::FleetObservabilityFeatureSpec::Representation
      
          property :multiclusteringress, as: 'multiclusteringress', class: Google::Apis::GkehubV1beta::MultiClusterIngressFeatureSpec, decorator: Google::Apis::GkehubV1beta::MultiClusterIngressFeatureSpec::Representation
      
          property :rbacrolebindingactuation, as: 'rbacrolebindingactuation', class: Google::Apis::GkehubV1beta::RbacRoleBindingActuationFeatureSpec, decorator: Google::Apis::GkehubV1beta::RbacRoleBindingActuationFeatureSpec::Representation
      
        end
      end
      
      class CommonFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1beta::AppDevExperienceFeatureState, decorator: Google::Apis::GkehubV1beta::AppDevExperienceFeatureState::Representation
      
          property :clusterupgrade, as: 'clusterupgrade', class: Google::Apis::GkehubV1beta::ClusterUpgradeFleetState, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeFleetState::Representation
      
          property :fleetobservability, as: 'fleetobservability', class: Google::Apis::GkehubV1beta::FleetObservabilityFeatureState, decorator: Google::Apis::GkehubV1beta::FleetObservabilityFeatureState::Representation
      
          property :rbacrolebindingactuation, as: 'rbacrolebindingactuation', class: Google::Apis::GkehubV1beta::RbacRoleBindingActuationFeatureState, decorator: Google::Apis::GkehubV1beta::RbacRoleBindingActuationFeatureState::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::FeatureState, decorator: Google::Apis::GkehubV1beta::FeatureState::Representation
      
        end
      end
      
      class CommonFleetDefaultMemberConfigSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec::Representation
      
          property :identityservice, as: 'identityservice', class: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec, decorator: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec::Representation
      
          property :mesh, as: 'mesh', class: Google::Apis::GkehubV1beta::ServiceMeshMembershipSpec, decorator: Google::Apis::GkehubV1beta::ServiceMeshMembershipSpec::Representation
      
          property :policycontroller, as: 'policycontroller', class: Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec, decorator: Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec::Representation
      
        end
      end
      
      class CompliancePostureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compliance_standards, as: 'complianceStandards', class: Google::Apis::GkehubV1beta::ComplianceStandard, decorator: Google::Apis::GkehubV1beta::ComplianceStandard::Representation
      
          property :mode, as: 'mode'
        end
      end
      
      class ComplianceStandard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard, as: 'standard'
        end
      end
      
      class ConfigManagementBinauthzConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ConfigManagementBinauthzState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::ConfigManagementBinauthzVersion, decorator: Google::Apis::GkehubV1beta::ConfigManagementBinauthzVersion::Representation
      
          property :webhook, as: 'webhook'
        end
      end
      
      class ConfigManagementBinauthzVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :webhook_version, as: 'webhookVersion'
        end
      end
      
      class ConfigManagementConfigSync
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployment_overrides, as: 'deploymentOverrides', class: Google::Apis::GkehubV1beta::ConfigManagementDeploymentOverride, decorator: Google::Apis::GkehubV1beta::ConfigManagementDeploymentOverride::Representation
      
          property :enabled, as: 'enabled'
          property :git, as: 'git', class: Google::Apis::GkehubV1beta::ConfigManagementGitConfig, decorator: Google::Apis::GkehubV1beta::ConfigManagementGitConfig::Representation
      
          property :metrics_gcp_service_account_email, as: 'metricsGcpServiceAccountEmail'
          property :oci, as: 'oci', class: Google::Apis::GkehubV1beta::ConfigManagementOciConfig, decorator: Google::Apis::GkehubV1beta::ConfigManagementOciConfig::Representation
      
          property :prevent_drift, as: 'preventDrift'
          property :source_format, as: 'sourceFormat'
          property :stop_syncing, as: 'stopSyncing'
        end
      end
      
      class ConfigManagementConfigSyncDeploymentState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admission_webhook, as: 'admissionWebhook'
          property :git_sync, as: 'gitSync'
          property :importer, as: 'importer'
          property :monitor, as: 'monitor'
          property :otel_collector, as: 'otelCollector'
          property :reconciler_manager, as: 'reconcilerManager'
          property :resource_group_controller_manager, as: 'resourceGroupControllerManager'
          property :root_reconciler, as: 'rootReconciler'
          property :syncer, as: 'syncer'
        end
      end
      
      class ConfigManagementConfigSyncError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
        end
      end
      
      class ConfigManagementConfigSyncState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_level_stop_syncing_state, as: 'clusterLevelStopSyncingState'
          property :cr_count, as: 'crCount'
          property :deployment_state, as: 'deploymentState', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncDeploymentState, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncDeploymentState::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncError, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncError::Representation
      
          property :reposync_crd, as: 'reposyncCrd'
          property :rootsync_crd, as: 'rootsyncCrd'
          property :state, as: 'state'
          property :sync_state, as: 'syncState', class: Google::Apis::GkehubV1beta::ConfigManagementSyncState, decorator: Google::Apis::GkehubV1beta::ConfigManagementSyncState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncVersion, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncVersion::Representation
      
        end
      end
      
      class ConfigManagementConfigSyncVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admission_webhook, as: 'admissionWebhook'
          property :git_sync, as: 'gitSync'
          property :importer, as: 'importer'
          property :monitor, as: 'monitor'
          property :otel_collector, as: 'otelCollector'
          property :reconciler_manager, as: 'reconcilerManager'
          property :resource_group_controller_manager, as: 'resourceGroupControllerManager'
          property :root_reconciler, as: 'rootReconciler'
          property :syncer, as: 'syncer'
        end
      end
      
      class ConfigManagementContainerOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_name, as: 'containerName'
          property :cpu_limit, as: 'cpuLimit'
          property :cpu_request, as: 'cpuRequest'
          property :memory_limit, as: 'memoryLimit'
          property :memory_request, as: 'memoryRequest'
        end
      end
      
      class ConfigManagementDeploymentOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::GkehubV1beta::ConfigManagementContainerOverride, decorator: Google::Apis::GkehubV1beta::ConfigManagementContainerOverride::Representation
      
          property :deployment_name, as: 'deploymentName'
          property :deployment_namespace, as: 'deploymentNamespace'
        end
      end
      
      class ConfigManagementErrorResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_gvk, as: 'resourceGvk', class: Google::Apis::GkehubV1beta::ConfigManagementGroupVersionKind, decorator: Google::Apis::GkehubV1beta::ConfigManagementGroupVersionKind::Representation
      
          property :resource_name, as: 'resourceName'
          property :resource_namespace, as: 'resourceNamespace'
          property :source_path, as: 'sourcePath'
        end
      end
      
      class ConfigManagementGatekeeperDeploymentState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gatekeeper_audit, as: 'gatekeeperAudit'
          property :gatekeeper_controller_manager_state, as: 'gatekeeperControllerManagerState'
          property :gatekeeper_mutation, as: 'gatekeeperMutation'
        end
      end
      
      class ConfigManagementGitConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_service_account_email, as: 'gcpServiceAccountEmail'
          property :https_proxy, as: 'httpsProxy'
          property :policy_dir, as: 'policyDir'
          property :secret_type, as: 'secretType'
          property :sync_branch, as: 'syncBranch'
          property :sync_repo, as: 'syncRepo'
          property :sync_rev, as: 'syncRev'
          property :sync_wait_secs, :numeric_string => true, as: 'syncWaitSecs'
        end
      end
      
      class ConfigManagementGroupVersionKind
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group'
          property :kind, as: 'kind'
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementHierarchyControllerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_hierarchical_resource_quota, as: 'enableHierarchicalResourceQuota'
          property :enable_pod_tree_labels, as: 'enablePodTreeLabels'
          property :enabled, as: 'enabled'
        end
      end
      
      class ConfigManagementHierarchyControllerDeploymentState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extension, as: 'extension'
          property :hnc, as: 'hnc'
        end
      end
      
      class ConfigManagementHierarchyControllerState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerDeploymentState, decorator: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerDeploymentState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerVersion, decorator: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerVersion::Representation
      
        end
      end
      
      class ConfigManagementHierarchyControllerVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extension, as: 'extension'
          property :hnc, as: 'hnc'
        end
      end
      
      class ConfigManagementInstallError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
        end
      end
      
      class ConfigManagementMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binauthz, as: 'binauthz', class: Google::Apis::GkehubV1beta::ConfigManagementBinauthzConfig, decorator: Google::Apis::GkehubV1beta::ConfigManagementBinauthzConfig::Representation
      
          property :cluster, as: 'cluster'
          property :config_sync, as: 'configSync', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSync, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSync::Representation
      
          property :hierarchy_controller, as: 'hierarchyController', class: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerConfig, decorator: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerConfig::Representation
      
          property :management, as: 'management'
          property :policy_controller, as: 'policyController', class: Google::Apis::GkehubV1beta::ConfigManagementPolicyController, decorator: Google::Apis::GkehubV1beta::ConfigManagementPolicyController::Representation
      
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binauthz_state, as: 'binauthzState', class: Google::Apis::GkehubV1beta::ConfigManagementBinauthzState, decorator: Google::Apis::GkehubV1beta::ConfigManagementBinauthzState::Representation
      
          property :cluster_name, as: 'clusterName'
          property :config_sync_state, as: 'configSyncState', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncState, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncState::Representation
      
          property :hierarchy_controller_state, as: 'hierarchyControllerState', class: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerState, decorator: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerState::Representation
      
          property :membership_spec, as: 'membershipSpec', class: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec::Representation
      
          property :operator_state, as: 'operatorState', class: Google::Apis::GkehubV1beta::ConfigManagementOperatorState, decorator: Google::Apis::GkehubV1beta::ConfigManagementOperatorState::Representation
      
          property :policy_controller_state, as: 'policyControllerState', class: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerState, decorator: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerState::Representation
      
        end
      end
      
      class ConfigManagementOciConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_service_account_email, as: 'gcpServiceAccountEmail'
          property :policy_dir, as: 'policyDir'
          property :secret_type, as: 'secretType'
          property :sync_repo, as: 'syncRepo'
          property :sync_wait_secs, :numeric_string => true, as: 'syncWaitSecs'
        end
      end
      
      class ConfigManagementOperatorState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_state, as: 'deploymentState'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1beta::ConfigManagementInstallError, decorator: Google::Apis::GkehubV1beta::ConfigManagementInstallError::Representation
      
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementPolicyController
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_interval_seconds, :numeric_string => true, as: 'auditIntervalSeconds'
          property :enabled, as: 'enabled'
          collection :exemptable_namespaces, as: 'exemptableNamespaces'
          property :log_denies_enabled, as: 'logDeniesEnabled'
          property :monitoring, as: 'monitoring', class: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerMonitoring, decorator: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerMonitoring::Representation
      
          property :mutation_enabled, as: 'mutationEnabled'
          property :referential_rules_enabled, as: 'referentialRulesEnabled'
          property :template_library_installed, as: 'templateLibraryInstalled'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConfigManagementPolicyControllerMigration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy_time, as: 'copyTime'
          property :stage, as: 'stage'
        end
      end
      
      class ConfigManagementPolicyControllerMonitoring
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backends, as: 'backends'
        end
      end
      
      class ConfigManagementPolicyControllerState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_state, as: 'deploymentState', class: Google::Apis::GkehubV1beta::ConfigManagementGatekeeperDeploymentState, decorator: Google::Apis::GkehubV1beta::ConfigManagementGatekeeperDeploymentState::Representation
      
          property :migration, as: 'migration', class: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerMigration, decorator: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerMigration::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerVersion, decorator: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerVersion::Representation
      
        end
      end
      
      class ConfigManagementPolicyControllerVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementSyncError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :error_message, as: 'errorMessage'
          collection :error_resources, as: 'errorResources', class: Google::Apis::GkehubV1beta::ConfigManagementErrorResource, decorator: Google::Apis::GkehubV1beta::ConfigManagementErrorResource::Representation
      
        end
      end
      
      class ConfigManagementSyncState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1beta::ConfigManagementSyncError, decorator: Google::Apis::GkehubV1beta::ConfigManagementSyncError::Representation
      
          property :import_token, as: 'importToken'
          property :last_sync, as: 'lastSync'
          property :last_sync_time, as: 'lastSyncTime'
          property :source_token, as: 'sourceToken'
          property :sync_token, as: 'syncToken'
        end
      end
      
      class ConnectAgentResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manifest, as: 'manifest'
          property :type, as: 'type', class: Google::Apis::GkehubV1beta::TypeMeta, decorator: Google::Apis::GkehubV1beta::TypeMeta::Representation
      
        end
      end
      
      class DataplaneV2FeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_encryption, as: 'enableEncryption'
        end
      end
      
      class DefaultClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_authorization_config, as: 'binaryAuthorizationConfig', class: Google::Apis::GkehubV1beta::BinaryAuthorizationConfig, decorator: Google::Apis::GkehubV1beta::BinaryAuthorizationConfig::Representation
      
          property :compliance_posture_config, as: 'compliancePostureConfig', class: Google::Apis::GkehubV1beta::CompliancePostureConfig, decorator: Google::Apis::GkehubV1beta::CompliancePostureConfig::Representation
      
          property :security_posture_config, as: 'securityPostureConfig', class: Google::Apis::GkehubV1beta::SecurityPostureConfig, decorator: Google::Apis::GkehubV1beta::SecurityPostureConfig::Representation
      
        end
      end
      
      class EdgeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :fleet_default_member_config, as: 'fleetDefaultMemberConfig', class: Google::Apis::GkehubV1beta::CommonFleetDefaultMemberConfigSpec, decorator: Google::Apis::GkehubV1beta::CommonFleetDefaultMemberConfigSpec::Representation
      
          hash :labels, as: 'labels'
          hash :membership_specs, as: 'membershipSpecs', class: Google::Apis::GkehubV1beta::MembershipFeatureSpec, decorator: Google::Apis::GkehubV1beta::MembershipFeatureSpec::Representation
      
          hash :membership_states, as: 'membershipStates', class: Google::Apis::GkehubV1beta::MembershipFeatureState, decorator: Google::Apis::GkehubV1beta::MembershipFeatureState::Representation
      
          property :name, as: 'name'
          property :resource_state, as: 'resourceState', class: Google::Apis::GkehubV1beta::FeatureResourceState, decorator: Google::Apis::GkehubV1beta::FeatureResourceState::Representation
      
          hash :scope_specs, as: 'scopeSpecs', class: Google::Apis::GkehubV1beta::ScopeFeatureSpec, decorator: Google::Apis::GkehubV1beta::ScopeFeatureSpec::Representation
      
          hash :scope_states, as: 'scopeStates', class: Google::Apis::GkehubV1beta::ScopeFeatureState, decorator: Google::Apis::GkehubV1beta::ScopeFeatureState::Representation
      
          property :spec, as: 'spec', class: Google::Apis::GkehubV1beta::CommonFeatureSpec, decorator: Google::Apis::GkehubV1beta::CommonFeatureSpec::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::CommonFeatureState, decorator: Google::Apis::GkehubV1beta::CommonFeatureState::Representation
      
          collection :unreachable, as: 'unreachable'
          property :update_time, as: 'updateTime'
        end
      end
      
      class FeatureResourceState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class FeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Fleet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :default_cluster_config, as: 'defaultClusterConfig', class: Google::Apis::GkehubV1beta::DefaultClusterConfig, decorator: Google::Apis::GkehubV1beta::DefaultClusterConfig::Representation
      
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::FleetLifecycleState, decorator: Google::Apis::GkehubV1beta::FleetLifecycleState::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class FleetLifecycleState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class FleetObservabilityFeatureError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
        end
      end
      
      class FleetObservabilityFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logging_config, as: 'loggingConfig', class: Google::Apis::GkehubV1beta::FleetObservabilityLoggingConfig, decorator: Google::Apis::GkehubV1beta::FleetObservabilityLoggingConfig::Representation
      
        end
      end
      
      class FleetObservabilityFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logging, as: 'logging', class: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityLoggingState, decorator: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityLoggingState::Representation
      
          property :monitoring, as: 'monitoring', class: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityMonitoringState, decorator: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityMonitoringState::Representation
      
        end
      end
      
      class FleetObservabilityFleetObservabilityBaseFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1beta::FleetObservabilityFeatureError, decorator: Google::Apis::GkehubV1beta::FleetObservabilityFeatureError::Representation
      
        end
      end
      
      class FleetObservabilityFleetObservabilityLoggingState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_log, as: 'defaultLog', class: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState, decorator: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState::Representation
      
          property :scope_log, as: 'scopeLog', class: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState, decorator: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState::Representation
      
        end
      end
      
      class FleetObservabilityFleetObservabilityMonitoringState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState, decorator: Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState::Representation
      
        end
      end
      
      class FleetObservabilityLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_config, as: 'defaultConfig', class: Google::Apis::GkehubV1beta::FleetObservabilityRoutingConfig, decorator: Google::Apis::GkehubV1beta::FleetObservabilityRoutingConfig::Representation
      
          property :fleet_scope_logs_config, as: 'fleetScopeLogsConfig', class: Google::Apis::GkehubV1beta::FleetObservabilityRoutingConfig, decorator: Google::Apis::GkehubV1beta::FleetObservabilityRoutingConfig::Representation
      
        end
      end
      
      class FleetObservabilityMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FleetObservabilityMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FleetObservabilityRoutingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GenerateConnectManifestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manifest, as: 'manifest', class: Google::Apis::GkehubV1beta::ConnectAgentResource, decorator: Google::Apis::GkehubV1beta::ConnectAgentResource::Representation
      
        end
      end
      
      class GenerateMembershipRbacRoleBindingYamlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :role_bindings_yaml, as: 'roleBindingsYaml'
        end
      end
      
      class GkeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_missing, as: 'clusterMissing'
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class IdentityServiceAuthMethod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :azuread_config, as: 'azureadConfig', class: Google::Apis::GkehubV1beta::IdentityServiceAzureAdConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceAzureAdConfig::Representation
      
          property :google_config, as: 'googleConfig', class: Google::Apis::GkehubV1beta::IdentityServiceGoogleConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceGoogleConfig::Representation
      
          property :ldap_config, as: 'ldapConfig', class: Google::Apis::GkehubV1beta::IdentityServiceLdapConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceLdapConfig::Representation
      
          property :name, as: 'name'
          property :oidc_config, as: 'oidcConfig', class: Google::Apis::GkehubV1beta::IdentityServiceOidcConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceOidcConfig::Representation
      
          property :proxy, as: 'proxy'
          property :saml_config, as: 'samlConfig', class: Google::Apis::GkehubV1beta::IdentityServiceSamlConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceSamlConfig::Representation
      
        end
      end
      
      class IdentityServiceAzureAdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :encrypted_client_secret, :base64 => true, as: 'encryptedClientSecret'
          property :group_format, as: 'groupFormat'
          property :kubectl_redirect_uri, as: 'kubectlRedirectUri'
          property :tenant, as: 'tenant'
          property :user_claim, as: 'userClaim'
        end
      end
      
      class IdentityServiceDiagnosticInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :expiration_time, as: 'expirationTime'
        end
      end
      
      class IdentityServiceGoogleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable, as: 'disable'
        end
      end
      
      class IdentityServiceGroupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_dn, as: 'baseDn'
          property :filter, as: 'filter'
          property :id_attribute, as: 'idAttribute'
        end
      end
      
      class IdentityServiceIdentityServiceOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diagnostic_interface, as: 'diagnosticInterface', class: Google::Apis::GkehubV1beta::IdentityServiceDiagnosticInterface, decorator: Google::Apis::GkehubV1beta::IdentityServiceDiagnosticInterface::Representation
      
          property :session_duration, as: 'sessionDuration'
        end
      end
      
      class IdentityServiceLdapConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group', class: Google::Apis::GkehubV1beta::IdentityServiceGroupConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceGroupConfig::Representation
      
          property :server, as: 'server', class: Google::Apis::GkehubV1beta::IdentityServiceServerConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceServerConfig::Representation
      
          property :service_account, as: 'serviceAccount', class: Google::Apis::GkehubV1beta::IdentityServiceServiceAccountConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceServiceAccountConfig::Representation
      
          property :user, as: 'user', class: Google::Apis::GkehubV1beta::IdentityServiceUserConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceUserConfig::Representation
      
        end
      end
      
      class IdentityServiceMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_methods, as: 'authMethods', class: Google::Apis::GkehubV1beta::IdentityServiceAuthMethod, decorator: Google::Apis::GkehubV1beta::IdentityServiceAuthMethod::Representation
      
          property :identity_service_options, as: 'identityServiceOptions', class: Google::Apis::GkehubV1beta::IdentityServiceIdentityServiceOptions, decorator: Google::Apis::GkehubV1beta::IdentityServiceIdentityServiceOptions::Representation
      
        end
      end
      
      class IdentityServiceMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_reason, as: 'failureReason'
          property :installed_version, as: 'installedVersion'
          property :member_config, as: 'memberConfig', class: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec, decorator: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec::Representation
      
          property :state, as: 'state'
        end
      end
      
      class IdentityServiceOidcConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_authority_data, as: 'certificateAuthorityData'
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :deploy_cloud_console_proxy, as: 'deployCloudConsoleProxy'
          property :enable_access_token, as: 'enableAccessToken'
          property :encrypted_client_secret, :base64 => true, as: 'encryptedClientSecret'
          property :extra_params, as: 'extraParams'
          property :group_prefix, as: 'groupPrefix'
          property :groups_claim, as: 'groupsClaim'
          property :issuer_uri, as: 'issuerUri'
          property :kubectl_redirect_uri, as: 'kubectlRedirectUri'
          property :scopes, as: 'scopes'
          property :user_claim, as: 'userClaim'
          property :user_prefix, as: 'userPrefix'
        end
      end
      
      class IdentityServiceSamlConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attribute_mapping, as: 'attributeMapping'
          property :group_prefix, as: 'groupPrefix'
          property :groups_attribute, as: 'groupsAttribute'
          collection :identity_provider_certificates, as: 'identityProviderCertificates'
          property :identity_provider_id, as: 'identityProviderId'
          property :identity_provider_sso_uri, as: 'identityProviderSsoUri'
          property :user_attribute, as: 'userAttribute'
          property :user_prefix, as: 'userPrefix'
        end
      end
      
      class IdentityServiceServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_authority_data, :base64 => true, as: 'certificateAuthorityData'
          property :connection_type, as: 'connectionType'
          property :host, as: 'host'
        end
      end
      
      class IdentityServiceServiceAccountConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :simple_bind_credentials, as: 'simpleBindCredentials', class: Google::Apis::GkehubV1beta::IdentityServiceSimpleBindCredentials, decorator: Google::Apis::GkehubV1beta::IdentityServiceSimpleBindCredentials::Representation
      
        end
      end
      
      class IdentityServiceSimpleBindCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dn, as: 'dn'
          property :encrypted_password, :base64 => true, as: 'encryptedPassword'
          property :password, as: 'password'
        end
      end
      
      class IdentityServiceUserConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_dn, as: 'baseDn'
          property :filter, as: 'filter'
          property :id_attribute, as: 'idAttribute'
          property :login_attribute, as: 'loginAttribute'
        end
      end
      
      class KubernetesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kubernetes_api_server_version, as: 'kubernetesApiServerVersion'
          property :memory_mb, as: 'memoryMb'
          property :node_count, as: 'nodeCount'
          property :node_provider_id, as: 'nodeProviderId'
          property :update_time, as: 'updateTime'
          property :vcpu_count, as: 'vcpuCount'
        end
      end
      
      class KubernetesResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connect_resources, as: 'connectResources', class: Google::Apis::GkehubV1beta::ResourceManifest, decorator: Google::Apis::GkehubV1beta::ResourceManifest::Representation
      
          property :membership_cr_manifest, as: 'membershipCrManifest'
          collection :membership_resources, as: 'membershipResources', class: Google::Apis::GkehubV1beta::ResourceManifest, decorator: Google::Apis::GkehubV1beta::ResourceManifest::Representation
      
          property :resource_options, as: 'resourceOptions', class: Google::Apis::GkehubV1beta::ResourceOptions, decorator: Google::Apis::GkehubV1beta::ResourceOptions::Representation
      
        end
      end
      
      class ListBoundMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::GkehubV1beta::Membership, decorator: Google::Apis::GkehubV1beta::Membership::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::GkehubV1beta::Feature, decorator: Google::Apis::GkehubV1beta::Feature::Representation
      
        end
      end
      
      class ListFleetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fleets, as: 'fleets', class: Google::Apis::GkehubV1beta::Fleet, decorator: Google::Apis::GkehubV1beta::Fleet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GkehubV1beta::Location, decorator: Google::Apis::GkehubV1beta::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :membership_bindings, as: 'membershipBindings', class: Google::Apis::GkehubV1beta::MembershipBinding, decorator: Google::Apis::GkehubV1beta::MembershipBinding::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListMembershipRbacRoleBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rbacrolebindings, as: 'rbacrolebindings', class: Google::Apis::GkehubV1beta::RbacRoleBinding, decorator: Google::Apis::GkehubV1beta::RbacRoleBinding::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::GkehubV1beta::Membership, decorator: Google::Apis::GkehubV1beta::Membership::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GkehubV1beta::Operation, decorator: Google::Apis::GkehubV1beta::Operation::Representation
      
        end
      end
      
      class ListPermittedScopesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scopes, as: 'scopes', class: Google::Apis::GkehubV1beta::Scope, decorator: Google::Apis::GkehubV1beta::Scope::Representation
      
        end
      end
      
      class ListScopeNamespacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scope_namespaces, as: 'scopeNamespaces', class: Google::Apis::GkehubV1beta::Namespace, decorator: Google::Apis::GkehubV1beta::Namespace::Representation
      
        end
      end
      
      class ListScopeRbacRoleBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rbacrolebindings, as: 'rbacrolebindings', class: Google::Apis::GkehubV1beta::RbacRoleBinding, decorator: Google::Apis::GkehubV1beta::RbacRoleBinding::Representation
      
        end
      end
      
      class ListScopesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scopes, as: 'scopes', class: Google::Apis::GkehubV1beta::Scope, decorator: Google::Apis::GkehubV1beta::Scope::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority, as: 'authority', class: Google::Apis::GkehubV1beta::Authority, decorator: Google::Apis::GkehubV1beta::Authority::Representation
      
          property :cluster_tier, as: 'clusterTier'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :endpoint, as: 'endpoint', class: Google::Apis::GkehubV1beta::MembershipEndpoint, decorator: Google::Apis::GkehubV1beta::MembershipEndpoint::Representation
      
          property :external_id, as: 'externalId'
          hash :labels, as: 'labels'
          property :last_connection_time, as: 'lastConnectionTime'
          property :monitoring_config, as: 'monitoringConfig', class: Google::Apis::GkehubV1beta::MonitoringConfig, decorator: Google::Apis::GkehubV1beta::MonitoringConfig::Representation
      
          property :name, as: 'name'
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::MembershipState, decorator: Google::Apis::GkehubV1beta::MembershipState::Representation
      
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MembershipBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :scope, as: 'scope'
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::MembershipBindingLifecycleState, decorator: Google::Apis::GkehubV1beta::MembershipBindingLifecycleState::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MembershipBindingLifecycleState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class MembershipEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appliance_cluster, as: 'applianceCluster', class: Google::Apis::GkehubV1beta::ApplianceCluster, decorator: Google::Apis::GkehubV1beta::ApplianceCluster::Representation
      
          property :edge_cluster, as: 'edgeCluster', class: Google::Apis::GkehubV1beta::EdgeCluster, decorator: Google::Apis::GkehubV1beta::EdgeCluster::Representation
      
          property :gke_cluster, as: 'gkeCluster', class: Google::Apis::GkehubV1beta::GkeCluster, decorator: Google::Apis::GkehubV1beta::GkeCluster::Representation
      
          property :google_managed, as: 'googleManaged'
          property :kubernetes_metadata, as: 'kubernetesMetadata', class: Google::Apis::GkehubV1beta::KubernetesMetadata, decorator: Google::Apis::GkehubV1beta::KubernetesMetadata::Representation
      
          property :kubernetes_resource, as: 'kubernetesResource', class: Google::Apis::GkehubV1beta::KubernetesResource, decorator: Google::Apis::GkehubV1beta::KubernetesResource::Representation
      
          property :multi_cloud_cluster, as: 'multiCloudCluster', class: Google::Apis::GkehubV1beta::MultiCloudCluster, decorator: Google::Apis::GkehubV1beta::MultiCloudCluster::Representation
      
          property :on_prem_cluster, as: 'onPremCluster', class: Google::Apis::GkehubV1beta::OnPremCluster, decorator: Google::Apis::GkehubV1beta::OnPremCluster::Representation
      
        end
      end
      
      class MembershipFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloudbuild, as: 'cloudbuild', class: Google::Apis::GkehubV1beta::MembershipSpec, decorator: Google::Apis::GkehubV1beta::MembershipSpec::Representation
      
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec::Representation
      
          property :fleetobservability, as: 'fleetobservability', class: Google::Apis::GkehubV1beta::FleetObservabilityMembershipSpec, decorator: Google::Apis::GkehubV1beta::FleetObservabilityMembershipSpec::Representation
      
          property :identityservice, as: 'identityservice', class: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec, decorator: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec::Representation
      
          property :mesh, as: 'mesh', class: Google::Apis::GkehubV1beta::ServiceMeshMembershipSpec, decorator: Google::Apis::GkehubV1beta::ServiceMeshMembershipSpec::Representation
      
          property :origin, as: 'origin', class: Google::Apis::GkehubV1beta::Origin, decorator: Google::Apis::GkehubV1beta::Origin::Representation
      
          property :policycontroller, as: 'policycontroller', class: Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec, decorator: Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec::Representation
      
        end
      end
      
      class MembershipFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1beta::AppDevExperienceFeatureState, decorator: Google::Apis::GkehubV1beta::AppDevExperienceFeatureState::Representation
      
          property :clusterupgrade, as: 'clusterupgrade', class: Google::Apis::GkehubV1beta::ClusterUpgradeMembershipState, decorator: Google::Apis::GkehubV1beta::ClusterUpgradeMembershipState::Representation
      
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1beta::ConfigManagementMembershipState, decorator: Google::Apis::GkehubV1beta::ConfigManagementMembershipState::Representation
      
          property :fleetobservability, as: 'fleetobservability', class: Google::Apis::GkehubV1beta::FleetObservabilityMembershipState, decorator: Google::Apis::GkehubV1beta::FleetObservabilityMembershipState::Representation
      
          property :identityservice, as: 'identityservice', class: Google::Apis::GkehubV1beta::IdentityServiceMembershipState, decorator: Google::Apis::GkehubV1beta::IdentityServiceMembershipState::Representation
      
          property :metering, as: 'metering', class: Google::Apis::GkehubV1beta::MeteringMembershipState, decorator: Google::Apis::GkehubV1beta::MeteringMembershipState::Representation
      
          property :policycontroller, as: 'policycontroller', class: Google::Apis::GkehubV1beta::PolicyControllerMembershipState, decorator: Google::Apis::GkehubV1beta::PolicyControllerMembershipState::Representation
      
          property :servicemesh, as: 'servicemesh', class: Google::Apis::GkehubV1beta::ServiceMeshMembershipState, decorator: Google::Apis::GkehubV1beta::ServiceMeshMembershipState::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::FeatureState, decorator: Google::Apis::GkehubV1beta::FeatureState::Representation
      
        end
      end
      
      class MembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :security_policy, as: 'securityPolicy'
          property :version, as: 'version'
        end
      end
      
      class MembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class MeteringMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_measurement_time, as: 'lastMeasurementTime'
          property :precise_last_measured_cluster_vcpu_capacity, as: 'preciseLastMeasuredClusterVcpuCapacity'
        end
      end
      
      class MonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          property :cluster_hash, as: 'clusterHash'
          property :kubernetes_metrics_prefix, as: 'kubernetesMetricsPrefix'
          property :location, as: 'location'
          property :project_id, as: 'projectId'
        end
      end
      
      class MultiCloudCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_missing, as: 'clusterMissing'
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class MultiClusterIngressFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing, as: 'billing'
          property :config_membership, as: 'configMembership'
        end
      end
      
      class Namespace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          hash :namespace_labels, as: 'namespaceLabels'
          property :scope, as: 'scope'
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::NamespaceLifecycleState, decorator: Google::Apis::GkehubV1beta::NamespaceLifecycleState::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class NamespaceLifecycleState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class OnPremCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_cluster, as: 'adminCluster'
          property :cluster_missing, as: 'clusterMissing'
          property :cluster_type, as: 'clusterType'
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GkehubV1beta::GoogleRpcStatus, decorator: Google::Apis::GkehubV1beta::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Origin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::GkehubV1beta::AuditConfig, decorator: Google::Apis::GkehubV1beta::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::GkehubV1beta::Binding, decorator: Google::Apis::GkehubV1beta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PolicyBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class PolicyControllerBundleInstallSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_namespaces, as: 'exemptedNamespaces'
        end
      end
      
      class PolicyControllerHubConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_interval_seconds, :numeric_string => true, as: 'auditIntervalSeconds'
          property :constraint_violation_limit, :numeric_string => true, as: 'constraintViolationLimit'
          hash :deployment_configs, as: 'deploymentConfigs', class: Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerDeploymentConfig, decorator: Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerDeploymentConfig::Representation
      
          collection :exemptable_namespaces, as: 'exemptableNamespaces'
          property :install_spec, as: 'installSpec'
          property :log_denies_enabled, as: 'logDeniesEnabled'
          property :monitoring, as: 'monitoring', class: Google::Apis::GkehubV1beta::PolicyControllerMonitoringConfig, decorator: Google::Apis::GkehubV1beta::PolicyControllerMonitoringConfig::Representation
      
          property :mutation_enabled, as: 'mutationEnabled'
          property :policy_content, as: 'policyContent', class: Google::Apis::GkehubV1beta::PolicyControllerPolicyContentSpec, decorator: Google::Apis::GkehubV1beta::PolicyControllerPolicyContentSpec::Representation
      
          property :referential_rules_enabled, as: 'referentialRulesEnabled'
        end
      end
      
      class PolicyControllerMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_controller_hub_config, as: 'policyControllerHubConfig', class: Google::Apis::GkehubV1beta::PolicyControllerHubConfig, decorator: Google::Apis::GkehubV1beta::PolicyControllerHubConfig::Representation
      
          property :version, as: 'version'
        end
      end
      
      class PolicyControllerMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :component_states, as: 'componentStates', class: Google::Apis::GkehubV1beta::PolicyControllerOnClusterState, decorator: Google::Apis::GkehubV1beta::PolicyControllerOnClusterState::Representation
      
          property :policy_content_state, as: 'policyContentState', class: Google::Apis::GkehubV1beta::PolicyControllerPolicyContentState, decorator: Google::Apis::GkehubV1beta::PolicyControllerPolicyContentState::Representation
      
          property :state, as: 'state'
        end
      end
      
      class PolicyControllerMonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backends, as: 'backends'
        end
      end
      
      class PolicyControllerOnClusterState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :state, as: 'state'
        end
      end
      
      class PolicyControllerPolicyContentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :bundles, as: 'bundles', class: Google::Apis::GkehubV1beta::PolicyControllerBundleInstallSpec, decorator: Google::Apis::GkehubV1beta::PolicyControllerBundleInstallSpec::Representation
      
          property :template_library, as: 'templateLibrary', class: Google::Apis::GkehubV1beta::PolicyControllerTemplateLibraryConfig, decorator: Google::Apis::GkehubV1beta::PolicyControllerTemplateLibraryConfig::Representation
      
        end
      end
      
      class PolicyControllerPolicyContentState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :bundle_states, as: 'bundleStates', class: Google::Apis::GkehubV1beta::PolicyControllerOnClusterState, decorator: Google::Apis::GkehubV1beta::PolicyControllerOnClusterState::Representation
      
          property :referential_sync_config_state, as: 'referentialSyncConfigState', class: Google::Apis::GkehubV1beta::PolicyControllerOnClusterState, decorator: Google::Apis::GkehubV1beta::PolicyControllerOnClusterState::Representation
      
          property :template_library_state, as: 'templateLibraryState', class: Google::Apis::GkehubV1beta::PolicyControllerOnClusterState, decorator: Google::Apis::GkehubV1beta::PolicyControllerOnClusterState::Representation
      
        end
      end
      
      class PolicyControllerPolicyControllerDeploymentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_resources, as: 'containerResources', class: Google::Apis::GkehubV1beta::PolicyControllerResourceRequirements, decorator: Google::Apis::GkehubV1beta::PolicyControllerResourceRequirements::Representation
      
          property :pod_affinity, as: 'podAffinity'
          property :pod_anti_affinity, as: 'podAntiAffinity'
          collection :pod_tolerations, as: 'podTolerations', class: Google::Apis::GkehubV1beta::PolicyControllerToleration, decorator: Google::Apis::GkehubV1beta::PolicyControllerToleration::Representation
      
          property :replica_count, :numeric_string => true, as: 'replicaCount'
        end
      end
      
      class PolicyControllerResourceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu'
          property :memory, as: 'memory'
        end
      end
      
      class PolicyControllerResourceRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :limits, as: 'limits', class: Google::Apis::GkehubV1beta::PolicyControllerResourceList, decorator: Google::Apis::GkehubV1beta::PolicyControllerResourceList::Representation
      
          property :requests, as: 'requests', class: Google::Apis::GkehubV1beta::PolicyControllerResourceList, decorator: Google::Apis::GkehubV1beta::PolicyControllerResourceList::Representation
      
        end
      end
      
      class PolicyControllerTemplateLibraryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :installation, as: 'installation'
        end
      end
      
      class PolicyControllerToleration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effect, as: 'effect'
          property :key, as: 'key'
          property :operator, as: 'operator'
          property :value, as: 'value'
        end
      end
      
      class RbacRoleBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :group, as: 'group'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :role, as: 'role', class: Google::Apis::GkehubV1beta::Role, decorator: Google::Apis::GkehubV1beta::Role::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::RbacRoleBindingLifecycleState, decorator: Google::Apis::GkehubV1beta::RbacRoleBindingLifecycleState::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :user, as: 'user'
        end
      end
      
      class RbacRoleBindingActuationFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_custom_roles, as: 'allowedCustomRoles'
        end
      end
      
      class RbacRoleBindingActuationFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RbacRoleBindingLifecycleState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class ResourceManifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_scoped, as: 'clusterScoped'
          property :manifest, as: 'manifest'
        end
      end
      
      class ResourceOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connect_version, as: 'connectVersion'
          property :k8s_version, as: 'k8sVersion'
          property :v1beta1_crd, as: 'v1beta1Crd'
        end
      end
      
      class Role
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_role, as: 'customRole'
          property :predefined_role, as: 'predefinedRole'
        end
      end
      
      class Scope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          hash :namespace_labels, as: 'namespaceLabels'
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::ScopeLifecycleState, decorator: Google::Apis::GkehubV1beta::ScopeLifecycleState::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ScopeFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ScopeFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::FeatureState, decorator: Google::Apis::GkehubV1beta::FeatureState::Representation
      
        end
      end
      
      class ScopeLifecycleState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class SecurityPostureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :vulnerability_mode, as: 'vulnerabilityMode'
        end
      end
      
      class ServiceMeshCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :details, as: 'details'
          property :documentation_link, as: 'documentationLink'
          property :severity, as: 'severity'
        end
      end
      
      class ServiceMeshControlPlaneManagement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::GkehubV1beta::ServiceMeshStatusDetails, decorator: Google::Apis::GkehubV1beta::ServiceMeshStatusDetails::Representation
      
          property :implementation, as: 'implementation'
          property :state, as: 'state'
        end
      end
      
      class ServiceMeshDataPlaneManagement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::GkehubV1beta::ServiceMeshStatusDetails, decorator: Google::Apis::GkehubV1beta::ServiceMeshStatusDetails::Representation
      
          property :state, as: 'state'
        end
      end
      
      class ServiceMeshMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_api, as: 'configApi'
          property :control_plane, as: 'controlPlane'
          property :management, as: 'management'
        end
      end
      
      class ServiceMeshMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::GkehubV1beta::ServiceMeshCondition, decorator: Google::Apis::GkehubV1beta::ServiceMeshCondition::Representation
      
          property :control_plane_management, as: 'controlPlaneManagement', class: Google::Apis::GkehubV1beta::ServiceMeshControlPlaneManagement, decorator: Google::Apis::GkehubV1beta::ServiceMeshControlPlaneManagement::Representation
      
          property :data_plane_management, as: 'dataPlaneManagement', class: Google::Apis::GkehubV1beta::ServiceMeshDataPlaneManagement, decorator: Google::Apis::GkehubV1beta::ServiceMeshDataPlaneManagement::Representation
      
        end
      end
      
      class ServiceMeshStatusDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :details, as: 'details'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GkehubV1beta::Policy, decorator: Google::Apis::GkehubV1beta::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TypeMeta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
        end
      end
    end
  end
end
