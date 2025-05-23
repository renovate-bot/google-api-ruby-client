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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ComposerV1beta1
      # Cloud Composer API
      #
      # Manages Apache Airflow environments on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/composer_v1beta1'
      #
      #    Composer = Google::Apis::ComposerV1beta1 # Alias the module
      #    service = Composer::CloudComposerService.new
      #
      # @see https://cloud.google.com/composer/
      class CloudComposerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://composer.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-composer_v1beta1',
                client_version: Google::Apis::ComposerV1beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Check if an upgrade operation on the environment will succeed. In case of
        # problems detailed info can be found in the returned Operation.
        # @param [String] environment
        #   The resource name of the environment to check upgrade for, in the form: "
        #   projects/`projectId`/locations/`locationId`/environments/`environmentId`"
        # @param [Google::Apis::ComposerV1beta1::CheckUpgradeRequest] check_upgrade_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_environment_upgrade(environment, check_upgrade_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+environment}:checkUpgrade', options)
          command.request_representation = Google::Apis::ComposerV1beta1::CheckUpgradeRequest::Representation
          command.request_object = check_upgrade_request_object
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new environment.
        # @param [String] parent
        #   The parent must be of the form "projects/`projectId`/locations/`locationId`".
        # @param [Google::Apis::ComposerV1beta1::Environment] environment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_environment(parent, environment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/environments', options)
          command.request_representation = Google::Apis::ComposerV1beta1::Environment::Representation
          command.request_object = environment_object
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Triggers database failover (only for highly resilient environments).
        # @param [String] environment
        #   Target environment: "projects/`projectId`/locations/`locationId`/environments/`
        #   environmentId`"
        # @param [Google::Apis::ComposerV1beta1::DatabaseFailoverRequest] database_failover_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def database_environment_failover(environment, database_failover_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+environment}:databaseFailover', options)
          command.request_representation = Google::Apis::ComposerV1beta1::DatabaseFailoverRequest::Representation
          command.request_object = database_failover_request_object
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an environment.
        # @param [String] name
        #   The environment to delete, in the form: "projects/`projectId`/locations/`
        #   locationId`/environments/`environmentId`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes Airflow CLI command.
        # @param [String] environment
        #   The resource name of the environment in the form: "projects/`projectId`/
        #   locations/`locationId`/environments/`environmentId`".
        # @param [Google::Apis::ComposerV1beta1::ExecuteAirflowCommandRequest] execute_airflow_command_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::ExecuteAirflowCommandResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::ExecuteAirflowCommandResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_environment_airflow_command(environment, execute_airflow_command_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+environment}:executeAirflowCommand', options)
          command.request_representation = Google::Apis::ComposerV1beta1::ExecuteAirflowCommandRequest::Representation
          command.request_object = execute_airflow_command_request_object
          command.response_representation = Google::Apis::ComposerV1beta1::ExecuteAirflowCommandResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::ExecuteAirflowCommandResponse
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches database properties.
        # @param [String] environment
        #   Required. The resource name of the environment, in the form: "projects/`
        #   projectId`/locations/`locationId`/environments/`environmentId`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::FetchDatabasePropertiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::FetchDatabasePropertiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_environment_database_properties(environment, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+environment}:fetchDatabaseProperties', options)
          command.response_representation = Google::Apis::ComposerV1beta1::FetchDatabasePropertiesResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::FetchDatabasePropertiesResponse
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an existing environment.
        # @param [String] name
        #   The resource name of the environment to get, in the form: "projects/`projectId`
        #   /locations/`locationId`/environments/`environmentId`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ComposerV1beta1::Environment::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List environments.
        # @param [String] parent
        #   List environments in the given project and location, in the form: "projects/`
        #   projectId`/locations/`locationId`"
        # @param [Fixnum] page_size
        #   The maximum number of environments to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/environments', options)
          command.response_representation = Google::Apis::ComposerV1beta1::ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Loads a snapshot of a Cloud Composer environment. As a result of this
        # operation, a snapshot of environment's specified in LoadSnapshotRequest is
        # loaded into the environment.
        # @param [String] environment
        #   The resource name of the target environment in the form: "projects/`projectId`/
        #   locations/`locationId`/environments/`environmentId`"
        # @param [Google::Apis::ComposerV1beta1::LoadSnapshotRequest] load_snapshot_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def load_environment_snapshot(environment, load_snapshot_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+environment}:loadSnapshot', options)
          command.request_representation = Google::Apis::ComposerV1beta1::LoadSnapshotRequest::Representation
          command.request_object = load_snapshot_request_object
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an environment.
        # @param [String] name
        #   The relative resource name of the environment to update, in the form: "
        #   projects/`projectId`/locations/`locationId`/environments/`environmentId`"
        # @param [Google::Apis::ComposerV1beta1::Environment] environment_object
        # @param [String] update_mask
        #   Required. A comma-separated list of paths, relative to `Environment`, of
        #   fields to update. For example, to set the version of scikit-learn to install
        #   in the environment to 0.19.0 and to remove an existing installation of
        #   argparse, the `updateMask` parameter would include the following two `paths`
        #   values: "config.softwareConfig.pypiPackages.scikit-learn" and "config.
        #   softwareConfig.pypiPackages.argparse". The included patch environment would
        #   specify the scikit-learn version as follows: ` "config":` "softwareConfig":` "
        #   pypiPackages":` "scikit-learn":"==0.19.0" ` ` ` ` Note that in the above
        #   example, any existing PyPI packages other than scikit-learn and argparse will
        #   be unaffected. Only one update type may be included in a single request's `
        #   updateMask`. For example, one cannot update both the PyPI packages and labels
        #   in the same request. However, it is possible to update multiple members of a
        #   map field simultaneously in the same request. For example, to set the labels "
        #   label1" and "label2" while clearing "label3" (assuming it already exists), one
        #   can provide the paths "labels.label1", "labels.label2", and "labels.label3"
        #   and populate the patch environment as follows: ` "labels":` "label1":"new-
        #   label1-value" "label2":"new-label2-value" ` ` Note that in the above example,
        #   any existing labels that are not included in the `updateMask` will be
        #   unaffected. It is also possible to replace an entire map field by providing
        #   the map field's path in the `updateMask`. The new value of the field will be
        #   that which is provided in the patch environment. For example, to delete all
        #   pre-existing user-specified PyPI packages and install botocore at version 1.7.
        #   14, the `updateMask` would contain the path "config.softwareConfig.
        #   pypiPackages", and the patch environment would be the following: ` "config":` "
        #   softwareConfig":` "pypiPackages":` "botocore":"==1.7.14" ` ` ` ` **Note:**
        #   Only the following fields can be updated: * `config.softwareConfig.
        #   pypiPackages` * Replace all custom custom PyPI packages. If a replacement
        #   package map is not included in `environment`, all custom PyPI packages are
        #   cleared. It is an error to provide both this mask and a mask specifying an
        #   individual package. * `config.softwareConfig.pypiPackages.`packagename *
        #   Update the custom PyPI package *packagename*, preserving other packages. To
        #   delete the package, include it in `updateMask`, and omit the mapping for it in
        #   `environment.config.softwareConfig.pypiPackages`. It is an error to provide
        #   both a mask of this form and the `config.softwareConfig.pypiPackages` mask. * `
        #   labels` * Replace all environment labels. If a replacement labels map is not
        #   included in `environment`, all labels are cleared. It is an error to provide
        #   both this mask and a mask specifying one or more individual labels. * `labels.`
        #   labelName * Set the label named *labelName*, while preserving other labels. To
        #   delete the label, include it in `updateMask` and omit its mapping in `
        #   environment.labels`. It is an error to provide both a mask of this form and
        #   the `labels` mask. * `config.nodeCount` * Horizontally scale the number of
        #   nodes in the environment. An integer greater than or equal to 3 must be
        #   provided in the `config.nodeCount` field. Supported for Cloud Composer
        #   environments in versions composer-1.*.*-airflow-*.*.*. * `config.
        #   webServerNetworkAccessControl` * Replace the environment's current
        #   WebServerNetworkAccessControl. * `config.softwareConfig.airflowConfigOverrides`
        #   * Replace all Apache Airflow config overrides. If a replacement config
        #   overrides map is not included in `environment`, all config overrides are
        #   cleared. It is an error to provide both this mask and a mask specifying one or
        #   more individual config overrides. * `config.softwareConfig.
        #   airflowConfigOverrides.`section-name * Override the Apache Airflow config
        #   property *name* in the section named *section*, preserving other properties.
        #   To delete the property override, include it in `updateMask` and omit its
        #   mapping in `environment.config.softwareConfig.airflowConfigOverrides`. It is
        #   an error to provide both a mask of this form and the `config.softwareConfig.
        #   airflowConfigOverrides` mask. * `config.softwareConfig.envVariables` * Replace
        #   all environment variables. If a replacement environment variable map is not
        #   included in `environment`, all custom environment variables are cleared. * `
        #   config.softwareConfig.imageVersion` * Upgrade the version of the environment
        #   in-place. Refer to `SoftwareConfig.image_version` for information on how to
        #   format the new image version. Additionally, the new image version cannot
        #   effect a version downgrade, and must match the current image version's
        #   Composer and Airflow major versions. Consult the [Cloud Composer version list](
        #   /composer/docs/concepts/versioning/composer-versions) for valid values. * `
        #   config.softwareConfig.schedulerCount` * Horizontally scale the number of
        #   schedulers in Airflow. A positive integer not greater than the number of nodes
        #   must be provided in the `config.softwareConfig.schedulerCount` field.
        #   Supported for Cloud Composer environments in versions composer-1.*.*-airflow-2.
        #   *.*. * `config.softwareConfig.cloudDataLineageIntegration` * Configuration for
        #   Cloud Data Lineage integration. * `config.databaseConfig.machineType` * Cloud
        #   SQL machine type used by Airflow database. It has to be one of: db-n1-standard-
        #   2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. Supported for
        #   Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. * `
        #   config.webServerConfig.machineType` * Machine type on which Airflow web server
        #   is running. It has to be one of: composer-n1-webserver-2, composer-n1-
        #   webserver-4 or composer-n1-webserver-8. Supported for Cloud Composer
        #   environments in versions composer-1.*.*-airflow-*.*.*. * `config.
        #   maintenanceWindow` * Maintenance window during which Cloud Composer components
        #   may be under maintenance. * `config.workloadsConfig` * The workloads
        #   configuration settings for the GKE cluster associated with the Cloud Composer
        #   environment. Supported for Cloud Composer environments in versions composer-2.*
        #   .*-airflow-*.*.* and newer. * `config.environmentSize` * The size of the Cloud
        #   Composer environment. Supported for Cloud Composer environments in versions
        #   composer-2.*.*-airflow-*.*.* and newer.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_environment(name, environment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ComposerV1beta1::Environment::Representation
          command.request_object = environment_object
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Polls Airflow CLI command execution and fetches logs.
        # @param [String] environment
        #   The resource name of the environment in the form: "projects/`projectId`/
        #   locations/`locationId`/environments/`environmentId`"
        # @param [Google::Apis::ComposerV1beta1::PollAirflowCommandRequest] poll_airflow_command_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::PollAirflowCommandResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::PollAirflowCommandResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def poll_environment_airflow_command(environment, poll_airflow_command_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+environment}:pollAirflowCommand', options)
          command.request_representation = Google::Apis::ComposerV1beta1::PollAirflowCommandRequest::Representation
          command.request_object = poll_airflow_command_request_object
          command.response_representation = Google::Apis::ComposerV1beta1::PollAirflowCommandResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::PollAirflowCommandResponse
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restart Airflow web server.
        # @param [String] name
        #   Required. The resource name of the environment to restart the web server for,
        #   in the form: "projects/`projectId`/locations/`locationId`/environments/`
        #   environmentId`"
        # @param [Google::Apis::ComposerV1beta1::RestartWebServerRequest] restart_web_server_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restart_environment_web_server(name, restart_web_server_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:restartWebServer', options)
          command.request_representation = Google::Apis::ComposerV1beta1::RestartWebServerRequest::Representation
          command.request_object = restart_web_server_request_object
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a snapshots of a Cloud Composer environment. As a result of this
        # operation, snapshot of environment's state is stored in a location specified
        # in the SaveSnapshotRequest.
        # @param [String] environment
        #   The resource name of the source environment in the form: "projects/`projectId`/
        #   locations/`locationId`/environments/`environmentId`"
        # @param [Google::Apis::ComposerV1beta1::SaveSnapshotRequest] save_snapshot_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def save_environment_snapshot(environment, save_snapshot_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+environment}:saveSnapshot', options)
          command.request_representation = Google::Apis::ComposerV1beta1::SaveSnapshotRequest::Representation
          command.request_object = save_snapshot_request_object
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops Airflow CLI command execution.
        # @param [String] environment
        #   The resource name of the environment in the form: "projects/`projectId`/
        #   locations/`locationId`/environments/`environmentId`".
        # @param [Google::Apis::ComposerV1beta1::StopAirflowCommandRequest] stop_airflow_command_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::StopAirflowCommandResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::StopAirflowCommandResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_environment_airflow_command(environment, stop_airflow_command_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+environment}:stopAirflowCommand', options)
          command.request_representation = Google::Apis::ComposerV1beta1::StopAirflowCommandRequest::Representation
          command.request_object = stop_airflow_command_request_object
          command.response_representation = Google::Apis::ComposerV1beta1::StopAirflowCommandResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::StopAirflowCommandResponse
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user workloads ConfigMap. This method is supported for Cloud
        # Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] parent
        #   Required. The environment name to create a ConfigMap for, in the form: "
        #   projects/`projectId`/locations/`locationId`/environments/`environmentId`"
        # @param [Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap] user_workloads_config_map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_environment_user_workloads_config_map(parent, user_workloads_config_map_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/userWorkloadsConfigMaps', options)
          command.request_representation = Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap::Representation
          command.request_object = user_workloads_config_map_object
          command.response_representation = Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap::Representation
          command.response_class = Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user workloads ConfigMap. This method is supported for Cloud
        # Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] name
        #   Required. The ConfigMap to delete, in the form: "projects/`projectId`/
        #   locations/`locationId`/environments/`environmentId`/userWorkloadsConfigMaps/`
        #   userWorkloadsConfigMapId`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_environment_user_workloads_config_map(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ComposerV1beta1::Empty::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an existing user workloads ConfigMap. This method is supported for Cloud
        # Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] name
        #   Required. The resource name of the ConfigMap to get, in the form: "projects/`
        #   projectId`/locations/`locationId`/environments/`environmentId`/
        #   userWorkloadsConfigMaps/`userWorkloadsConfigMapId`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_environment_user_workloads_config_map(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap::Representation
          command.response_class = Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists user workloads ConfigMaps. This method is supported for Cloud Composer
        # environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] parent
        #   Required. List ConfigMaps in the given environment, in the form: "projects/`
        #   projectId`/locations/`locationId`/environments/`environmentId`"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of ConfigMaps to return.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::ListUserWorkloadsConfigMapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::ListUserWorkloadsConfigMapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_environment_user_workloads_config_maps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/userWorkloadsConfigMaps', options)
          command.response_representation = Google::Apis::ComposerV1beta1::ListUserWorkloadsConfigMapsResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::ListUserWorkloadsConfigMapsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user workloads ConfigMap. This method is supported for Cloud
        # Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] name
        #   Identifier. The resource name of the ConfigMap, in the form: "projects/`
        #   projectId`/locations/`locationId`/environments/`environmentId`/
        #   userWorkloadsConfigMaps/`userWorkloadsConfigMapId`"
        # @param [Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap] user_workloads_config_map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_environment_user_workloads_config_map(name, user_workloads_config_map_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap::Representation
          command.request_object = user_workloads_config_map_object
          command.response_representation = Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap::Representation
          command.response_class = Google::Apis::ComposerV1beta1::UserWorkloadsConfigMap
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user workloads Secret. This method is supported for Cloud Composer
        # environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] parent
        #   Required. The environment name to create a Secret for, in the form: "projects/`
        #   projectId`/locations/`locationId`/environments/`environmentId`"
        # @param [Google::Apis::ComposerV1beta1::UserWorkloadsSecret] user_workloads_secret_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::UserWorkloadsSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::UserWorkloadsSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_environment_user_workloads_secret(parent, user_workloads_secret_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/userWorkloadsSecrets', options)
          command.request_representation = Google::Apis::ComposerV1beta1::UserWorkloadsSecret::Representation
          command.request_object = user_workloads_secret_object
          command.response_representation = Google::Apis::ComposerV1beta1::UserWorkloadsSecret::Representation
          command.response_class = Google::Apis::ComposerV1beta1::UserWorkloadsSecret
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user workloads Secret. This method is supported for Cloud Composer
        # environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] name
        #   Required. The Secret to delete, in the form: "projects/`projectId`/locations/`
        #   locationId`/environments/`environmentId`/userWorkloadsSecrets/`
        #   userWorkloadsSecretId`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_environment_user_workloads_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ComposerV1beta1::Empty::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an existing user workloads Secret. Values of the "data" field in the
        # response are cleared. This method is supported for Cloud Composer environments
        # in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] name
        #   Required. The resource name of the Secret to get, in the form: "projects/`
        #   projectId`/locations/`locationId`/environments/`environmentId`/
        #   userWorkloadsSecrets/`userWorkloadsSecretId`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::UserWorkloadsSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::UserWorkloadsSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_environment_user_workloads_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ComposerV1beta1::UserWorkloadsSecret::Representation
          command.response_class = Google::Apis::ComposerV1beta1::UserWorkloadsSecret
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists user workloads Secrets. This method is supported for Cloud Composer
        # environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] parent
        #   Required. List Secrets in the given environment, in the form: "projects/`
        #   projectId`/locations/`locationId`/environments/`environmentId`"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of Secrets to return.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::ListUserWorkloadsSecretsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::ListUserWorkloadsSecretsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_environment_user_workloads_secrets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/userWorkloadsSecrets', options)
          command.response_representation = Google::Apis::ComposerV1beta1::ListUserWorkloadsSecretsResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::ListUserWorkloadsSecretsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user workloads Secret. This method is supported for Cloud Composer
        # environments in versions composer-3-airflow-*.*.*-build.* and newer.
        # @param [String] name
        #   Identifier. The resource name of the Secret, in the form: "projects/`projectId`
        #   /locations/`locationId`/environments/`environmentId`/userWorkloadsSecrets/`
        #   userWorkloadsSecretId`"
        # @param [Google::Apis::ComposerV1beta1::UserWorkloadsSecret] user_workloads_secret_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::UserWorkloadsSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::UserWorkloadsSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_environment_user_workloads_secret(name, user_workloads_secret_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ComposerV1beta1::UserWorkloadsSecret::Representation
          command.request_object = user_workloads_secret_object
          command.response_representation = Google::Apis::ComposerV1beta1::UserWorkloadsSecret::Representation
          command.response_class = Google::Apis::ComposerV1beta1::UserWorkloadsSecret
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists workloads in a Cloud Composer environment. Workload is a unit that runs
        # a single Composer component. This method is supported for Cloud Composer
        # environments in versions composer-2.*.*-airflow-*.*.* and newer.
        # @param [String] parent
        #   Required. The environment name to get workloads for, in the form: "projects/`
        #   projectId`/locations/`locationId`/environments/`environmentId`"
        # @param [String] filter
        #   Optional. The list filter. Currently only supports equality on the type field.
        #   The value of a field specified in the filter expression must be one
        #   ComposerWorkloadType enum option. It's possible to get multiple types using "
        #   OR" operator, e.g.: "type=SCHEDULER OR type=CELERY_WORKER". If not specified,
        #   all items are returned.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of environments to return.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::ListWorkloadsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::ListWorkloadsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_environment_workloads(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/workloads', options)
          command.response_representation = Google::Apis::ComposerV1beta1::ListWorkloadsResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::ListWorkloadsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List ImageVersions for provided location.
        # @param [String] parent
        #   List ImageVersions in the given project and location, in the form: "projects/`
        #   projectId`/locations/`locationId`"
        # @param [Boolean] include_past_releases
        #   Whether or not image versions from old releases should be included.
        # @param [Fixnum] page_size
        #   The maximum number of image_versions to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::ListImageVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::ListImageVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_image_versions(parent, include_past_releases: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/imageVersions', options)
          command.response_representation = Google::Apis::ComposerV1beta1::ListImageVersionsResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::ListImageVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['includePastReleases'] = include_past_releases unless include_past_releases.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ComposerV1beta1::Empty::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ComposerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ComposerV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComposerV1beta1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComposerV1beta1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::ComposerV1beta1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ComposerV1beta1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
