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
    module ComposerV1
      
      # The policy for airflow metadata database retention.
      class AirflowMetadataRetentionPolicyConfig
        include Google::Apis::Core::Hashable
      
        # Optional. How many days data should be retained for.
        # Corresponds to the JSON property `retentionDays`
        # @return [Fixnum]
        attr_accessor :retention_days
      
        # Optional. Retention can be either enabled or disabled.
        # Corresponds to the JSON property `retentionMode`
        # @return [String]
        attr_accessor :retention_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retention_days = args[:retention_days] if args.key?(:retention_days)
          @retention_mode = args[:retention_mode] if args.key?(:retention_mode)
        end
      end
      
      # Allowed IP range with user-provided description.
      class AllowedIpRange
        include Google::Apis::Core::Hashable
      
        # Optional. User-provided description. It must contain at most 300 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # IP address or range, defined using CIDR notation, of requests that this rule
        # applies to. Examples: `192.168.1.1` or `192.168.0.0/16` or `2001:db8::/32` or `
        # 2001:0db8:0000:0042:0000:8a2e:0370:7334`. IP range prefixes should be properly
        # truncated. For example, `1.2.3.4/24` should be truncated to `1.2.3.0/24`.
        # Similarly, for IPv6, `2001:db8::1/32` should be truncated to `2001:db8::/32`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request to check whether image upgrade will succeed.
      class CheckUpgradeRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The version of the software running in the environment. This
        # encapsulates both the version of Cloud Composer functionality and the version
        # of Apache Airflow. It must match the regular expression `composer-([0-9]+(\.[0-
        # 9]+\.[0-9]+(-preview\.[0-9]+)?)?|latest)-airflow-([0-9]+(\.[0-9]+(\.[0-9]+)?)?)
        # `. When used as input, the server also checks if the provided version is
        # supported and denies the request for an unsupported version. The Cloud
        # Composer portion of the image version is a full [semantic version](https://
        # semver.org), or an alias in the form of major version number or `latest`. When
        # an alias is provided, the server replaces it with the current Cloud Composer
        # version that satisfies the alias. The Apache Airflow portion of the image
        # version is a full semantic version that points to one of the supported Apache
        # Airflow versions, or an alias in the form of only major or major.minor
        # versions specified. When an alias is provided, the server replaces it with the
        # latest Apache Airflow version that satisfies the alias and is supported in the
        # given Cloud Composer version. In all cases, the resolved image version is
        # stored in the same field. See also [version list](/composer/docs/concepts/
        # versioning/composer-versions) and [versioning overview](/composer/docs/
        # concepts/versioning/composer-versioning-overview).
        # Corresponds to the JSON property `imageVersion`
        # @return [String]
        attr_accessor :image_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_version = args[:image_version] if args.key?(:image_version)
        end
      end
      
      # Message containing information about the result of an upgrade check operation.
      class CheckUpgradeResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Url for a docker build log of an upgraded image.
        # Corresponds to the JSON property `buildLogUri`
        # @return [String]
        attr_accessor :build_log_uri
      
        # Output only. Whether build has succeeded or failed on modules conflicts.
        # Corresponds to the JSON property `containsPypiModulesConflict`
        # @return [String]
        attr_accessor :contains_pypi_modules_conflict
      
        # Composer image for which the build was happening.
        # Corresponds to the JSON property `imageVersion`
        # @return [String]
        attr_accessor :image_version
      
        # Output only. Extract from a docker image build log containing information
        # about pypi modules conflicts.
        # Corresponds to the JSON property `pypiConflictBuildLogExtract`
        # @return [String]
        attr_accessor :pypi_conflict_build_log_extract
      
        # Pypi dependencies specified in the environment configuration, at the time when
        # the build was triggered.
        # Corresponds to the JSON property `pypiDependencies`
        # @return [Hash<String,String>]
        attr_accessor :pypi_dependencies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_log_uri = args[:build_log_uri] if args.key?(:build_log_uri)
          @contains_pypi_modules_conflict = args[:contains_pypi_modules_conflict] if args.key?(:contains_pypi_modules_conflict)
          @image_version = args[:image_version] if args.key?(:image_version)
          @pypi_conflict_build_log_extract = args[:pypi_conflict_build_log_extract] if args.key?(:pypi_conflict_build_log_extract)
          @pypi_dependencies = args[:pypi_dependencies] if args.key?(:pypi_dependencies)
        end
      end
      
      # CIDR block with an optional name.
      class CidrBlock
        include Google::Apis::Core::Hashable
      
        # CIDR block that must be specified in CIDR notation.
        # Corresponds to the JSON property `cidrBlock`
        # @return [String]
        attr_accessor :cidr_block
      
        # User-defined name that identifies the CIDR block.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cidr_block = args[:cidr_block] if args.key?(:cidr_block)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Configuration for Cloud Data Lineage integration.
      class CloudDataLineageIntegration
        include Google::Apis::Core::Hashable
      
        # Optional. Whether or not Cloud Data Lineage integration is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Information about a single workload.
      class ComposerWorkload
        include Google::Apis::Core::Hashable
      
        # Name of a workload.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Workload status.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::ComposerV1::ComposerWorkloadStatus]
        attr_accessor :status
      
        # Type of a workload.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Workload status.
      class ComposerWorkloadStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Detailed message of the status.
        # Corresponds to the JSON property `detailedStatusMessage`
        # @return [String]
        attr_accessor :detailed_status_message
      
        # Output only. Workload state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Text to provide more descriptive status.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detailed_status_message = args[:detailed_status_message] if args.key?(:detailed_status_message)
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
        end
      end
      
      # Configuration for resources used by Airflow DAG processors. This field is
      # supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-
      # build.* and newer.
      class DagProcessorResource
        include Google::Apis::Core::Hashable
      
        # Optional. The number of DAG processors. If not provided or set to 0, a single
        # DAG processor instance will be created.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Optional. CPU request and limit for a single Airflow DAG processor replica.
        # Corresponds to the JSON property `cpu`
        # @return [Float]
        attr_accessor :cpu
      
        # Optional. Memory (GB) request and limit for a single Airflow DAG processor
        # replica.
        # Corresponds to the JSON property `memoryGb`
        # @return [Float]
        attr_accessor :memory_gb
      
        # Optional. Storage (GB) request and limit for a single Airflow DAG processor
        # replica.
        # Corresponds to the JSON property `storageGb`
        # @return [Float]
        attr_accessor :storage_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @cpu = args[:cpu] if args.key?(:cpu)
          @memory_gb = args[:memory_gb] if args.key?(:memory_gb)
          @storage_gb = args[:storage_gb] if args.key?(:storage_gb)
        end
      end
      
      # The configuration setting for Airflow database data retention mechanism.
      class DataRetentionConfig
        include Google::Apis::Core::Hashable
      
        # The policy for airflow metadata database retention.
        # Corresponds to the JSON property `airflowMetadataRetentionConfig`
        # @return [Google::Apis::ComposerV1::AirflowMetadataRetentionPolicyConfig]
        attr_accessor :airflow_metadata_retention_config
      
        # The configuration setting for Task Logs.
        # Corresponds to the JSON property `taskLogsRetentionConfig`
        # @return [Google::Apis::ComposerV1::TaskLogsRetentionConfig]
        attr_accessor :task_logs_retention_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airflow_metadata_retention_config = args[:airflow_metadata_retention_config] if args.key?(:airflow_metadata_retention_config)
          @task_logs_retention_config = args[:task_logs_retention_config] if args.key?(:task_logs_retention_config)
        end
      end
      
      # The configuration of Cloud SQL instance that is used by the Apache Airflow
      # software.
      class DatabaseConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud SQL machine type used by Airflow database. It has to be one of:
        # db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If
        # not specified, db-n1-standard-2 will be used. Supported for Cloud Composer
        # environments in versions composer-1.*.*-airflow-*.*.*.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. The Compute Engine zone where the Airflow database is created. If
        # zone is provided, it must be in the region selected for the environment. If
        # zone is not provided, a zone is automatically selected. The zone can only be
        # set during environment creation. Supported for Cloud Composer environments in
        # versions composer-2.*.*-airflow-*.*.*.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Request to trigger database failover (only for highly resilient environments).
      class DatabaseFailoverRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for DatabaseFailoverRequest.
      class DatabaseFailoverResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The encryption options for the Cloud Composer environment and its dependencies.
      # Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.
      # *.*.
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Customer-managed Encryption Key available through Google's Key
        # Management Service. Cannot be updated. If not specified, Google-managed key
        # will be used.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # An environment for running orchestration tasks.
      class Environment
        include Google::Apis::Core::Hashable
      
        # Configuration information for an environment.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ComposerV1::EnvironmentConfig]
        attr_accessor :config
      
        # Output only. The time at which this environment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-defined labels for this environment. The labels map can contain
        # no more than 64 entries. Entries of the labels map are UTF8 strings that
        # comply with the following restrictions: * Keys must conform to regexp: \p`Ll`\
        # p`Lo``0,62` * Values must conform to regexp: [\p`Ll`\p`Lo`\p`N`_-]`0,63` *
        # Both keys and values are additionally constrained to be <= 128 bytes in size.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the environment, in the form: "projects/`
        # projectId`/locations/`locationId`/environments/`environmentId`" EnvironmentId
        # must start with a lowercase letter followed by up to 63 lowercase letters,
        # numbers, or hyphens, and cannot end with a hyphen.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # The current state of the environment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The configuration for data storage in the environment.
        # Corresponds to the JSON property `storageConfig`
        # @return [Google::Apis::ComposerV1::StorageConfig]
        attr_accessor :storage_config
      
        # Output only. The time at which this environment was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The UUID (Universally Unique IDentifier) associated with this
        # environment. This value is generated when the environment is created.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @storage_config = args[:storage_config] if args.key?(:storage_config)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # Configuration information for an environment.
      class EnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The 'bring your own identity' variant of the URI of the Apache
        # Airflow Web UI hosted within this environment, to be accessed with external
        # identities using workforce identity federation (see [Access environments with
        # workforce identity federation](/composer/docs/composer-2/access-environments-
        # with-workforce-identity-federation)).
        # Corresponds to the JSON property `airflowByoidUri`
        # @return [String]
        attr_accessor :airflow_byoid_uri
      
        # Output only. The URI of the Apache Airflow Web UI hosted within this
        # environment (see [Airflow web interface](/composer/docs/how-to/accessing/
        # airflow-web-interface)).
        # Corresponds to the JSON property `airflowUri`
        # @return [String]
        attr_accessor :airflow_uri
      
        # Output only. The Cloud Storage prefix of the DAGs for this environment.
        # Although Cloud Storage objects reside in a flat namespace, a hierarchical file
        # tree can be simulated using "/"-delimited object name prefixes. DAG objects
        # for this environment reside in a simulated directory with the given prefix.
        # Corresponds to the JSON property `dagGcsPrefix`
        # @return [String]
        attr_accessor :dag_gcs_prefix
      
        # The configuration setting for Airflow database data retention mechanism.
        # Corresponds to the JSON property `dataRetentionConfig`
        # @return [Google::Apis::ComposerV1::DataRetentionConfig]
        attr_accessor :data_retention_config
      
        # The configuration of Cloud SQL instance that is used by the Apache Airflow
        # software.
        # Corresponds to the JSON property `databaseConfig`
        # @return [Google::Apis::ComposerV1::DatabaseConfig]
        attr_accessor :database_config
      
        # The encryption options for the Cloud Composer environment and its dependencies.
        # Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.
        # *.*.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::ComposerV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Optional. The size of the Cloud Composer environment. This field is supported
        # for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and
        # newer.
        # Corresponds to the JSON property `environmentSize`
        # @return [String]
        attr_accessor :environment_size
      
        # Output only. The Kubernetes Engine cluster used to run this environment.
        # Corresponds to the JSON property `gkeCluster`
        # @return [String]
        attr_accessor :gke_cluster
      
        # The configuration settings for Cloud Composer maintenance window. The
        # following example: ``` ` "startTime":"2019-08-01T01:00:00Z" "endTime":"2019-08-
        # 01T07:00:00Z" "recurrence":"FREQ=WEEKLY;BYDAY=TU,WE" ` ``` would define a
        # maintenance window between 01 and 07 hours UTC during each Tuesday and
        # Wednesday.
        # Corresponds to the JSON property `maintenanceWindow`
        # @return [Google::Apis::ComposerV1::MaintenanceWindow]
        attr_accessor :maintenance_window
      
        # Configuration options for the master authorized networks feature. Enabled
        # master authorized networks will disallow all external traffic to access
        # Kubernetes master through HTTPS except traffic from the given CIDR blocks,
        # Google Compute Engine Public IPs and Google Prod IPs.
        # Corresponds to the JSON property `masterAuthorizedNetworksConfig`
        # @return [Google::Apis::ComposerV1::MasterAuthorizedNetworksConfig]
        attr_accessor :master_authorized_networks_config
      
        # The configuration information for the Kubernetes Engine nodes running the
        # Apache Airflow software.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ComposerV1::NodeConfig]
        attr_accessor :node_config
      
        # The number of nodes in the Kubernetes Engine cluster that will be used to run
        # this environment. This field is supported for Cloud Composer environments in
        # versions composer-1.*.*-airflow-*.*.*.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # The configuration information for configuring a Private IP Cloud Composer
        # environment.
        # Corresponds to the JSON property `privateEnvironmentConfig`
        # @return [Google::Apis::ComposerV1::PrivateEnvironmentConfig]
        attr_accessor :private_environment_config
      
        # The Recovery settings of an environment.
        # Corresponds to the JSON property `recoveryConfig`
        # @return [Google::Apis::ComposerV1::RecoveryConfig]
        attr_accessor :recovery_config
      
        # Optional. Resilience mode of the Cloud Composer Environment. This field is
        # supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.
        # *.* and newer.
        # Corresponds to the JSON property `resilienceMode`
        # @return [String]
        attr_accessor :resilience_mode
      
        # Specifies the selection and configuration of software inside the environment.
        # Corresponds to the JSON property `softwareConfig`
        # @return [Google::Apis::ComposerV1::SoftwareConfig]
        attr_accessor :software_config
      
        # The configuration settings for the Airflow web server App Engine instance.
        # Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.
        # *.*
        # Corresponds to the JSON property `webServerConfig`
        # @return [Google::Apis::ComposerV1::WebServerConfig]
        attr_accessor :web_server_config
      
        # Network-level access control policy for the Airflow web server.
        # Corresponds to the JSON property `webServerNetworkAccessControl`
        # @return [Google::Apis::ComposerV1::WebServerNetworkAccessControl]
        attr_accessor :web_server_network_access_control
      
        # The Kubernetes workloads configuration for GKE cluster associated with the
        # Cloud Composer environment. Supported for Cloud Composer environments in
        # versions composer-2.*.*-airflow-*.*.* and newer.
        # Corresponds to the JSON property `workloadsConfig`
        # @return [Google::Apis::ComposerV1::WorkloadsConfig]
        attr_accessor :workloads_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airflow_byoid_uri = args[:airflow_byoid_uri] if args.key?(:airflow_byoid_uri)
          @airflow_uri = args[:airflow_uri] if args.key?(:airflow_uri)
          @dag_gcs_prefix = args[:dag_gcs_prefix] if args.key?(:dag_gcs_prefix)
          @data_retention_config = args[:data_retention_config] if args.key?(:data_retention_config)
          @database_config = args[:database_config] if args.key?(:database_config)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @environment_size = args[:environment_size] if args.key?(:environment_size)
          @gke_cluster = args[:gke_cluster] if args.key?(:gke_cluster)
          @maintenance_window = args[:maintenance_window] if args.key?(:maintenance_window)
          @master_authorized_networks_config = args[:master_authorized_networks_config] if args.key?(:master_authorized_networks_config)
          @node_config = args[:node_config] if args.key?(:node_config)
          @node_count = args[:node_count] if args.key?(:node_count)
          @private_environment_config = args[:private_environment_config] if args.key?(:private_environment_config)
          @recovery_config = args[:recovery_config] if args.key?(:recovery_config)
          @resilience_mode = args[:resilience_mode] if args.key?(:resilience_mode)
          @software_config = args[:software_config] if args.key?(:software_config)
          @web_server_config = args[:web_server_config] if args.key?(:web_server_config)
          @web_server_network_access_control = args[:web_server_network_access_control] if args.key?(:web_server_network_access_control)
          @workloads_config = args[:workloads_config] if args.key?(:workloads_config)
        end
      end
      
      # Execute Airflow Command request.
      class ExecuteAirflowCommandRequest
        include Google::Apis::Core::Hashable
      
        # Airflow command.
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        # Parameters for the Airflow command/subcommand as an array of arguments. It may
        # contain positional arguments like `["my-dag-id"]`, key-value parameters like `[
        # "--foo=bar"]` or `["--foo","bar"]`, or other flags like `["-f"]`.
        # Corresponds to the JSON property `parameters`
        # @return [Array<String>]
        attr_accessor :parameters
      
        # Airflow subcommand.
        # Corresponds to the JSON property `subcommand`
        # @return [String]
        attr_accessor :subcommand
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command = args[:command] if args.key?(:command)
          @parameters = args[:parameters] if args.key?(:parameters)
          @subcommand = args[:subcommand] if args.key?(:subcommand)
        end
      end
      
      # Response to ExecuteAirflowCommandRequest.
      class ExecuteAirflowCommandResponse
        include Google::Apis::Core::Hashable
      
        # Error message. Empty if there was no error.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # The unique ID of the command execution for polling.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # The name of the pod where the command is executed.
        # Corresponds to the JSON property `pod`
        # @return [String]
        attr_accessor :pod
      
        # The namespace of the pod where the command is executed.
        # Corresponds to the JSON property `podNamespace`
        # @return [String]
        attr_accessor :pod_namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @pod = args[:pod] if args.key?(:pod)
          @pod_namespace = args[:pod_namespace] if args.key?(:pod_namespace)
        end
      end
      
      # Information about how a command ended.
      class ExitInfo
        include Google::Apis::Core::Hashable
      
        # Error message. Empty if there was no error.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # The exit code from the command execution.
        # Corresponds to the JSON property `exitCode`
        # @return [Fixnum]
        attr_accessor :exit_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @exit_code = args[:exit_code] if args.key?(:exit_code)
        end
      end
      
      # Response for FetchDatabasePropertiesRequest.
      class FetchDatabasePropertiesResponse
        include Google::Apis::Core::Hashable
      
        # The availability status of the failover replica. A false status indicates that
        # the failover replica is out of sync. The primary instance can only fail over
        # to the failover replica when the status is true.
        # Corresponds to the JSON property `isFailoverReplicaAvailable`
        # @return [Boolean]
        attr_accessor :is_failover_replica_available
        alias_method :is_failover_replica_available?, :is_failover_replica_available
      
        # The Compute Engine zone that the instance is currently serving from.
        # Corresponds to the JSON property `primaryGceZone`
        # @return [String]
        attr_accessor :primary_gce_zone
      
        # The Compute Engine zone that the failover instance is currently serving from
        # for a regional Cloud SQL instance.
        # Corresponds to the JSON property `secondaryGceZone`
        # @return [String]
        attr_accessor :secondary_gce_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_failover_replica_available = args[:is_failover_replica_available] if args.key?(:is_failover_replica_available)
          @primary_gce_zone = args[:primary_gce_zone] if args.key?(:primary_gce_zone)
          @secondary_gce_zone = args[:secondary_gce_zone] if args.key?(:secondary_gce_zone)
        end
      end
      
      # Configuration for controlling how IPs are allocated in the GKE cluster running
      # the Apache Airflow software.
      class IpAllocationPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The IP address range used to allocate IP addresses to pods in the
        # GKE cluster. For Cloud Composer environments in versions composer-1.*.*-
        # airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true.
        # Set to blank to have GKE choose a range with the default size. Set to /netmask
        # (e.g. `/14`) to have GKE choose a range with a specific netmask. Set to a [
        # CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (
        # e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `
        # 172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
        # Corresponds to the JSON property `clusterIpv4CidrBlock`
        # @return [String]
        attr_accessor :cluster_ipv4_cidr_block
      
        # Optional. The name of the GKE cluster's secondary range used to allocate IP
        # addresses to pods. For Cloud Composer environments in versions composer-1.*.*-
        # airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true.
        # Corresponds to the JSON property `clusterSecondaryRangeName`
        # @return [String]
        attr_accessor :cluster_secondary_range_name
      
        # Optional. The IP address range of the services IP addresses in this GKE
        # cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*
        # .*, this field is applicable only when `use_ip_aliases` is true. Set to blank
        # to have GKE choose a range with the default size. Set to /netmask (e.g. `/14`)
        # to have GKE choose a range with a specific netmask. Set to a [CIDR](https://en.
        # wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/
        # 14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `
        # 192.168.0.0/16`) to pick a specific range to use.
        # Corresponds to the JSON property `servicesIpv4CidrBlock`
        # @return [String]
        attr_accessor :services_ipv4_cidr_block
      
        # Optional. The name of the services' secondary range used to allocate IP
        # addresses to the GKE cluster. For Cloud Composer environments in versions
        # composer-1.*.*-airflow-*.*.*, this field is applicable only when `
        # use_ip_aliases` is true.
        # Corresponds to the JSON property `servicesSecondaryRangeName`
        # @return [String]
        attr_accessor :services_secondary_range_name
      
        # Optional. Whether or not to enable Alias IPs in the GKE cluster. If `true`, a
        # VPC-native cluster is created. This field is only supported for Cloud Composer
        # environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer
        # versions always use VPC-native GKE clusters.
        # Corresponds to the JSON property `useIpAliases`
        # @return [Boolean]
        attr_accessor :use_ip_aliases
        alias_method :use_ip_aliases?, :use_ip_aliases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_ipv4_cidr_block = args[:cluster_ipv4_cidr_block] if args.key?(:cluster_ipv4_cidr_block)
          @cluster_secondary_range_name = args[:cluster_secondary_range_name] if args.key?(:cluster_secondary_range_name)
          @services_ipv4_cidr_block = args[:services_ipv4_cidr_block] if args.key?(:services_ipv4_cidr_block)
          @services_secondary_range_name = args[:services_secondary_range_name] if args.key?(:services_secondary_range_name)
          @use_ip_aliases = args[:use_ip_aliases] if args.key?(:use_ip_aliases)
        end
      end
      
      # ImageVersion information
      class ImageVersion
        include Google::Apis::Core::Hashable
      
        # Whether it is impossible to create an environment with the image version.
        # Corresponds to the JSON property `creationDisabled`
        # @return [Boolean]
        attr_accessor :creation_disabled
        alias_method :creation_disabled?, :creation_disabled
      
        # The string identifier of the ImageVersion, in the form: "composer-x.y.z-
        # airflow-a.b.c"
        # Corresponds to the JSON property `imageVersionId`
        # @return [String]
        attr_accessor :image_version_id
      
        # Whether this is the default ImageVersion used by Composer during environment
        # creation if no input ImageVersion is specified.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `releaseDate`
        # @return [Google::Apis::ComposerV1::Date]
        attr_accessor :release_date
      
        # supported python versions
        # Corresponds to the JSON property `supportedPythonVersions`
        # @return [Array<String>]
        attr_accessor :supported_python_versions
      
        # Whether it is impossible to upgrade an environment running with the image
        # version.
        # Corresponds to the JSON property `upgradeDisabled`
        # @return [Boolean]
        attr_accessor :upgrade_disabled
        alias_method :upgrade_disabled?, :upgrade_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_disabled = args[:creation_disabled] if args.key?(:creation_disabled)
          @image_version_id = args[:image_version_id] if args.key?(:image_version_id)
          @is_default = args[:is_default] if args.key?(:is_default)
          @release_date = args[:release_date] if args.key?(:release_date)
          @supported_python_versions = args[:supported_python_versions] if args.key?(:supported_python_versions)
          @upgrade_disabled = args[:upgrade_disabled] if args.key?(:upgrade_disabled)
        end
      end
      
      # Contains information about a single line from logs.
      class Line
        include Google::Apis::Core::Hashable
      
        # Text content of the log line.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Number of the line.
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @line_number = args[:line_number] if args.key?(:line_number)
        end
      end
      
      # The environments in a project and location.
      class ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of environments returned by a ListEnvironmentsRequest.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::ComposerV1::Environment>]
        attr_accessor :environments
      
        # The page token used to query for the next page if one exists.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environments = args[:environments] if args.key?(:environments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ImageVersions in a project and location.
      class ListImageVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of supported ImageVersions in a location.
        # Corresponds to the JSON property `imageVersions`
        # @return [Array<Google::Apis::ComposerV1::ImageVersion>]
        attr_accessor :image_versions
      
        # The page token used to query for the next page if one exists.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_versions = args[:image_versions] if args.key?(:image_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ComposerV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # The user workloads ConfigMaps for a given environment.
      class ListUserWorkloadsConfigMapsResponse
        include Google::Apis::Core::Hashable
      
        # The page token used to query for the next page if one exists.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of ConfigMaps returned by a ListUserWorkloadsConfigMapsRequest.
        # Corresponds to the JSON property `userWorkloadsConfigMaps`
        # @return [Array<Google::Apis::ComposerV1::UserWorkloadsConfigMap>]
        attr_accessor :user_workloads_config_maps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_workloads_config_maps = args[:user_workloads_config_maps] if args.key?(:user_workloads_config_maps)
        end
      end
      
      # The user workloads Secrets for a given environment.
      class ListUserWorkloadsSecretsResponse
        include Google::Apis::Core::Hashable
      
        # The page token used to query for the next page if one exists.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Secrets returned by a ListUserWorkloadsSecretsRequest.
        # Corresponds to the JSON property `userWorkloadsSecrets`
        # @return [Array<Google::Apis::ComposerV1::UserWorkloadsSecret>]
        attr_accessor :user_workloads_secrets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_workloads_secrets = args[:user_workloads_secrets] if args.key?(:user_workloads_secrets)
        end
      end
      
      # Response to ListWorkloadsRequest.
      class ListWorkloadsResponse
        include Google::Apis::Core::Hashable
      
        # The page token used to query for the next page if one exists.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of environment workloads.
        # Corresponds to the JSON property `workloads`
        # @return [Array<Google::Apis::ComposerV1::ComposerWorkload>]
        attr_accessor :workloads
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workloads = args[:workloads] if args.key?(:workloads)
        end
      end
      
      # Request to load a snapshot into a Cloud Composer environment.
      class LoadSnapshotRequest
        include Google::Apis::Core::Hashable
      
        # Whether or not to skip setting Airflow overrides when loading the environment'
        # s state.
        # Corresponds to the JSON property `skipAirflowOverridesSetting`
        # @return [Boolean]
        attr_accessor :skip_airflow_overrides_setting
        alias_method :skip_airflow_overrides_setting?, :skip_airflow_overrides_setting
      
        # Whether or not to skip setting environment variables when loading the
        # environment's state.
        # Corresponds to the JSON property `skipEnvironmentVariablesSetting`
        # @return [Boolean]
        attr_accessor :skip_environment_variables_setting
        alias_method :skip_environment_variables_setting?, :skip_environment_variables_setting
      
        # Whether or not to skip copying Cloud Storage data when loading the environment'
        # s state.
        # Corresponds to the JSON property `skipGcsDataCopying`
        # @return [Boolean]
        attr_accessor :skip_gcs_data_copying
        alias_method :skip_gcs_data_copying?, :skip_gcs_data_copying
      
        # Whether or not to skip installing Pypi packages when loading the environment's
        # state.
        # Corresponds to the JSON property `skipPypiPackagesInstallation`
        # @return [Boolean]
        attr_accessor :skip_pypi_packages_installation
        alias_method :skip_pypi_packages_installation?, :skip_pypi_packages_installation
      
        # A Cloud Storage path to a snapshot to load, e.g.: "gs://my-bucket/snapshots/
        # project_location_environment_timestamp".
        # Corresponds to the JSON property `snapshotPath`
        # @return [String]
        attr_accessor :snapshot_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @skip_airflow_overrides_setting = args[:skip_airflow_overrides_setting] if args.key?(:skip_airflow_overrides_setting)
          @skip_environment_variables_setting = args[:skip_environment_variables_setting] if args.key?(:skip_environment_variables_setting)
          @skip_gcs_data_copying = args[:skip_gcs_data_copying] if args.key?(:skip_gcs_data_copying)
          @skip_pypi_packages_installation = args[:skip_pypi_packages_installation] if args.key?(:skip_pypi_packages_installation)
          @snapshot_path = args[:snapshot_path] if args.key?(:snapshot_path)
        end
      end
      
      # Response to LoadSnapshotRequest.
      class LoadSnapshotResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The configuration settings for Cloud Composer maintenance window. The
      # following example: ``` ` "startTime":"2019-08-01T01:00:00Z" "endTime":"2019-08-
      # 01T07:00:00Z" "recurrence":"FREQ=WEEKLY;BYDAY=TU,WE" ` ``` would define a
      # maintenance window between 01 and 07 hours UTC during each Tuesday and
      # Wednesday.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Required. Maintenance window end time. It is used only to calculate the
        # duration of the maintenance window. The value for end-time must be in the
        # future, relative to `start_time`.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. Maintenance window recurrence. Format is a subset of [RFC-5545](
        # https://tools.ietf.org/html/rfc5545) `RRULE`. The only allowed values for `
        # FREQ` field are `FREQ=DAILY` and `FREQ=WEEKLY;BYDAY=...` Example values: `FREQ=
        # WEEKLY;BYDAY=TU,WE`, `FREQ=DAILY`.
        # Corresponds to the JSON property `recurrence`
        # @return [String]
        attr_accessor :recurrence
      
        # Required. Start time of the first recurrence of the maintenance window.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @recurrence = args[:recurrence] if args.key?(:recurrence)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Configuration options for the master authorized networks feature. Enabled
      # master authorized networks will disallow all external traffic to access
      # Kubernetes master through HTTPS except traffic from the given CIDR blocks,
      # Google Compute Engine Public IPs and Google Prod IPs.
      class MasterAuthorizedNetworksConfig
        include Google::Apis::Core::Hashable
      
        # Up to 50 external networks that could access Kubernetes master through HTTPS.
        # Corresponds to the JSON property `cidrBlocks`
        # @return [Array<Google::Apis::ComposerV1::CidrBlock>]
        attr_accessor :cidr_blocks
      
        # Optional. Whether or not master authorized networks feature is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cidr_blocks = args[:cidr_blocks] if args.key?(:cidr_blocks)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Configuration options for networking connections in the Composer 2 environment.
      class NetworkingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates the user requested specific connection type between Tenant
        # and Customer projects. You cannot set networking connection type in public IP
        # environment.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
        end
      end
      
      # The configuration information for the Kubernetes Engine nodes running the
      # Apache Airflow software.
      class NodeConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The IP range in CIDR notation to use internally by Cloud Composer.
        # IP addresses are not reserved - and the same range can be used by multiple
        # Cloud Composer environments. In case of overlap, IPs from this range will not
        # be accessible in the user's VPC network. Cannot be updated. If not specified,
        # the default value of '100.64.128.0/20' is used. This field is supported for
        # Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and
        # newer.
        # Corresponds to the JSON property `composerInternalIpv4CidrBlock`
        # @return [String]
        attr_accessor :composer_internal_ipv4_cidr_block
      
        # Optional. Network Attachment that Cloud Composer environment is connected to,
        # which provides connectivity with a user's VPC network. Takes precedence over
        # network and subnetwork settings. If not provided, but network and subnetwork
        # are defined during environment, it will be provisioned. If not provided and
        # network and subnetwork are also empty, then connectivity to user's VPC network
        # is disabled. Network attachment must be provided in format projects/`project`/
        # regions/`region`/networkAttachments/`networkAttachment`. This field is
        # supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-
        # build.* and newer.
        # Corresponds to the JSON property `composerNetworkAttachment`
        # @return [String]
        attr_accessor :composer_network_attachment
      
        # Optional. The disk size in GB used for node VMs. Minimum size is 30GB. If
        # unspecified, defaults to 100GB. Cannot be updated. This field is supported for
        # Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Optional. Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines
        # nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all
        # destination addresses, except between pods traffic. See: https://cloud.google.
        # com/kubernetes-engine/docs/how-to/ip-masquerade-agent
        # Corresponds to the JSON property `enableIpMasqAgent`
        # @return [Boolean]
        attr_accessor :enable_ip_masq_agent
        alias_method :enable_ip_masq_agent?, :enable_ip_masq_agent
      
        # Configuration for controlling how IPs are allocated in the GKE cluster running
        # the Apache Airflow software.
        # Corresponds to the JSON property `ipAllocationPolicy`
        # @return [Google::Apis::ComposerV1::IpAllocationPolicy]
        attr_accessor :ip_allocation_policy
      
        # Optional. The Compute Engine [zone](/compute/docs/regions-zones) in which to
        # deploy the VMs used to run the Apache Airflow software, specified as a [
        # relative resource name](/apis/design/resource_names#relative_resource_name).
        # For example: "projects/`projectId`/zones/`zoneId`". This `location` must
        # belong to the enclosing environment's project and location. If both this field
        # and `nodeConfig.machineType` are specified, `nodeConfig.machineType` must
        # belong to this `location`; if both are unspecified, the service will pick a
        # zone in the Compute Engine region corresponding to the Cloud Composer location,
        # and propagate that choice to both fields. If only one field (`location` or `
        # nodeConfig.machineType`) is specified, the location information from the
        # specified field will be propagated to the unspecified field. This field is
        # supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.
        # *.*.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. The Compute Engine [machine type](/compute/docs/machine-types) used
        # for cluster instances, specified as a [relative resource name](/apis/design/
        # resource_names#relative_resource_name). For example: "projects/`projectId`/
        # zones/`zoneId`/machineTypes/`machineTypeId`". The `machineType` must belong to
        # the enclosing environment's project and location. If both this field and `
        # nodeConfig.location` are specified, this `machineType` must belong to the `
        # nodeConfig.location`; if both are unspecified, the service will pick a zone in
        # the Compute Engine region corresponding to the Cloud Composer location, and
        # propagate that choice to both fields. If exactly one of this field and `
        # nodeConfig.location` is specified, the location information from the specified
        # field will be propagated to the unspecified field. The `machineTypeId` must
        # not be a [shared-core machine type](/compute/docs/machine-types#sharedcore).
        # If this field is unspecified, the `machineTypeId` defaults to "n1-standard-1".
        # This field is supported for Cloud Composer environments in versions composer-1.
        # *.*-airflow-*.*.*.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. The Compute Engine network to be used for machine communications,
        # specified as a [relative resource name](/apis/design/resource_names#
        # relative_resource_name). For example: "projects/`projectId`/global/networks/`
        # networkId`". If unspecified, the "default" network ID in the environment's
        # project is used. If a [Custom Subnet Network](/vpc/docs/vpc#
        # vpc_networks_and_subnets) is provided, `nodeConfig.subnetwork` must also be
        # provided. For [Shared VPC](/vpc/docs/shared-vpc) subnetwork requirements, see `
        # nodeConfig.subnetwork`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The set of Google API scopes to be made available on all node VMs.
        # If `oauth_scopes` is empty, defaults to ["https://www.googleapis.com/auth/
        # cloud-platform"]. Cannot be updated. This field is supported for Cloud
        # Composer environments in versions composer-1.*.*-airflow-*.*.*.
        # Corresponds to the JSON property `oauthScopes`
        # @return [Array<String>]
        attr_accessor :oauth_scopes
      
        # Optional. The Google Cloud Platform Service Account to be used by the node VMs.
        # If a service account is not specified, the "default" Compute Engine service
        # account is used. Cannot be updated.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Optional. The Compute Engine subnetwork to be used for machine communications,
        # specified as a [relative resource name](/apis/design/resource_names#
        # relative_resource_name). For example: "projects/`projectId`/regions/`regionId`/
        # subnetworks/`subnetworkId`" If a subnetwork is provided, `nodeConfig.network`
        # must also be provided, and the subnetwork must belong to the enclosing
        # environment's project and location.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # Optional. The list of instance tags applied to all node VMs. Tags are used to
        # identify valid sources or targets for network firewalls. Each tag within the
        # list must comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Cannot
        # be updated.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composer_internal_ipv4_cidr_block = args[:composer_internal_ipv4_cidr_block] if args.key?(:composer_internal_ipv4_cidr_block)
          @composer_network_attachment = args[:composer_network_attachment] if args.key?(:composer_network_attachment)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @enable_ip_masq_agent = args[:enable_ip_masq_agent] if args.key?(:enable_ip_masq_agent)
          @ip_allocation_policy = args[:ip_allocation_policy] if args.key?(:ip_allocation_policy)
          @location = args[:location] if args.key?(:location)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @network = args[:network] if args.key?(:network)
          @oauth_scopes = args[:oauth_scopes] if args.key?(:oauth_scopes)
          @service_account = args[:service_account] if args.key?(:service_account)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ComposerV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Metadata describing an operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was submitted to the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the operation terminated, regardless of its success.
        # This field is unset if the operation is still ongoing.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The type of operation being performed.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Output only. The resource being operated on, as a [relative resource name]( /
        # apis/design/resource_names#relative_resource_name).
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Output only. The UUID of the resource being operated on.
        # Corresponds to the JSON property `resourceUuid`
        # @return [String]
        attr_accessor :resource_uuid
      
        # Output only. The current operation state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @resource = args[:resource] if args.key?(:resource)
          @resource_uuid = args[:resource_uuid] if args.key?(:resource_uuid)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Poll Airflow Command request.
      class PollAirflowCommandRequest
        include Google::Apis::Core::Hashable
      
        # The unique ID of the command execution.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Line number from which new logs should be fetched.
        # Corresponds to the JSON property `nextLineNumber`
        # @return [Fixnum]
        attr_accessor :next_line_number
      
        # The name of the pod where the command is executed.
        # Corresponds to the JSON property `pod`
        # @return [String]
        attr_accessor :pod
      
        # The namespace of the pod where the command is executed.
        # Corresponds to the JSON property `podNamespace`
        # @return [String]
        attr_accessor :pod_namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @next_line_number = args[:next_line_number] if args.key?(:next_line_number)
          @pod = args[:pod] if args.key?(:pod)
          @pod_namespace = args[:pod_namespace] if args.key?(:pod_namespace)
        end
      end
      
      # Response to PollAirflowCommandRequest.
      class PollAirflowCommandResponse
        include Google::Apis::Core::Hashable
      
        # Information about how a command ended.
        # Corresponds to the JSON property `exitInfo`
        # @return [Google::Apis::ComposerV1::ExitInfo]
        attr_accessor :exit_info
      
        # Output from the command execution. It may not contain the full output and the
        # caller may need to poll for more lines.
        # Corresponds to the JSON property `output`
        # @return [Array<Google::Apis::ComposerV1::Line>]
        attr_accessor :output
      
        # Whether the command execution has finished and there is no more output.
        # Corresponds to the JSON property `outputEnd`
        # @return [Boolean]
        attr_accessor :output_end
        alias_method :output_end?, :output_end
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exit_info = args[:exit_info] if args.key?(:exit_info)
          @output = args[:output] if args.key?(:output)
          @output_end = args[:output_end] if args.key?(:output_end)
        end
      end
      
      # Configuration options for the private GKE cluster in a Cloud Composer
      # environment.
      class PrivateClusterConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If `true`, access to the public endpoint of the GKE cluster is
        # denied.
        # Corresponds to the JSON property `enablePrivateEndpoint`
        # @return [Boolean]
        attr_accessor :enable_private_endpoint
        alias_method :enable_private_endpoint?, :enable_private_endpoint
      
        # Optional. The CIDR block from which IPv4 range for GKE master will be reserved.
        # If left blank, the default value of '172.16.0.0/23' is used.
        # Corresponds to the JSON property `masterIpv4CidrBlock`
        # @return [String]
        attr_accessor :master_ipv4_cidr_block
      
        # Output only. The IP range in CIDR notation to use for the hosted master
        # network. This range is used for assigning internal IP addresses to the GKE
        # cluster master or set of masters and to the internal load balancer virtual IP.
        # This range must not overlap with any other ranges in use within the cluster's
        # network.
        # Corresponds to the JSON property `masterIpv4ReservedRange`
        # @return [String]
        attr_accessor :master_ipv4_reserved_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_private_endpoint = args[:enable_private_endpoint] if args.key?(:enable_private_endpoint)
          @master_ipv4_cidr_block = args[:master_ipv4_cidr_block] if args.key?(:master_ipv4_cidr_block)
          @master_ipv4_reserved_range = args[:master_ipv4_reserved_range] if args.key?(:master_ipv4_reserved_range)
        end
      end
      
      # The configuration information for configuring a Private IP Cloud Composer
      # environment.
      class PrivateEnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # Optional. When specified, the environment will use Private Service Connect
        # instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the
        # PSC endpoint in the Customer Project will use an IP address from this
        # subnetwork.
        # Corresponds to the JSON property `cloudComposerConnectionSubnetwork`
        # @return [String]
        attr_accessor :cloud_composer_connection_subnetwork
      
        # Optional. The CIDR block from which IP range for Cloud Composer Network in
        # tenant project will be reserved. Needs to be disjoint from
        # private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block.
        # This field is supported for Cloud Composer environments in versions composer-2.
        # *.*-airflow-*.*.* and newer.
        # Corresponds to the JSON property `cloudComposerNetworkIpv4CidrBlock`
        # @return [String]
        attr_accessor :cloud_composer_network_ipv4_cidr_block
      
        # Output only. The IP range reserved for the tenant project's Cloud Composer
        # network. This field is supported for Cloud Composer environments in versions
        # composer-2.*.*-airflow-*.*.* and newer.
        # Corresponds to the JSON property `cloudComposerNetworkIpv4ReservedRange`
        # @return [String]
        attr_accessor :cloud_composer_network_ipv4_reserved_range
      
        # Optional. The CIDR block from which IP range in tenant project will be
        # reserved for Cloud SQL. Needs to be disjoint from `web_server_ipv4_cidr_block`.
        # Corresponds to the JSON property `cloudSqlIpv4CidrBlock`
        # @return [String]
        attr_accessor :cloud_sql_ipv4_cidr_block
      
        # Optional. If `true`, builds performed during operations that install Python
        # packages have only private connectivity to Google services (including Artifact
        # Registry) and VPC network (if either `NodeConfig.network` and `NodeConfig.
        # subnetwork` fields or `NodeConfig.composer_network_attachment` field are
        # specified). If `false`, the builds also have access to the internet. This
        # field is supported for Cloud Composer environments in versions composer-3-
        # airflow-*.*.*-build.* and newer.
        # Corresponds to the JSON property `enablePrivateBuildsOnly`
        # @return [Boolean]
        attr_accessor :enable_private_builds_only
        alias_method :enable_private_builds_only?, :enable_private_builds_only
      
        # Optional. If `true`, a Private IP Cloud Composer environment is created. If
        # this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to
        # true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
        # Corresponds to the JSON property `enablePrivateEnvironment`
        # @return [Boolean]
        attr_accessor :enable_private_environment
        alias_method :enable_private_environment?, :enable_private_environment
      
        # Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `
        # IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.
        # service_ipv4_cidr_block`.
        # Corresponds to the JSON property `enablePrivatelyUsedPublicIps`
        # @return [Boolean]
        attr_accessor :enable_privately_used_public_ips
        alias_method :enable_privately_used_public_ips?, :enable_privately_used_public_ips
      
        # Configuration options for networking connections in the Composer 2 environment.
        # Corresponds to the JSON property `networkingConfig`
        # @return [Google::Apis::ComposerV1::NetworkingConfig]
        attr_accessor :networking_config
      
        # Configuration options for the private GKE cluster in a Cloud Composer
        # environment.
        # Corresponds to the JSON property `privateClusterConfig`
        # @return [Google::Apis::ComposerV1::PrivateClusterConfig]
        attr_accessor :private_cluster_config
      
        # Optional. The CIDR block from which IP range for web server will be reserved.
        # Needs to be disjoint from `private_cluster_config.master_ipv4_cidr_block` and `
        # cloud_sql_ipv4_cidr_block`. This field is supported for Cloud Composer
        # environments in versions composer-1.*.*-airflow-*.*.*.
        # Corresponds to the JSON property `webServerIpv4CidrBlock`
        # @return [String]
        attr_accessor :web_server_ipv4_cidr_block
      
        # Output only. The IP range reserved for the tenant project's App Engine VMs.
        # This field is supported for Cloud Composer environments in versions composer-1.
        # *.*-airflow-*.*.*.
        # Corresponds to the JSON property `webServerIpv4ReservedRange`
        # @return [String]
        attr_accessor :web_server_ipv4_reserved_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_composer_connection_subnetwork = args[:cloud_composer_connection_subnetwork] if args.key?(:cloud_composer_connection_subnetwork)
          @cloud_composer_network_ipv4_cidr_block = args[:cloud_composer_network_ipv4_cidr_block] if args.key?(:cloud_composer_network_ipv4_cidr_block)
          @cloud_composer_network_ipv4_reserved_range = args[:cloud_composer_network_ipv4_reserved_range] if args.key?(:cloud_composer_network_ipv4_reserved_range)
          @cloud_sql_ipv4_cidr_block = args[:cloud_sql_ipv4_cidr_block] if args.key?(:cloud_sql_ipv4_cidr_block)
          @enable_private_builds_only = args[:enable_private_builds_only] if args.key?(:enable_private_builds_only)
          @enable_private_environment = args[:enable_private_environment] if args.key?(:enable_private_environment)
          @enable_privately_used_public_ips = args[:enable_privately_used_public_ips] if args.key?(:enable_privately_used_public_ips)
          @networking_config = args[:networking_config] if args.key?(:networking_config)
          @private_cluster_config = args[:private_cluster_config] if args.key?(:private_cluster_config)
          @web_server_ipv4_cidr_block = args[:web_server_ipv4_cidr_block] if args.key?(:web_server_ipv4_cidr_block)
          @web_server_ipv4_reserved_range = args[:web_server_ipv4_reserved_range] if args.key?(:web_server_ipv4_reserved_range)
        end
      end
      
      # The Recovery settings of an environment.
      class RecoveryConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for scheduled snapshot creation mechanism.
        # Corresponds to the JSON property `scheduledSnapshotsConfig`
        # @return [Google::Apis::ComposerV1::ScheduledSnapshotsConfig]
        attr_accessor :scheduled_snapshots_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scheduled_snapshots_config = args[:scheduled_snapshots_config] if args.key?(:scheduled_snapshots_config)
        end
      end
      
      # Restart Airflow web server.
      class RestartWebServerRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to create a snapshot of a Cloud Composer environment.
      class SaveSnapshotRequest
        include Google::Apis::Core::Hashable
      
        # Location in a Cloud Storage where the snapshot is going to be stored, e.g.: "
        # gs://my-bucket/snapshots".
        # Corresponds to the JSON property `snapshotLocation`
        # @return [String]
        attr_accessor :snapshot_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot_location = args[:snapshot_location] if args.key?(:snapshot_location)
        end
      end
      
      # Response to SaveSnapshotRequest.
      class SaveSnapshotResponse
        include Google::Apis::Core::Hashable
      
        # The fully-resolved Cloud Storage path of the created snapshot, e.g.: "gs://my-
        # bucket/snapshots/project_location_environment_timestamp". This field is
        # populated only if the snapshot creation was successful.
        # Corresponds to the JSON property `snapshotPath`
        # @return [String]
        attr_accessor :snapshot_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot_path = args[:snapshot_path] if args.key?(:snapshot_path)
        end
      end
      
      # The configuration for scheduled snapshot creation mechanism.
      class ScheduledSnapshotsConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether scheduled snapshots creation is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. The cron expression representing the time when snapshots creation
        # mechanism runs. This field is subject to additional validation around
        # frequency of execution.
        # Corresponds to the JSON property `snapshotCreationSchedule`
        # @return [String]
        attr_accessor :snapshot_creation_schedule
      
        # Optional. The Cloud Storage location for storing automatically created
        # snapshots.
        # Corresponds to the JSON property `snapshotLocation`
        # @return [String]
        attr_accessor :snapshot_location
      
        # Optional. Time zone that sets the context to interpret
        # snapshot_creation_schedule.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @snapshot_creation_schedule = args[:snapshot_creation_schedule] if args.key?(:snapshot_creation_schedule)
          @snapshot_location = args[:snapshot_location] if args.key?(:snapshot_location)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Configuration for resources used by Airflow schedulers.
      class SchedulerResource
        include Google::Apis::Core::Hashable
      
        # Optional. The number of schedulers.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Optional. CPU request and limit for a single Airflow scheduler replica.
        # Corresponds to the JSON property `cpu`
        # @return [Float]
        attr_accessor :cpu
      
        # Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
        # Corresponds to the JSON property `memoryGb`
        # @return [Float]
        attr_accessor :memory_gb
      
        # Optional. Storage (GB) request and limit for a single Airflow scheduler
        # replica.
        # Corresponds to the JSON property `storageGb`
        # @return [Float]
        attr_accessor :storage_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @cpu = args[:cpu] if args.key?(:cpu)
          @memory_gb = args[:memory_gb] if args.key?(:memory_gb)
          @storage_gb = args[:storage_gb] if args.key?(:storage_gb)
        end
      end
      
      # Specifies the selection and configuration of software inside the environment.
      class SoftwareConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Apache Airflow configuration properties to override. Property keys
        # contain the section and property names, separated by a hyphen, for example "
        # core-dags_are_paused_at_creation". Section names must not contain hyphens ("-")
        # , opening square brackets ("["), or closing square brackets ("]"). The
        # property name must not be empty and must not contain an equals sign ("=") or
        # semicolon (";"). Section and property names must not contain a period (".").
        # Apache Airflow configuration property names must be written in [snake_case](
        # https://en.wikipedia.org/wiki/Snake_case). Property values can contain any
        # character, and can be written in any lower/upper case format. Certain Apache
        # Airflow configuration property values are [blocked](/composer/docs/concepts/
        # airflow-configurations), and cannot be overridden.
        # Corresponds to the JSON property `airflowConfigOverrides`
        # @return [Hash<String,String>]
        attr_accessor :airflow_config_overrides
      
        # Configuration for Cloud Data Lineage integration.
        # Corresponds to the JSON property `cloudDataLineageIntegration`
        # @return [Google::Apis::ComposerV1::CloudDataLineageIntegration]
        attr_accessor :cloud_data_lineage_integration
      
        # Optional. Additional environment variables to provide to the Apache Airflow
        # scheduler, worker, and webserver processes. Environment variable names must
        # match the regular expression `a-zA-Z_*`. They cannot specify Apache Airflow
        # software configuration overrides (they cannot match the regular expression `
        # AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+`), and they cannot match any of the following
        # reserved names: * `AIRFLOW_HOME` * `C_FORCE_ROOT` * `CONTAINER_NAME` * `
        # DAGS_FOLDER` * `GCP_PROJECT` * `GCS_BUCKET` * `GKE_CLUSTER_NAME` * `
        # SQL_DATABASE` * `SQL_INSTANCE` * `SQL_PASSWORD` * `SQL_PROJECT` * `SQL_REGION`
        # * `SQL_USER`
        # Corresponds to the JSON property `envVariables`
        # @return [Hash<String,String>]
        attr_accessor :env_variables
      
        # Optional. The version of the software running in the environment. This
        # encapsulates both the version of Cloud Composer functionality and the version
        # of Apache Airflow. It must match the regular expression `composer-([0-9]+(\.[0-
        # 9]+\.[0-9]+(-preview\.[0-9]+)?)?|latest)-airflow-([0-9]+(\.[0-9]+(\.[0-9]+)?)?)
        # `. When used as input, the server also checks if the provided version is
        # supported and denies the request for an unsupported version. The Cloud
        # Composer portion of the image version is a full [semantic version](https://
        # semver.org), or an alias in the form of major version number or `latest`. When
        # an alias is provided, the server replaces it with the current Cloud Composer
        # version that satisfies the alias. The Apache Airflow portion of the image
        # version is a full semantic version that points to one of the supported Apache
        # Airflow versions, or an alias in the form of only major or major.minor
        # versions specified. When an alias is provided, the server replaces it with the
        # latest Apache Airflow version that satisfies the alias and is supported in the
        # given Cloud Composer version. In all cases, the resolved image version is
        # stored in the same field. See also [version list](/composer/docs/concepts/
        # versioning/composer-versions) and [versioning overview](/composer/docs/
        # concepts/versioning/composer-versioning-overview).
        # Corresponds to the JSON property `imageVersion`
        # @return [String]
        attr_accessor :image_version
      
        # Optional. Custom Python Package Index (PyPI) packages to be installed in the
        # environment. Keys refer to the lowercase package name such as "numpy" and
        # values are the lowercase extras and version specifier such as "==1.12.0", "[
        # devel,gcp_api]", or "[devel]>=1.8.2, <1.9.2". To specify a package without
        # pinning it to a version specifier, use the empty string as the value.
        # Corresponds to the JSON property `pypiPackages`
        # @return [Hash<String,String>]
        attr_accessor :pypi_packages
      
        # Optional. The major version of Python used to run the Apache Airflow scheduler,
        # worker, and webserver processes. Can be set to '2' or '3'. If not specified,
        # the default is '3'. Cannot be updated. This field is only supported for Cloud
        # Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments
        # in newer versions always use Python major version 3.
        # Corresponds to the JSON property `pythonVersion`
        # @return [String]
        attr_accessor :python_version
      
        # Optional. The number of schedulers for Airflow. This field is supported for
        # Cloud Composer environments in versions composer-1.*.*-airflow-2.*.*.
        # Corresponds to the JSON property `schedulerCount`
        # @return [Fixnum]
        attr_accessor :scheduler_count
      
        # Optional. Whether or not the web server uses custom plugins. If unspecified,
        # the field defaults to `PLUGINS_ENABLED`. This field is supported for Cloud
        # Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # Corresponds to the JSON property `webServerPluginsMode`
        # @return [String]
        attr_accessor :web_server_plugins_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airflow_config_overrides = args[:airflow_config_overrides] if args.key?(:airflow_config_overrides)
          @cloud_data_lineage_integration = args[:cloud_data_lineage_integration] if args.key?(:cloud_data_lineage_integration)
          @env_variables = args[:env_variables] if args.key?(:env_variables)
          @image_version = args[:image_version] if args.key?(:image_version)
          @pypi_packages = args[:pypi_packages] if args.key?(:pypi_packages)
          @python_version = args[:python_version] if args.key?(:python_version)
          @scheduler_count = args[:scheduler_count] if args.key?(:scheduler_count)
          @web_server_plugins_mode = args[:web_server_plugins_mode] if args.key?(:web_server_plugins_mode)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Stop Airflow Command request.
      class StopAirflowCommandRequest
        include Google::Apis::Core::Hashable
      
        # The unique ID of the command execution.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # If true, the execution is terminated forcefully (SIGKILL). If false, the
        # execution is stopped gracefully, giving it time for cleanup.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # The name of the pod where the command is executed.
        # Corresponds to the JSON property `pod`
        # @return [String]
        attr_accessor :pod
      
        # The namespace of the pod where the command is executed.
        # Corresponds to the JSON property `podNamespace`
        # @return [String]
        attr_accessor :pod_namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @force = args[:force] if args.key?(:force)
          @pod = args[:pod] if args.key?(:pod)
          @pod_namespace = args[:pod_namespace] if args.key?(:pod_namespace)
        end
      end
      
      # Response to StopAirflowCommandRequest.
      class StopAirflowCommandResponse
        include Google::Apis::Core::Hashable
      
        # Whether the execution is still running.
        # Corresponds to the JSON property `isDone`
        # @return [Boolean]
        attr_accessor :is_done
        alias_method :is_done?, :is_done
      
        # Output message from stopping execution request.
        # Corresponds to the JSON property `output`
        # @return [Array<String>]
        attr_accessor :output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_done = args[:is_done] if args.key?(:is_done)
          @output = args[:output] if args.key?(:output)
        end
      end
      
      # The configuration for data storage in the environment.
      class StorageConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the Cloud Storage bucket used by the environment. No `gs:
        # //` prefix.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
        end
      end
      
      # The configuration setting for Task Logs.
      class TaskLogsRetentionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The mode of storage for Airflow workers task logs.
        # Corresponds to the JSON property `storageMode`
        # @return [String]
        attr_accessor :storage_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @storage_mode = args[:storage_mode] if args.key?(:storage_mode)
        end
      end
      
      # Configuration for resources used by Airflow triggerers.
      class TriggererResource
        include Google::Apis::Core::Hashable
      
        # Optional. The number of triggerers.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Optional. CPU request and limit for a single Airflow triggerer replica.
        # Corresponds to the JSON property `cpu`
        # @return [Float]
        attr_accessor :cpu
      
        # Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
        # Corresponds to the JSON property `memoryGb`
        # @return [Float]
        attr_accessor :memory_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @cpu = args[:cpu] if args.key?(:cpu)
          @memory_gb = args[:memory_gb] if args.key?(:memory_gb)
        end
      end
      
      # User workloads ConfigMap used by Airflow tasks that run with Kubernetes
      # executor or KubernetesPodOperator.
      class UserWorkloadsConfigMap
        include Google::Apis::Core::Hashable
      
        # Optional. The "data" field of Kubernetes ConfigMap, organized in key-value
        # pairs. For details see: https://kubernetes.io/docs/concepts/configuration/
        # configmap/ Example: ` "example_key": "example_value", "another_key": "
        # another_value" `
        # Corresponds to the JSON property `data`
        # @return [Hash<String,String>]
        attr_accessor :data
      
        # Identifier. The resource name of the ConfigMap, in the form: "projects/`
        # projectId`/locations/`locationId`/environments/`environmentId`/
        # userWorkloadsConfigMaps/`userWorkloadsConfigMapId`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # User workloads Secret used by Airflow tasks that run with Kubernetes executor
      # or KubernetesPodOperator.
      class UserWorkloadsSecret
        include Google::Apis::Core::Hashable
      
        # Optional. The "data" field of Kubernetes Secret, organized in key-value pairs,
        # which can contain sensitive values such as a password, a token, or a key. The
        # values for all keys have to be base64-encoded strings. For details see: https:/
        # /kubernetes.io/docs/concepts/configuration/secret/ Example: ` "example": "
        # ZXhhbXBsZV92YWx1ZQ==", "another-example": "YW5vdGhlcl9leGFtcGxlX3ZhbHVl" `
        # Corresponds to the JSON property `data`
        # @return [Hash<String,String>]
        attr_accessor :data
      
        # Identifier. The resource name of the Secret, in the form: "projects/`projectId`
        # /locations/`locationId`/environments/`environmentId`/userWorkloadsSecrets/`
        # userWorkloadsSecretId`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The configuration settings for the Airflow web server App Engine instance.
      # Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.
      # *.*
      class WebServerConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Machine type on which Airflow web server is running. It has to be
        # one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-
        # webserver-8. If not specified, composer-n1-webserver-2 will be used. Value
        # custom is returned only in response, if Airflow web server parameters were
        # manually changed to a non-standard values.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
        end
      end
      
      # Network-level access control policy for the Airflow web server.
      class WebServerNetworkAccessControl
        include Google::Apis::Core::Hashable
      
        # A collection of allowed IP ranges with descriptions.
        # Corresponds to the JSON property `allowedIpRanges`
        # @return [Array<Google::Apis::ComposerV1::AllowedIpRange>]
        attr_accessor :allowed_ip_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_ip_ranges = args[:allowed_ip_ranges] if args.key?(:allowed_ip_ranges)
        end
      end
      
      # Configuration for resources used by Airflow web server.
      class WebServerResource
        include Google::Apis::Core::Hashable
      
        # Optional. CPU request and limit for Airflow web server.
        # Corresponds to the JSON property `cpu`
        # @return [Float]
        attr_accessor :cpu
      
        # Optional. Memory (GB) request and limit for Airflow web server.
        # Corresponds to the JSON property `memoryGb`
        # @return [Float]
        attr_accessor :memory_gb
      
        # Optional. Storage (GB) request and limit for Airflow web server.
        # Corresponds to the JSON property `storageGb`
        # @return [Float]
        attr_accessor :storage_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu = args[:cpu] if args.key?(:cpu)
          @memory_gb = args[:memory_gb] if args.key?(:memory_gb)
          @storage_gb = args[:storage_gb] if args.key?(:storage_gb)
        end
      end
      
      # Configuration for resources used by Airflow workers.
      class WorkerResource
        include Google::Apis::Core::Hashable
      
        # Optional. CPU request and limit for a single Airflow worker replica.
        # Corresponds to the JSON property `cpu`
        # @return [Float]
        attr_accessor :cpu
      
        # Optional. Maximum number of workers for autoscaling.
        # Corresponds to the JSON property `maxCount`
        # @return [Fixnum]
        attr_accessor :max_count
      
        # Optional. Memory (GB) request and limit for a single Airflow worker replica.
        # Corresponds to the JSON property `memoryGb`
        # @return [Float]
        attr_accessor :memory_gb
      
        # Optional. Minimum number of workers for autoscaling.
        # Corresponds to the JSON property `minCount`
        # @return [Fixnum]
        attr_accessor :min_count
      
        # Optional. Storage (GB) request and limit for a single Airflow worker replica.
        # Corresponds to the JSON property `storageGb`
        # @return [Float]
        attr_accessor :storage_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu = args[:cpu] if args.key?(:cpu)
          @max_count = args[:max_count] if args.key?(:max_count)
          @memory_gb = args[:memory_gb] if args.key?(:memory_gb)
          @min_count = args[:min_count] if args.key?(:min_count)
          @storage_gb = args[:storage_gb] if args.key?(:storage_gb)
        end
      end
      
      # The Kubernetes workloads configuration for GKE cluster associated with the
      # Cloud Composer environment. Supported for Cloud Composer environments in
      # versions composer-2.*.*-airflow-*.*.* and newer.
      class WorkloadsConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for resources used by Airflow DAG processors. This field is
        # supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-
        # build.* and newer.
        # Corresponds to the JSON property `dagProcessor`
        # @return [Google::Apis::ComposerV1::DagProcessorResource]
        attr_accessor :dag_processor
      
        # Configuration for resources used by Airflow schedulers.
        # Corresponds to the JSON property `scheduler`
        # @return [Google::Apis::ComposerV1::SchedulerResource]
        attr_accessor :scheduler
      
        # Configuration for resources used by Airflow triggerers.
        # Corresponds to the JSON property `triggerer`
        # @return [Google::Apis::ComposerV1::TriggererResource]
        attr_accessor :triggerer
      
        # Configuration for resources used by Airflow web server.
        # Corresponds to the JSON property `webServer`
        # @return [Google::Apis::ComposerV1::WebServerResource]
        attr_accessor :web_server
      
        # Configuration for resources used by Airflow workers.
        # Corresponds to the JSON property `worker`
        # @return [Google::Apis::ComposerV1::WorkerResource]
        attr_accessor :worker
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dag_processor = args[:dag_processor] if args.key?(:dag_processor)
          @scheduler = args[:scheduler] if args.key?(:scheduler)
          @triggerer = args[:triggerer] if args.key?(:triggerer)
          @web_server = args[:web_server] if args.key?(:web_server)
          @worker = args[:worker] if args.key?(:worker)
        end
      end
    end
  end
end
