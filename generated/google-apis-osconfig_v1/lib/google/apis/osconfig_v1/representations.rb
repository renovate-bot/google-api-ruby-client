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
    module OsconfigV1
      
      class AptSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CvsSv3
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelPatchJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecStepConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutePatchJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedOrPercent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV1OsPolicyAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2betaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Inventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryOsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySoftwarePackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryVersionedPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryWindowsApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryWindowsQuickFixEngineeringPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryWindowsUpdatePackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryWindowsUpdatePackageWindowsUpdateCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryZypperPatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOsPolicyAssignmentReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOsPolicyAssignmentRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOsPolicyAssignmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPatchDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPatchJobInstanceDetailsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPatchJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVulnerabilityReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonthlySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentInstanceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentInstanceFilterInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentLabelSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReportOsPolicyCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentRollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyInventoryFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceExecResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceExecResourceExec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileGcs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileRemote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceApt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceDeb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceGooGet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceMsi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceRpm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceYum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceZypper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceAptRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceGooRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceYumRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceZypperRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OneTimeSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchInstanceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchInstanceFilterGroupLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchJobInstanceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchJobInstanceDetailsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchRollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PausePatchDeploymentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectFeatureSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecurringSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumePatchDeploymentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReportVulnerability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReportVulnerabilityDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReportVulnerabilityDetailsReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReportVulnerabilityItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeekDayOfMonth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsUpdateSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YumSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZypperSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AptSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excludes, as: 'excludes'
          collection :exclusive_packages, as: 'exclusivePackages'
          property :type, as: 'type'
        end
      end
      
      class CvsSv3
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_complexity, as: 'attackComplexity'
          property :attack_vector, as: 'attackVector'
          property :availability_impact, as: 'availabilityImpact'
          property :base_score, as: 'baseScore'
          property :confidentiality_impact, as: 'confidentialityImpact'
          property :exploitability_score, as: 'exploitabilityScore'
          property :impact_score, as: 'impactScore'
          property :integrity_impact, as: 'integrityImpact'
          property :privileges_required, as: 'privilegesRequired'
          property :scope, as: 'scope'
          property :user_interaction, as: 'userInteraction'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelPatchJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExecStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linux_exec_step_config, as: 'linuxExecStepConfig', class: Google::Apis::OsconfigV1::ExecStepConfig, decorator: Google::Apis::OsconfigV1::ExecStepConfig::Representation
      
          property :windows_exec_step_config, as: 'windowsExecStepConfig', class: Google::Apis::OsconfigV1::ExecStepConfig, decorator: Google::Apis::OsconfigV1::ExecStepConfig::Representation
      
        end
      end
      
      class ExecStepConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_success_codes, as: 'allowedSuccessCodes'
          property :gcs_object, as: 'gcsObject', class: Google::Apis::OsconfigV1::GcsObject, decorator: Google::Apis::OsconfigV1::GcsObject::Representation
      
          property :interpreter, as: 'interpreter'
          property :local_path, as: 'localPath'
        end
      end
      
      class ExecutePatchJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :dry_run, as: 'dryRun'
          property :duration, as: 'duration'
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1::PatchInstanceFilter::Representation
      
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1::PatchConfig, decorator: Google::Apis::OsconfigV1::PatchConfig::Representation
      
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1::PatchRollout, decorator: Google::Apis::OsconfigV1::PatchRollout::Representation
      
        end
      end
      
      class FixedOrPercent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed, as: 'fixed'
          property :percent, as: 'percent'
        end
      end
      
      class GcsObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation_number, :numeric_string => true, as: 'generationNumber'
          property :object, as: 'object'
        end
      end
      
      class GooSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudOsconfigV1OsPolicyAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_method, as: 'apiMethod'
          property :os_policy_assignment, as: 'osPolicyAssignment'
          property :rollout_start_time, as: 'rolloutStartTime'
          property :rollout_state, as: 'rolloutState'
          property :rollout_update_time, as: 'rolloutUpdateTime'
        end
      end
      
      class GoogleCloudOsconfigV2OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudOsconfigV2betaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Inventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :items, as: 'items', class: Google::Apis::OsconfigV1::InventoryItem, decorator: Google::Apis::OsconfigV1::InventoryItem::Representation
      
          property :name, as: 'name'
          property :os_info, as: 'osInfo', class: Google::Apis::OsconfigV1::InventoryOsInfo, decorator: Google::Apis::OsconfigV1::InventoryOsInfo::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class InventoryItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_package, as: 'availablePackage', class: Google::Apis::OsconfigV1::InventorySoftwarePackage, decorator: Google::Apis::OsconfigV1::InventorySoftwarePackage::Representation
      
          property :create_time, as: 'createTime'
          property :id, as: 'id'
          property :installed_package, as: 'installedPackage', class: Google::Apis::OsconfigV1::InventorySoftwarePackage, decorator: Google::Apis::OsconfigV1::InventorySoftwarePackage::Representation
      
          property :origin_type, as: 'originType'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InventoryOsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :hostname, as: 'hostname'
          property :kernel_release, as: 'kernelRelease'
          property :kernel_version, as: 'kernelVersion'
          property :long_name, as: 'longName'
          property :osconfig_agent_version, as: 'osconfigAgentVersion'
          property :short_name, as: 'shortName'
          property :version, as: 'version'
        end
      end
      
      class InventorySoftwarePackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt_package, as: 'aptPackage', class: Google::Apis::OsconfigV1::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1::InventoryVersionedPackage::Representation
      
          property :cos_package, as: 'cosPackage', class: Google::Apis::OsconfigV1::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1::InventoryVersionedPackage::Representation
      
          property :googet_package, as: 'googetPackage', class: Google::Apis::OsconfigV1::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1::InventoryVersionedPackage::Representation
      
          property :qfe_package, as: 'qfePackage', class: Google::Apis::OsconfigV1::InventoryWindowsQuickFixEngineeringPackage, decorator: Google::Apis::OsconfigV1::InventoryWindowsQuickFixEngineeringPackage::Representation
      
          property :windows_application, as: 'windowsApplication', class: Google::Apis::OsconfigV1::InventoryWindowsApplication, decorator: Google::Apis::OsconfigV1::InventoryWindowsApplication::Representation
      
          property :wua_package, as: 'wuaPackage', class: Google::Apis::OsconfigV1::InventoryWindowsUpdatePackage, decorator: Google::Apis::OsconfigV1::InventoryWindowsUpdatePackage::Representation
      
          property :yum_package, as: 'yumPackage', class: Google::Apis::OsconfigV1::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1::InventoryVersionedPackage::Representation
      
          property :zypper_package, as: 'zypperPackage', class: Google::Apis::OsconfigV1::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1::InventoryVersionedPackage::Representation
      
          property :zypper_patch, as: 'zypperPatch', class: Google::Apis::OsconfigV1::InventoryZypperPatch, decorator: Google::Apis::OsconfigV1::InventoryZypperPatch::Representation
      
        end
      end
      
      class InventoryVersionedPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :package_name, as: 'packageName'
          property :version, as: 'version'
        end
      end
      
      class InventoryWindowsApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :display_version, as: 'displayVersion'
          property :help_link, as: 'helpLink'
          property :install_date, as: 'installDate', class: Google::Apis::OsconfigV1::Date, decorator: Google::Apis::OsconfigV1::Date::Representation
      
          property :publisher, as: 'publisher'
        end
      end
      
      class InventoryWindowsQuickFixEngineeringPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caption, as: 'caption'
          property :description, as: 'description'
          property :hot_fix_id, as: 'hotFixId'
          property :install_time, as: 'installTime'
        end
      end
      
      class InventoryWindowsUpdatePackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::OsconfigV1::InventoryWindowsUpdatePackageWindowsUpdateCategory, decorator: Google::Apis::OsconfigV1::InventoryWindowsUpdatePackageWindowsUpdateCategory::Representation
      
          property :description, as: 'description'
          collection :kb_article_ids, as: 'kbArticleIds'
          property :last_deployment_change_time, as: 'lastDeploymentChangeTime'
          collection :more_info_urls, as: 'moreInfoUrls'
          property :revision_number, as: 'revisionNumber'
          property :support_url, as: 'supportUrl'
          property :title, as: 'title'
          property :update_id, as: 'updateId'
        end
      end
      
      class InventoryWindowsUpdatePackageWindowsUpdateCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class InventoryZypperPatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :patch_name, as: 'patchName'
          property :severity, as: 'severity'
          property :summary, as: 'summary'
        end
      end
      
      class ListInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventories, as: 'inventories', class: Google::Apis::OsconfigV1::Inventory, decorator: Google::Apis::OsconfigV1::Inventory::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOsPolicyAssignmentReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :os_policy_assignment_reports, as: 'osPolicyAssignmentReports', class: Google::Apis::OsconfigV1::OsPolicyAssignmentReport, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentReport::Representation
      
        end
      end
      
      class ListOsPolicyAssignmentRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :os_policy_assignments, as: 'osPolicyAssignments', class: Google::Apis::OsconfigV1::OsPolicyAssignment, decorator: Google::Apis::OsconfigV1::OsPolicyAssignment::Representation
      
        end
      end
      
      class ListOsPolicyAssignmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :os_policy_assignments, as: 'osPolicyAssignments', class: Google::Apis::OsconfigV1::OsPolicyAssignment, decorator: Google::Apis::OsconfigV1::OsPolicyAssignment::Representation
      
        end
      end
      
      class ListPatchDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_deployments, as: 'patchDeployments', class: Google::Apis::OsconfigV1::PatchDeployment, decorator: Google::Apis::OsconfigV1::PatchDeployment::Representation
      
        end
      end
      
      class ListPatchJobInstanceDetailsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_job_instance_details, as: 'patchJobInstanceDetails', class: Google::Apis::OsconfigV1::PatchJobInstanceDetails, decorator: Google::Apis::OsconfigV1::PatchJobInstanceDetails::Representation
      
        end
      end
      
      class ListPatchJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_jobs, as: 'patchJobs', class: Google::Apis::OsconfigV1::PatchJob, decorator: Google::Apis::OsconfigV1::PatchJob::Representation
      
        end
      end
      
      class ListVulnerabilityReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :vulnerability_reports, as: 'vulnerabilityReports', class: Google::Apis::OsconfigV1::VulnerabilityReport, decorator: Google::Apis::OsconfigV1::VulnerabilityReport::Representation
      
        end
      end
      
      class MessageSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MonthlySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :month_day, as: 'monthDay'
          property :week_day_of_month, as: 'weekDayOfMonth', class: Google::Apis::OsconfigV1::WeekDayOfMonth, decorator: Google::Apis::OsconfigV1::WeekDayOfMonth::Representation
      
        end
      end
      
      class OsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_no_resource_group_match, as: 'allowNoResourceGroupMatch'
          property :description, as: 'description'
          property :id, as: 'id'
          property :mode, as: 'mode'
          collection :resource_groups, as: 'resourceGroups', class: Google::Apis::OsconfigV1::OsPolicyResourceGroup, decorator: Google::Apis::OsconfigV1::OsPolicyResourceGroup::Representation
      
        end
      end
      
      class OsPolicyAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline, as: 'baseline'
          property :deleted, as: 'deleted'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1::OsPolicyAssignmentInstanceFilter, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentInstanceFilter::Representation
      
          property :name, as: 'name'
          collection :os_policies, as: 'osPolicies', class: Google::Apis::OsconfigV1::OsPolicy, decorator: Google::Apis::OsconfigV1::OsPolicy::Representation
      
          property :reconciling, as: 'reconciling'
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1::OsPolicyAssignmentRollout, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentRollout::Representation
      
          property :rollout_state, as: 'rolloutState'
          property :uid, as: 'uid'
        end
      end
      
      class OsPolicyAssignmentInstanceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all, as: 'all'
          collection :exclusion_labels, as: 'exclusionLabels', class: Google::Apis::OsconfigV1::OsPolicyAssignmentLabelSet, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentLabelSet::Representation
      
          collection :inclusion_labels, as: 'inclusionLabels', class: Google::Apis::OsconfigV1::OsPolicyAssignmentLabelSet, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentLabelSet::Representation
      
          collection :inventories, as: 'inventories', class: Google::Apis::OsconfigV1::OsPolicyAssignmentInstanceFilterInventory, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentInstanceFilterInventory::Representation
      
        end
      end
      
      class OsPolicyAssignmentInstanceFilterInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class OsPolicyAssignmentLabelSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class OsPolicyAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_method, as: 'apiMethod'
          property :os_policy_assignment, as: 'osPolicyAssignment'
          property :rollout_start_time, as: 'rolloutStartTime'
          property :rollout_state, as: 'rolloutState'
          property :rollout_update_time, as: 'rolloutUpdateTime'
        end
      end
      
      class OsPolicyAssignmentReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
          property :last_run_id, as: 'lastRunId'
          property :name, as: 'name'
          property :os_policy_assignment, as: 'osPolicyAssignment'
          collection :os_policy_compliances, as: 'osPolicyCompliances', class: Google::Apis::OsconfigV1::OsPolicyAssignmentReportOsPolicyCompliance, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentReportOsPolicyCompliance::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class OsPolicyAssignmentReportOsPolicyCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_state, as: 'complianceState'
          property :compliance_state_reason, as: 'complianceStateReason'
          property :os_policy_id, as: 'osPolicyId'
          collection :os_policy_resource_compliances, as: 'osPolicyResourceCompliances', class: Google::Apis::OsconfigV1::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance::Representation
      
        end
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_state, as: 'complianceState'
          property :compliance_state_reason, as: 'complianceStateReason'
          collection :config_steps, as: 'configSteps', class: Google::Apis::OsconfigV1::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep::Representation
      
          property :exec_resource_output, as: 'execResourceOutput', class: Google::Apis::OsconfigV1::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput, decorator: Google::Apis::OsconfigV1::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput::Representation
      
          property :os_policy_resource_id, as: 'osPolicyResourceId'
        end
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforcement_output, :base64 => true, as: 'enforcementOutput'
        end
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :type, as: 'type'
        end
      end
      
      class OsPolicyAssignmentRollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disruption_budget, as: 'disruptionBudget', class: Google::Apis::OsconfigV1::FixedOrPercent, decorator: Google::Apis::OsconfigV1::FixedOrPercent::Representation
      
          property :min_wait_duration, as: 'minWaitDuration'
        end
      end
      
      class OsPolicyInventoryFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class OsPolicyResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exec, as: 'exec', class: Google::Apis::OsconfigV1::OsPolicyResourceExecResource, decorator: Google::Apis::OsconfigV1::OsPolicyResourceExecResource::Representation
      
          property :file, as: 'file', class: Google::Apis::OsconfigV1::OsPolicyResourceFileResource, decorator: Google::Apis::OsconfigV1::OsPolicyResourceFileResource::Representation
      
          property :id, as: 'id'
          property :pkg, as: 'pkg', class: Google::Apis::OsconfigV1::OsPolicyResourcePackageResource, decorator: Google::Apis::OsconfigV1::OsPolicyResourcePackageResource::Representation
      
          property :repository, as: 'repository', class: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResource, decorator: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResource::Representation
      
        end
      end
      
      class OsPolicyResourceExecResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforce, as: 'enforce', class: Google::Apis::OsconfigV1::OsPolicyResourceExecResourceExec, decorator: Google::Apis::OsconfigV1::OsPolicyResourceExecResourceExec::Representation
      
          property :validate, as: 'validate', class: Google::Apis::OsconfigV1::OsPolicyResourceExecResourceExec, decorator: Google::Apis::OsconfigV1::OsPolicyResourceExecResourceExec::Representation
      
        end
      end
      
      class OsPolicyResourceExecResourceExec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :file, as: 'file', class: Google::Apis::OsconfigV1::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1::OsPolicyResourceFile::Representation
      
          property :interpreter, as: 'interpreter'
          property :output_file_path, as: 'outputFilePath'
          property :script, as: 'script'
        end
      end
      
      class OsPolicyResourceFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_insecure, as: 'allowInsecure'
          property :gcs, as: 'gcs', class: Google::Apis::OsconfigV1::OsPolicyResourceFileGcs, decorator: Google::Apis::OsconfigV1::OsPolicyResourceFileGcs::Representation
      
          property :local_path, as: 'localPath'
          property :remote, as: 'remote', class: Google::Apis::OsconfigV1::OsPolicyResourceFileRemote, decorator: Google::Apis::OsconfigV1::OsPolicyResourceFileRemote::Representation
      
        end
      end
      
      class OsPolicyResourceFileGcs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class OsPolicyResourceFileRemote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256_checksum, as: 'sha256Checksum'
          property :uri, as: 'uri'
        end
      end
      
      class OsPolicyResourceFileResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :file, as: 'file', class: Google::Apis::OsconfigV1::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1::OsPolicyResourceFile::Representation
      
          property :path, as: 'path'
          property :permissions, as: 'permissions'
          property :state, as: 'state'
        end
      end
      
      class OsPolicyResourceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_filters, as: 'inventoryFilters', class: Google::Apis::OsconfigV1::OsPolicyInventoryFilter, decorator: Google::Apis::OsconfigV1::OsPolicyInventoryFilter::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::OsconfigV1::OsPolicyResource, decorator: Google::Apis::OsconfigV1::OsPolicyResource::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceApt, decorator: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceApt::Representation
      
          property :deb, as: 'deb', class: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceDeb, decorator: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceDeb::Representation
      
          property :desired_state, as: 'desiredState'
          property :googet, as: 'googet', class: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceGooGet, decorator: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceGooGet::Representation
      
          property :msi, as: 'msi', class: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceMsi, decorator: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceMsi::Representation
      
          property :rpm, as: 'rpm', class: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceRpm, decorator: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceRpm::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceYum, decorator: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceYum::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceZypper, decorator: Google::Apis::OsconfigV1::OsPolicyResourcePackageResourceZypper::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceApt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceDeb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pull_deps, as: 'pullDeps'
          property :source, as: 'source', class: Google::Apis::OsconfigV1::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceGooGet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceMsi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :properties, as: 'properties'
          property :source, as: 'source', class: Google::Apis::OsconfigV1::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceRpm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pull_deps, as: 'pullDeps'
          property :source, as: 'source', class: Google::Apis::OsconfigV1::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceYum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceZypper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourceRepositoryResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResourceAptRepository, decorator: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResourceAptRepository::Representation
      
          property :goo, as: 'goo', class: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResourceGooRepository, decorator: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResourceGooRepository::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResourceYumRepository, decorator: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResourceYumRepository::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResourceZypperRepository, decorator: Google::Apis::OsconfigV1::OsPolicyResourceRepositoryResourceZypperRepository::Representation
      
        end
      end
      
      class OsPolicyResourceRepositoryResourceAptRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_type, as: 'archiveType'
          collection :components, as: 'components'
          property :distribution, as: 'distribution'
          property :gpg_key, as: 'gpgKey'
          property :uri, as: 'uri'
        end
      end
      
      class OsPolicyResourceRepositoryResourceGooRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      class OsPolicyResourceRepositoryResourceYumRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :display_name, as: 'displayName'
          collection :gpg_keys, as: 'gpgKeys'
          property :id, as: 'id'
        end
      end
      
      class OsPolicyResourceRepositoryResourceZypperRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :display_name, as: 'displayName'
          collection :gpg_keys, as: 'gpgKeys'
          property :id, as: 'id'
        end
      end
      
      class OneTimeSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execute_time, as: 'executeTime'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::OsconfigV1::Status, decorator: Google::Apis::OsconfigV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PatchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV1::AptSettings, decorator: Google::Apis::OsconfigV1::AptSettings::Representation
      
          property :goo, as: 'goo', class: Google::Apis::OsconfigV1::GooSettings, decorator: Google::Apis::OsconfigV1::GooSettings::Representation
      
          property :mig_instances_allowed, as: 'migInstancesAllowed'
          property :post_step, as: 'postStep', class: Google::Apis::OsconfigV1::ExecStep, decorator: Google::Apis::OsconfigV1::ExecStep::Representation
      
          property :pre_step, as: 'preStep', class: Google::Apis::OsconfigV1::ExecStep, decorator: Google::Apis::OsconfigV1::ExecStep::Representation
      
          property :reboot_config, as: 'rebootConfig'
          property :windows_update, as: 'windowsUpdate', class: Google::Apis::OsconfigV1::WindowsUpdateSettings, decorator: Google::Apis::OsconfigV1::WindowsUpdateSettings::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV1::YumSettings, decorator: Google::Apis::OsconfigV1::YumSettings::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV1::ZypperSettings, decorator: Google::Apis::OsconfigV1::ZypperSettings::Representation
      
        end
      end
      
      class PatchDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :duration, as: 'duration'
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1::PatchInstanceFilter::Representation
      
          property :last_execute_time, as: 'lastExecuteTime'
          property :name, as: 'name'
          property :one_time_schedule, as: 'oneTimeSchedule', class: Google::Apis::OsconfigV1::OneTimeSchedule, decorator: Google::Apis::OsconfigV1::OneTimeSchedule::Representation
      
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1::PatchConfig, decorator: Google::Apis::OsconfigV1::PatchConfig::Representation
      
          property :recurring_schedule, as: 'recurringSchedule', class: Google::Apis::OsconfigV1::RecurringSchedule, decorator: Google::Apis::OsconfigV1::RecurringSchedule::Representation
      
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1::PatchRollout, decorator: Google::Apis::OsconfigV1::PatchRollout::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class PatchInstanceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all, as: 'all'
          collection :group_labels, as: 'groupLabels', class: Google::Apis::OsconfigV1::PatchInstanceFilterGroupLabel, decorator: Google::Apis::OsconfigV1::PatchInstanceFilterGroupLabel::Representation
      
          collection :instance_name_prefixes, as: 'instanceNamePrefixes'
          collection :instances, as: 'instances'
          collection :zones, as: 'zones'
        end
      end
      
      class PatchInstanceFilterGroupLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class PatchJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :dry_run, as: 'dryRun'
          property :duration, as: 'duration'
          property :error_message, as: 'errorMessage'
          property :instance_details_summary, as: 'instanceDetailsSummary', class: Google::Apis::OsconfigV1::PatchJobInstanceDetailsSummary, decorator: Google::Apis::OsconfigV1::PatchJobInstanceDetailsSummary::Representation
      
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1::PatchInstanceFilter::Representation
      
          property :name, as: 'name'
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1::PatchConfig, decorator: Google::Apis::OsconfigV1::PatchConfig::Representation
      
          property :patch_deployment, as: 'patchDeployment'
          property :percent_complete, as: 'percentComplete'
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1::PatchRollout, decorator: Google::Apis::OsconfigV1::PatchRollout::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class PatchJobInstanceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attempt_count, :numeric_string => true, as: 'attemptCount'
          property :failure_reason, as: 'failureReason'
          property :instance_system_id, as: 'instanceSystemId'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class PatchJobInstanceDetailsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acked_instance_count, :numeric_string => true, as: 'ackedInstanceCount'
          property :applying_patches_instance_count, :numeric_string => true, as: 'applyingPatchesInstanceCount'
          property :downloading_patches_instance_count, :numeric_string => true, as: 'downloadingPatchesInstanceCount'
          property :failed_instance_count, :numeric_string => true, as: 'failedInstanceCount'
          property :inactive_instance_count, :numeric_string => true, as: 'inactiveInstanceCount'
          property :no_agent_detected_instance_count, :numeric_string => true, as: 'noAgentDetectedInstanceCount'
          property :notified_instance_count, :numeric_string => true, as: 'notifiedInstanceCount'
          property :pending_instance_count, :numeric_string => true, as: 'pendingInstanceCount'
          property :post_patch_step_instance_count, :numeric_string => true, as: 'postPatchStepInstanceCount'
          property :pre_patch_step_instance_count, :numeric_string => true, as: 'prePatchStepInstanceCount'
          property :rebooting_instance_count, :numeric_string => true, as: 'rebootingInstanceCount'
          property :started_instance_count, :numeric_string => true, as: 'startedInstanceCount'
          property :succeeded_instance_count, :numeric_string => true, as: 'succeededInstanceCount'
          property :succeeded_reboot_required_instance_count, :numeric_string => true, as: 'succeededRebootRequiredInstanceCount'
          property :timed_out_instance_count, :numeric_string => true, as: 'timedOutInstanceCount'
        end
      end
      
      class PatchRollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disruption_budget, as: 'disruptionBudget', class: Google::Apis::OsconfigV1::FixedOrPercent, decorator: Google::Apis::OsconfigV1::FixedOrPercent::Representation
      
          property :mode, as: 'mode'
        end
      end
      
      class PausePatchDeploymentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ProjectFeatureSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :patch_and_config_feature_set, as: 'patchAndConfigFeatureSet'
        end
      end
      
      class RecurringSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :frequency, as: 'frequency'
          property :last_execute_time, as: 'lastExecuteTime'
          property :monthly, as: 'monthly', class: Google::Apis::OsconfigV1::MonthlySchedule, decorator: Google::Apis::OsconfigV1::MonthlySchedule::Representation
      
          property :next_execute_time, as: 'nextExecuteTime'
          property :start_time, as: 'startTime'
          property :time_of_day, as: 'timeOfDay', class: Google::Apis::OsconfigV1::TimeOfDay, decorator: Google::Apis::OsconfigV1::TimeOfDay::Representation
      
          property :time_zone, as: 'timeZone', class: Google::Apis::OsconfigV1::TimeZone, decorator: Google::Apis::OsconfigV1::TimeZone::Representation
      
          property :weekly, as: 'weekly', class: Google::Apis::OsconfigV1::WeeklySchedule, decorator: Google::Apis::OsconfigV1::WeeklySchedule::Representation
      
        end
      end
      
      class ResumePatchDeploymentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class StatusProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_code, as: 'canonicalCode'
          property :code, as: 'code'
          property :message, as: 'message'
          property :message_set, as: 'messageSet', class: Google::Apis::OsconfigV1::MessageSet, decorator: Google::Apis::OsconfigV1::MessageSet::Representation
      
          property :space, as: 'space'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class VulnerabilityReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          collection :vulnerabilities, as: 'vulnerabilities', class: Google::Apis::OsconfigV1::VulnerabilityReportVulnerability, decorator: Google::Apis::OsconfigV1::VulnerabilityReportVulnerability::Representation
      
        end
      end
      
      class VulnerabilityReportVulnerability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_inventory_item_ids, as: 'availableInventoryItemIds'
          property :create_time, as: 'createTime'
          property :details, as: 'details', class: Google::Apis::OsconfigV1::VulnerabilityReportVulnerabilityDetails, decorator: Google::Apis::OsconfigV1::VulnerabilityReportVulnerabilityDetails::Representation
      
          collection :installed_inventory_item_ids, as: 'installedInventoryItemIds'
          collection :items, as: 'items', class: Google::Apis::OsconfigV1::VulnerabilityReportVulnerabilityItem, decorator: Google::Apis::OsconfigV1::VulnerabilityReportVulnerabilityItem::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class VulnerabilityReportVulnerabilityDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve'
          property :cvss_v2_score, as: 'cvssV2Score'
          property :cvss_v3, as: 'cvssV3', class: Google::Apis::OsconfigV1::CvsSv3, decorator: Google::Apis::OsconfigV1::CvsSv3::Representation
      
          property :description, as: 'description'
          collection :references, as: 'references', class: Google::Apis::OsconfigV1::VulnerabilityReportVulnerabilityDetailsReference, decorator: Google::Apis::OsconfigV1::VulnerabilityReportVulnerabilityDetailsReference::Representation
      
          property :severity, as: 'severity'
        end
      end
      
      class VulnerabilityReportVulnerabilityDetailsReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
          property :url, as: 'url'
        end
      end
      
      class VulnerabilityReportVulnerabilityItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_inventory_item_id, as: 'availableInventoryItemId'
          property :fixed_cpe_uri, as: 'fixedCpeUri'
          property :installed_inventory_item_id, as: 'installedInventoryItemId'
          property :upstream_fix, as: 'upstreamFix'
        end
      end
      
      class WeekDayOfMonth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :day_offset, as: 'dayOffset'
          property :week_ordinal, as: 'weekOrdinal'
        end
      end
      
      class WeeklySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
        end
      end
      
      class WindowsUpdateSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :classifications, as: 'classifications'
          collection :excludes, as: 'excludes'
          collection :exclusive_patches, as: 'exclusivePatches'
        end
      end
      
      class YumSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excludes, as: 'excludes'
          collection :exclusive_packages, as: 'exclusivePackages'
          property :minimal, as: 'minimal'
          property :security, as: 'security'
        end
      end
      
      class ZypperSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          collection :excludes, as: 'excludes'
          collection :exclusive_patches, as: 'exclusivePatches'
          collection :severities, as: 'severities'
          property :with_optional, as: 'withOptional'
          property :with_update, as: 'withUpdate'
        end
      end
    end
  end
end
