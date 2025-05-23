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
    module DatafusionV1
      
      class Accelerator
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
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CryptoKeyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsPeering
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventPublishConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAvailableVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDnsPeeringsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
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
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateServiceConnectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecurringTimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartInstanceRequest
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
      
      class TimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Accelerator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_type, as: 'acceleratorType'
          property :state, as: 'state'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DatafusionV1::AuditLogConfig, decorator: Google::Apis::DatafusionV1::AuditLogConfig::Representation
      
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
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DatafusionV1::Expr, decorator: Google::Apis::DatafusionV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CryptoKeyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_reference, as: 'keyReference'
        end
      end
      
      class DnsPeering
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :domain, as: 'domain'
          property :name, as: 'name'
          property :target_network, as: 'targetNetwork'
          property :target_project, as: 'targetProject'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EventPublishConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :topic, as: 'topic'
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
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::DatafusionV1::Accelerator, decorator: Google::Apis::DatafusionV1::Accelerator::Representation
      
          property :api_endpoint, as: 'apiEndpoint'
          collection :available_version, as: 'availableVersion', class: Google::Apis::DatafusionV1::Version, decorator: Google::Apis::DatafusionV1::Version::Representation
      
          property :create_time, as: 'createTime'
          property :crypto_key_config, as: 'cryptoKeyConfig', class: Google::Apis::DatafusionV1::CryptoKeyConfig, decorator: Google::Apis::DatafusionV1::CryptoKeyConfig::Representation
      
          property :dataplex_data_lineage_integration_enabled, as: 'dataplexDataLineageIntegrationEnabled'
          property :dataproc_service_account, as: 'dataprocServiceAccount'
          property :description, as: 'description'
          collection :disabled_reason, as: 'disabledReason'
          property :display_name, as: 'displayName'
          property :enable_rbac, as: 'enableRbac'
          property :enable_stackdriver_logging, as: 'enableStackdriverLogging'
          property :enable_stackdriver_monitoring, as: 'enableStackdriverMonitoring'
          property :enable_zone_separation, as: 'enableZoneSeparation'
          property :event_publish_config, as: 'eventPublishConfig', class: Google::Apis::DatafusionV1::EventPublishConfig, decorator: Google::Apis::DatafusionV1::EventPublishConfig::Representation
      
          property :gcs_bucket, as: 'gcsBucket'
          hash :labels, as: 'labels'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::DatafusionV1::LoggingConfig, decorator: Google::Apis::DatafusionV1::LoggingConfig::Representation
      
          collection :maintenance_events, as: 'maintenanceEvents', class: Google::Apis::DatafusionV1::MaintenanceEvent, decorator: Google::Apis::DatafusionV1::MaintenanceEvent::Representation
      
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::DatafusionV1::MaintenancePolicy, decorator: Google::Apis::DatafusionV1::MaintenancePolicy::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::DatafusionV1::NetworkConfig, decorator: Google::Apis::DatafusionV1::NetworkConfig::Representation
      
          hash :options, as: 'options'
          property :p4_service_account, as: 'p4ServiceAccount'
          property :patch_revision, as: 'patchRevision'
          property :private_instance, as: 'privateInstance'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :service_account, as: 'serviceAccount'
          property :service_endpoint, as: 'serviceEndpoint'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          hash :tags, as: 'tags'
          property :tenant_project_id, as: 'tenantProjectId'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :version, as: 'version'
          property :workforce_identity_service_endpoint, as: 'workforceIdentityServiceEndpoint'
          property :zone, as: 'zone'
        end
      end
      
      class ListAvailableVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_versions, as: 'availableVersions', class: Google::Apis::DatafusionV1::Version, decorator: Google::Apis::DatafusionV1::Version::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::DatafusionV1::Version, decorator: Google::Apis::DatafusionV1::Version::Representation
      
        end
      end
      
      class ListDnsPeeringsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_peerings, as: 'dnsPeerings', class: Google::Apis::DatafusionV1::DnsPeering, decorator: Google::Apis::DatafusionV1::DnsPeering::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::DatafusionV1::Instance, decorator: Google::Apis::DatafusionV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DatafusionV1::Location, decorator: Google::Apis::DatafusionV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DatafusionV1::Operation, decorator: Google::Apis::DatafusionV1::Operation::Representation
      
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
      
      class LoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_cloud_logging_disabled, as: 'instanceCloudLoggingDisabled'
        end
      end
      
      class MaintenanceEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_exclusion_window, as: 'maintenanceExclusionWindow', class: Google::Apis::DatafusionV1::TimeWindow, decorator: Google::Apis::DatafusionV1::TimeWindow::Representation
      
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::DatafusionV1::MaintenanceWindow, decorator: Google::Apis::DatafusionV1::MaintenanceWindow::Representation
      
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recurring_time_window, as: 'recurringTimeWindow', class: Google::Apis::DatafusionV1::RecurringTimeWindow, decorator: Google::Apis::DatafusionV1::RecurringTimeWindow::Representation
      
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_type, as: 'connectionType'
          property :ip_allocation, as: 'ipAllocation'
          property :network, as: 'network'
          property :private_service_connect_config, as: 'privateServiceConnectConfig', class: Google::Apis::DatafusionV1::PrivateServiceConnectConfig, decorator: Google::Apis::DatafusionV1::PrivateServiceConnectConfig::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DatafusionV1::Status, decorator: Google::Apis::DatafusionV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_status, as: 'additionalStatus'
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DatafusionV1::AuditConfig, decorator: Google::Apis::DatafusionV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DatafusionV1::Binding, decorator: Google::Apis::DatafusionV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PrivateServiceConnectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_unreachable_cidr_block, as: 'effectiveUnreachableCidrBlock'
          property :network_attachment, as: 'networkAttachment'
          property :unreachable_cidr_block, as: 'unreachableCidrBlock'
        end
      end
      
      class RecurringTimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recurrence, as: 'recurrence'
          property :window, as: 'window', class: Google::Apis::DatafusionV1::TimeWindow, decorator: Google::Apis::DatafusionV1::TimeWindow::Representation
      
        end
      end
      
      class RestartInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DatafusionV1::Policy, decorator: Google::Apis::DatafusionV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
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
      
      class TimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_features, as: 'availableFeatures'
          property :default_version, as: 'defaultVersion'
          property :type, as: 'type'
          property :version_number, as: 'versionNumber'
        end
      end
    end
  end
end
