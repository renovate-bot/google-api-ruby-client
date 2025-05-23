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
    module ArtifactregistryV1
      # Artifact Registry API
      #
      # Store and manage build artifacts in a scalable and integrated service built on
      #  Google infrastructure.
      #
      # @example
      #    require 'google/apis/artifactregistry_v1'
      #
      #    Artifactregistry = Google::Apis::ArtifactregistryV1 # Alias the module
      #    service = Artifactregistry::ArtifactRegistryService.new
      #
      # @see https://cloud.google.com/artifacts/docs/
      class ArtifactRegistryService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://artifactregistry.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-artifactregistry_v1',
                client_version: Google::Apis::ArtifactregistryV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves the Settings for the Project.
        # @param [String] name
        #   Required. The name of the projectSettings resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ProjectSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ProjectSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_project_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ProjectSettings::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ProjectSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Settings for the Project.
        # @param [String] name
        #   The name of the project's settings. Always of the form: projects/`project-id`/
        #   projectSettings In update request: never set In response: always set
        # @param [Google::Apis::ArtifactregistryV1::ProjectSettings] project_settings_object
        # @param [String] update_mask
        #   Field mask to support partial updates.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ProjectSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ProjectSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_project_settings(name, project_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::ProjectSettings::Representation
          command.request_object = project_settings_object
          command.response_representation = Google::Apis::ArtifactregistryV1::ProjectSettings::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ProjectSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Location::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the VPCSC Config for the Project.
        # @param [String] name
        #   Required. The name of the VPCSCConfig resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::VpcscConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::VpcscConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_vpcsc_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::VpcscConfig::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::VpcscConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. A list of extra location types that should be used as conditions for
        #   controlling the visibility of the locations.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the VPCSC Config for the Project.
        # @param [String] name
        #   The name of the project's VPC SC Config. Always of the form: projects/`
        #   projectID`/locations/`location`/vpcscConfig In update request: never set In
        #   response: always set
        # @param [Google::Apis::ArtifactregistryV1::VpcscConfig] vpcsc_config_object
        # @param [String] update_mask
        #   Field mask to support partial updates.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::VpcscConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::VpcscConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_vpcsc_config(name, vpcsc_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::VpcscConfig::Representation
          command.request_object = vpcsc_config_object
          command.response_representation = Google::Apis::ArtifactregistryV1::VpcscConfig::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::VpcscConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a repository. The returned Operation will finish once the repository
        # has been created. Its response will be the created Repository.
        # @param [String] parent
        #   Required. The name of the parent resource where the repository will be created.
        # @param [Google::Apis::ArtifactregistryV1::Repository] repository_object
        # @param [String] repository_id
        #   Required. The repository id to use for this repository.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository(parent, repository_object = nil, repository_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/repositories', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::Repository::Representation
          command.request_object = repository_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['repositoryId'] = repository_id unless repository_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a repository and all of its contents. The returned Operation will
        # finish once the repository has been deleted. It will not have any Operation
        # metadata and will return a google.protobuf.Empty response.
        # @param [String] name
        #   Required. The name of the repository to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a repository.
        # @param [String] name
        #   Required. The name of the repository to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Repository] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Repository]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Repository::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Repository
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM policy for a given resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Policy::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists repositories.
        # @param [String] parent
        #   Required. The name of the parent resource whose repositories will be listed.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Filter rules
        #   are case insensitive. The fields eligible for filtering are: * `name` Examples
        #   of using a filter: To filter the results of your request to repositories with
        #   the name `my-repo` in project `my-project` in the `us-central` region, append
        #   the following filter expression to your request: * `name="projects/my-project/
        #   locations/us-central1/repositories/my-repo"` You can also use wildcards to
        #   match any number of characters before or after the value: * `name="projects/my-
        #   project/locations/us-central1/repositories/my-*"` * `name="projects/my-project/
        #   locations/us-central1/repositories/*repo"` * `name="projects/my-project/
        #   locations/us-central1/repositories/*repo*"`
        # @param [String] order_by
        #   Optional. The field to order the results by.
        # @param [Fixnum] page_size
        #   The maximum number of repositories to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListRepositoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListRepositoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repositories(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/repositories', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListRepositoriesResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListRepositoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a repository.
        # @param [String] name
        #   The name of the repository, for example: `projects/p1/locations/us-central1/
        #   repositories/repo1`. For each location in a project, repository names must be
        #   unique.
        # @param [Google::Apis::ArtifactregistryV1::Repository] repository_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Repository] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Repository]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository(name, repository_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::Repository::Representation
          command.request_object = repository_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Repository::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Repository
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the IAM policy for a given resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ArtifactregistryV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_repository_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Policy::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests if the caller has a list of permissions on a resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ArtifactregistryV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_repository_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports Apt artifacts. The returned Operation will complete once the resources
        # are imported. Package, Version, and File resources are created based on the
        # imported artifacts. Imported artifacts that conflict with existing resources
        # are ignored.
        # @param [String] parent
        #   The name of the parent resource where the artifacts will be imported.
        # @param [Google::Apis::ArtifactregistryV1::ImportAptArtifactsRequest] import_apt_artifacts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_apt_artifacts(parent, import_apt_artifacts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/aptArtifacts:import', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::ImportAptArtifactsRequest::Representation
          command.request_object = import_apt_artifacts_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Directly uploads an Apt artifact. The returned Operation will complete once
        # the resources are uploaded. Package, Version, and File resources are created
        # based on the imported artifact. Imported artifacts that conflict with existing
        # resources are ignored.
        # @param [String] parent
        #   The name of the parent resource where the artifacts will be uploaded.
        # @param [Google::Apis::ArtifactregistryV1::UploadAptArtifactRequest] upload_apt_artifact_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::UploadAptArtifactMediaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::UploadAptArtifactMediaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_apt_artifact(parent, upload_apt_artifact_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+parent}/aptArtifacts:create', options)
          else
            command = make_upload_command(:post, 'v1/{+parent}/aptArtifacts:create', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ArtifactregistryV1::UploadAptArtifactRequest::Representation
          command.request_object = upload_apt_artifact_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::UploadAptArtifactMediaResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::UploadAptArtifactMediaResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an attachment. The returned Operation will finish once the attachment
        # has been created. Its response will be the created attachment.
        # @param [String] parent
        #   Required. The name of the parent resource where the attachment will be created.
        # @param [Google::Apis::ArtifactregistryV1::Attachment] attachment_object
        # @param [String] attachment_id
        #   Required. The attachment id to use for this attachment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_attachment(parent, attachment_object = nil, attachment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/attachments', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::Attachment::Representation
          command.request_object = attachment_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['attachmentId'] = attachment_id unless attachment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an attachment. The returned Operation will finish once the attachments
        # has been deleted. It will not have any Operation metadata and will return a `
        # google.protobuf.Empty` response.
        # @param [String] name
        #   Required. The name of the attachment to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an attachment.
        # @param [String] name
        #   Required. The name of the attachment to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Attachment::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Attachment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists attachments.
        # @param [String] parent
        #   Required. The name of the parent resource whose attachments will be listed.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Filter rules
        #   are case insensitive. The fields eligible for filtering are: * `target` * `
        #   type` * `attachment_namespace`
        # @param [Fixnum] page_size
        #   The maximum number of attachments to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListAttachmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListAttachmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_attachments(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/attachments', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListAttachmentsResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListAttachmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a docker image.
        # @param [String] name
        #   Required. The name of the docker images.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::DockerImage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::DockerImage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_docker_image(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::DockerImage::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::DockerImage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists docker images.
        # @param [String] parent
        #   Required. The name of the parent resource whose docker images will be listed.
        # @param [String] order_by
        #   The field to order the results by.
        # @param [Fixnum] page_size
        #   The maximum number of artifacts to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListDockerImagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListDockerImagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_docker_images(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dockerImages', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListDockerImagesResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListDockerImagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a file and all of its content. It is only allowed on generic
        # repositories. The returned operation will complete once the file has been
        # deleted.
        # @param [String] name
        #   Required. The name of the file to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_file(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Download a file.
        # @param [String] name
        #   Required. The name of the file to download.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::DownloadFileResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::DownloadFileResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_project_location_repository_file(name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'v1/{+name}:download', options)
          else
            command = make_download_command(:get, 'v1/{+name}:download', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::ArtifactregistryV1::DownloadFileResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::DownloadFileResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a file.
        # @param [String] name
        #   Required. The name of the file to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_file(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists files.
        # @param [String] parent
        #   Required. The name of the repository whose files will be listed. For example: "
        #   projects/p1/locations/us-central1/repositories/repo1
        # @param [String] filter
        #   An expression for filtering the results of the request. Filter rules are case
        #   insensitive. The fields eligible for filtering are: * `name` * `owner` * `
        #   annotations` Examples of using a filter: To filter the results of your request
        #   to files with the name `my_file.txt` in project `my-project` in the `us-
        #   central` region, in repository `my-repo`, append the following filter
        #   expression to your request: * `name="projects/my-project/locations/us-central1/
        #   repositories/my-repo/files/my-file.txt"` You can also use wildcards to match
        #   any number of characters before or after the value: * `name="projects/my-
        #   project/locations/us-central1/repositories/my-repo/files/my-*"` * `name="
        #   projects/my-project/locations/us-central1/repositories/my-repo/files/*file.txt"
        #   ` * `name="projects/my-project/locations/us-central1/repositories/my-repo/
        #   files/*file*"` To filter the results of your request to files owned by the
        #   version `1.0` in package `pkg1`, append the following filter expression to
        #   your request: * `owner="projects/my-project/locations/us-central1/repositories/
        #   my-repo/packages/my-package/versions/1.0"` To filter the results of your
        #   request to files with the annotation key-value pair [`external_link`: `
        #   external_link_value`], append the following filter expression to your request:
        #   * `"annotations.external_link:external_link_value"` To filter just for a
        #   specific annotation key `external_link`, append the following filter
        #   expression to your request: * `"annotations.external_link"` If the annotation
        #   key or value contains special characters, you can escape them by surrounding
        #   the value with backticks. For example, to filter the results of your request
        #   to files with the annotation key-value pair [`external.link`:`https://example.
        #   com/my-file`], append the following filter expression to your request: * `` "
        #   annotations.`external.link`:`https://example.com/my-file`" `` You can also
        #   filter with annotations with a wildcard to match any number of characters
        #   before or after the value: * `` "annotations.*_link:`*example.com*`" ``
        # @param [String] order_by
        #   The field to order the results by.
        # @param [Fixnum] page_size
        #   The maximum number of files to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListFilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListFilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_files(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/files', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListFilesResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListFilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a file.
        # @param [String] name
        #   The name of the file, for example: `projects/p1/locations/us-central1/
        #   repositories/repo1/files/a%2Fb%2Fc.txt`. If the file ID part contains slashes,
        #   they are escaped.
        # @param [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File] google_devtools_artifactregistry_v1_file_object
        # @param [String] update_mask
        #   Required. The update mask applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_file(name, google_devtools_artifactregistry_v1_file_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File::Representation
          command.request_object = google_devtools_artifactregistry_v1_file_object
          command.response_representation = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1File
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Directly uploads a file to a repository. The returned Operation will complete
        # once the resources are uploaded.
        # @param [String] parent
        #   Required. The resource name of the repository where the file will be uploaded.
        # @param [Google::Apis::ArtifactregistryV1::UploadFileRequest] upload_file_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::UploadFileMediaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::UploadFileMediaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_file(parent, upload_file_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+parent}/files:upload', options)
          else
            command = make_upload_command(:post, 'v1/{+parent}/files:upload', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ArtifactregistryV1::UploadFileRequest::Representation
          command.request_object = upload_file_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::UploadFileMediaResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::UploadFileMediaResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Directly uploads a Generic artifact. The returned operation will complete once
        # the resources are uploaded. Package, version, and file resources are created
        # based on the uploaded artifact. Uploaded artifacts that conflict with existing
        # resources will raise an `ALREADY_EXISTS` error.
        # @param [String] parent
        #   The resource name of the repository where the generic artifact will be
        #   uploaded.
        # @param [Google::Apis::ArtifactregistryV1::UploadGenericArtifactRequest] upload_generic_artifact_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::UploadGenericArtifactMediaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::UploadGenericArtifactMediaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_generic_artifact(parent, upload_generic_artifact_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+parent}/genericArtifacts:create', options)
          else
            command = make_upload_command(:post, 'v1/{+parent}/genericArtifacts:create', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ArtifactregistryV1::UploadGenericArtifactRequest::Representation
          command.request_object = upload_generic_artifact_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::UploadGenericArtifactMediaResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::UploadGenericArtifactMediaResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Directly uploads a Go module. The returned Operation will complete once the Go
        # module is uploaded. Package, Version, and File resources are created based on
        # the uploaded Go module.
        # @param [String] parent
        #   The resource name of the repository where the Go module will be uploaded.
        # @param [Google::Apis::ArtifactregistryV1::UploadGoModuleRequest] upload_go_module_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::UploadGoModuleMediaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::UploadGoModuleMediaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_go_module(parent, upload_go_module_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+parent}/goModules:create', options)
          else
            command = make_upload_command(:post, 'v1/{+parent}/goModules:create', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ArtifactregistryV1::UploadGoModuleRequest::Representation
          command.request_object = upload_go_module_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::UploadGoModuleMediaResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::UploadGoModuleMediaResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports GooGet artifacts. The returned Operation will complete once the
        # resources are imported. Package, Version, and File resources are created based
        # on the imported artifacts. Imported artifacts that conflict with existing
        # resources are ignored.
        # @param [String] parent
        #   The name of the parent resource where the artifacts will be imported.
        # @param [Google::Apis::ArtifactregistryV1::ImportGoogetArtifactsRequest] import_googet_artifacts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_googet_artifacts(parent, import_googet_artifacts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/googetArtifacts:import', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::ImportGoogetArtifactsRequest::Representation
          command.request_object = import_googet_artifacts_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Directly uploads a GooGet artifact. The returned Operation will complete once
        # the resources are uploaded. Package, Version, and File resources are created
        # based on the imported artifact. Imported artifacts that conflict with existing
        # resources are ignored.
        # @param [String] parent
        #   The name of the parent resource where the artifacts will be uploaded.
        # @param [Google::Apis::ArtifactregistryV1::UploadGoogetArtifactRequest] upload_googet_artifact_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::UploadGoogetArtifactMediaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::UploadGoogetArtifactMediaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_googet_artifact_goo_get_artifact(parent, upload_googet_artifact_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+parent}/googetArtifacts:create', options)
          else
            command = make_upload_command(:post, 'v1/{+parent}/googetArtifacts:create', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ArtifactregistryV1::UploadGoogetArtifactRequest::Representation
          command.request_object = upload_googet_artifact_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::UploadGoogetArtifactMediaResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::UploadGoogetArtifactMediaResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Directly uploads a KFP artifact. The returned Operation will complete once the
        # resource is uploaded. Package, Version, and File resources will be created
        # based on the uploaded artifact. Uploaded artifacts that conflict with existing
        # resources will be overwritten.
        # @param [String] parent
        #   The resource name of the repository where the KFP artifact will be uploaded.
        # @param [Google::Apis::ArtifactregistryV1::UploadKfpArtifactRequest] upload_kfp_artifact_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::UploadKfpArtifactMediaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::UploadKfpArtifactMediaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_kfp_artifact(parent, upload_kfp_artifact_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+parent}/kfpArtifacts:create', options)
          else
            command = make_upload_command(:post, 'v1/{+parent}/kfpArtifacts:create', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ArtifactregistryV1::UploadKfpArtifactRequest::Representation
          command.request_object = upload_kfp_artifact_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::UploadKfpArtifactMediaResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::UploadKfpArtifactMediaResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a maven artifact.
        # @param [String] name
        #   Required. The name of the maven artifact.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::MavenArtifact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::MavenArtifact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_maven_artifact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::MavenArtifact::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::MavenArtifact
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists maven artifacts.
        # @param [String] parent
        #   Required. The name of the parent resource whose maven artifacts will be listed.
        # @param [Fixnum] page_size
        #   The maximum number of artifacts to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListMavenArtifactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListMavenArtifactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_maven_artifacts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/mavenArtifacts', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListMavenArtifactsResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListMavenArtifactsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a npm package.
        # @param [String] name
        #   Required. The name of the npm package.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::NpmPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::NpmPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_npm_package(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::NpmPackage::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::NpmPackage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists npm packages.
        # @param [String] parent
        #   Required. The name of the parent resource whose npm packages will be listed.
        # @param [Fixnum] page_size
        #   The maximum number of artifacts to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListNpmPackagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListNpmPackagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_npm_packages(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/npmPackages', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListNpmPackagesResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListNpmPackagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a package and all of its versions and tags. The returned operation
        # will complete once the package has been deleted.
        # @param [String] name
        #   Required. The name of the package to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_package(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a package.
        # @param [String] name
        #   Required. The name of the package to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Package] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Package]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_package(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Package::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Package
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists packages.
        # @param [String] parent
        #   Required. The name of the parent resource whose packages will be listed.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Filter rules
        #   are case insensitive. The fields eligible for filtering are: * `name` * `
        #   annotations` Examples of using a filter: To filter the results of your request
        #   to packages with the name `my-package` in project `my-project` in the `us-
        #   central` region, in repository `my-repo`, append the following filter
        #   expression to your request: * `name="projects/my-project/locations/us-central1/
        #   repositories/my-repo/packages/my-package"` You can also use wildcards to match
        #   any number of characters before or after the value: * `name="projects/my-
        #   project/locations/us-central1/repositories/my-repo/packages/my-*"` * `name="
        #   projects/my-project/locations/us-central1/repositories/my-repo/packages/*
        #   package"` * `name="projects/my-project/locations/us-central1/repositories/my-
        #   repo/packages/*pack*"` To filter the results of your request to packages with
        #   the annotation key-value pair [`external_link`: `external_link_value`], append
        #   the following filter expression to your request": * `"annotations.
        #   external_link:external_link_value"` To filter the results just for a specific
        #   annotation key `external_link`, append the following filter expression to your
        #   request: * `"annotations.external_link"` If the annotation key or value
        #   contains special characters, you can escape them by surrounding the value with
        #   backticks. For example, to filter the results of your request to packages with
        #   the annotation key-value pair [`external.link`:`https://example.com/my-package`
        #   ], append the following filter expression to your request: * `` "annotations.`
        #   external.link`:`https://example.com/my-package`" `` You can also filter with
        #   annotations with a wildcard to match any number of characters before or after
        #   the value: * `` "annotations.*_link:`*example.com*`" ``
        # @param [String] order_by
        #   Optional. The field to order the results by.
        # @param [Fixnum] page_size
        #   The maximum number of packages to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListPackagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListPackagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_packages(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/packages', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListPackagesResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListPackagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a package.
        # @param [String] name
        #   The name of the package, for example: `projects/p1/locations/us-central1/
        #   repositories/repo1/packages/pkg1`. If the package ID part contains slashes,
        #   the slashes are escaped.
        # @param [Google::Apis::ArtifactregistryV1::Package] package_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Package] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Package]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_package(name, package_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::Package::Representation
          command.request_object = package_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Package::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Package
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a tag.
        # @param [String] parent
        #   The name of the parent resource where the tag will be created.
        # @param [Google::Apis::ArtifactregistryV1::Tag] tag_object
        # @param [String] tag_id
        #   The tag id to use for this repository.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_package_tag(parent, tag_object = nil, tag_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tags', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::Tag::Representation
          command.request_object = tag_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Tag::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Tag
          command.params['parent'] = parent unless parent.nil?
          command.query['tagId'] = tag_id unless tag_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a tag.
        # @param [String] name
        #   The name of the tag to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_package_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Empty::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a tag.
        # @param [String] name
        #   The name of the tag to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_package_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Tag::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Tag
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists tags.
        # @param [String] parent
        #   The name of the parent package whose tags will be listed. For example: `
        #   projects/p1/locations/us-central1/repositories/repo1/packages/pkg1`.
        # @param [String] filter
        #   An expression for filtering the results of the request. Filter rules are case
        #   insensitive. The fields eligible for filtering are: * `name` * `version`
        #   Examples of using a filter: To filter the results of your request to tags with
        #   the name `my-tag` in package `my-package` in repository `my-repo` in project "`
        #   y-project` in the us-central region, append the following filter expression to
        #   your request: * `name="projects/my-project/locations/us-central1/repositories/
        #   my-repo/packages/my-package/tags/my-tag"` You can also use wildcards to match
        #   any number of characters before or after the value: * `name="projects/my-
        #   project/locations/us-central1/repositories/my-repo/packages/my-package/tags/my*
        #   "` * `name="projects/my-project/locations/us-central1/repositories/my-repo/
        #   packages/my-package/tags/*tag"` * `name="projects/my-project/locations/us-
        #   central1/repositories/my-repo/packages/my-package/tags/*tag*"` To filter the
        #   results of your request to tags applied to the version `1.0` in package `my-
        #   package`, append the following filter expression to your request: * `version="
        #   projects/my-project/locations/us-central1/repositories/my-repo/packages/my-
        #   package/versions/1.0"`
        # @param [Fixnum] page_size
        #   The maximum number of tags to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_package_tags(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/tags', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListTagsResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a tag.
        # @param [String] name
        #   The name of the tag, for example: "projects/p1/locations/us-central1/
        #   repositories/repo1/packages/pkg1/tags/tag1". If the package part contains
        #   slashes, the slashes are escaped. The tag part can only have characters in [a-
        #   zA-Z0-9\-._~:@], anything else must be URL encoded.
        # @param [Google::Apis::ArtifactregistryV1::Tag] tag_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_package_tag(name, tag_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::Tag::Representation
          command.request_object = tag_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Tag::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Tag
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes multiple versions across a repository. The returned operation will
        # complete once the versions have been deleted.
        # @param [String] parent
        #   The name of the repository holding all requested versions.
        # @param [Google::Apis::ArtifactregistryV1::BatchDeleteVersionsRequest] batch_delete_versions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_versions(parent, batch_delete_versions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/versions:batchDelete', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::BatchDeleteVersionsRequest::Representation
          command.request_object = batch_delete_versions_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a version and all of its content. The returned operation will complete
        # once the version has been deleted.
        # @param [String] name
        #   The name of the version to delete.
        # @param [Boolean] force
        #   By default, a version that is tagged may not be deleted. If force=true, the
        #   version and any tags pointing to the version are deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_package_version(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a version
        # @param [String] name
        #   The name of the version to retrieve.
        # @param [String] view
        #   The view that should be returned in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_package_version(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Version::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Version
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists versions.
        # @param [String] parent
        #   The name of the parent resource whose versions will be listed.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Filter rules
        #   are case insensitive. The fields eligible for filtering are: * `name` * `
        #   annotations` Examples of using a filter: To filter the results of your request
        #   to versions with the name `my-version` in project `my-project` in the `us-
        #   central` region, in repository `my-repo`, append the following filter
        #   expression to your request: * `name="projects/my-project/locations/us-central1/
        #   repositories/my-repo/packages/my-package/versions/my-version"` You can also
        #   use wildcards to match any number of characters before or after the value: * `
        #   name="projects/my-project/locations/us-central1/repositories/my-repo/packages/
        #   my-package/versions/*version"` * `name="projects/my-project/locations/us-
        #   central1/repositories/my-repo/packages/my-package/versions/my*"` * `name="
        #   projects/my-project/locations/us-central1/repositories/my-repo/packages/my-
        #   package/versions/*version*"` To filter the results of your request to versions
        #   with the annotation key-value pair [`external_link`: `external_link_value`],
        #   append the following filter expression to your request: * `"annotations.
        #   external_link:external_link_value"` To filter just for a specific annotation
        #   key `external_link`, append the following filter expression to your request: *
        #   `"annotations.external_link"` If the annotation key or value contains special
        #   characters, you can escape them by surrounding the value with backticks. For
        #   example, to filter the results of your request to versions with the annotation
        #   key-value pair [`external.link`:`https://example.com/my-version`], append the
        #   following filter expression to your request: * `` "annotations.`external.link`:
        #   `https://example.com/my-version`" `` You can also filter with annotations with
        #   a wildcard to match any number of characters before or after the value: * `` "
        #   annotations.*_link:`*example.com*`" ``
        # @param [String] order_by
        #   Optional. The field to order the results by.
        # @param [Fixnum] page_size
        #   The maximum number of versions to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] view
        #   The view that should be returned in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_package_versions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListVersionsResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a version.
        # @param [String] name
        #   The name of the version, for example: `projects/p1/locations/us-central1/
        #   repositories/repo1/packages/pkg1/versions/art1`. If the package or version ID
        #   parts contain slashes, the slashes are escaped.
        # @param [Google::Apis::ArtifactregistryV1::Version] version_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_package_version(name, version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::Version::Representation
          command.request_object = version_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Version::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a python package.
        # @param [String] name
        #   Required. The name of the python package.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::PythonPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::PythonPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_python_package(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::PythonPackage::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::PythonPackage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists python packages.
        # @param [String] parent
        #   Required. The name of the parent resource whose python packages will be listed.
        # @param [Fixnum] page_size
        #   The maximum number of artifacts to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListPythonPackagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListPythonPackagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_python_packages(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/pythonPackages', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListPythonPackagesResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListPythonPackagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a rule.
        # @param [String] parent
        #   Required. The name of the parent resource where the rule will be created.
        # @param [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule] google_devtools_artifactregistry_v1_rule_object
        # @param [String] rule_id
        #   The rule id to use for this repository.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_rule(parent, google_devtools_artifactregistry_v1_rule_object = nil, rule_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/rules', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule::Representation
          command.request_object = google_devtools_artifactregistry_v1_rule_object
          command.response_representation = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule
          command.params['parent'] = parent unless parent.nil?
          command.query['ruleId'] = rule_id unless rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a rule.
        # @param [String] name
        #   Required. The name of the rule to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::Empty::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a rule.
        # @param [String] name
        #   Required. The name of the rule to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists rules.
        # @param [String] parent
        #   Required. The name of the parent repository whose rules will be listed. For
        #   example: `projects/p1/locations/us-central1/repositories/repo1`.
        # @param [Fixnum] page_size
        #   The maximum number of rules to return. Maximum page size is 1,000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::ListRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::ListRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_rules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/rules', options)
          command.response_representation = Google::Apis::ArtifactregistryV1::ListRulesResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::ListRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a rule.
        # @param [String] name
        #   The name of the rule, for example: `projects/p1/locations/us-central1/
        #   repositories/repo1/rules/rule1`.
        # @param [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule] google_devtools_artifactregistry_v1_rule_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_rule(name, google_devtools_artifactregistry_v1_rule_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule::Representation
          command.request_object = google_devtools_artifactregistry_v1_rule_object
          command.response_representation = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::GoogleDevtoolsArtifactregistryV1Rule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports Yum (RPM) artifacts. The returned Operation will complete once the
        # resources are imported. Package, Version, and File resources are created based
        # on the imported artifacts. Imported artifacts that conflict with existing
        # resources are ignored.
        # @param [String] parent
        #   The name of the parent resource where the artifacts will be imported.
        # @param [Google::Apis::ArtifactregistryV1::ImportYumArtifactsRequest] import_yum_artifacts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_yum_artifacts(parent, import_yum_artifacts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/yumArtifacts:import', options)
          command.request_representation = Google::Apis::ArtifactregistryV1::ImportYumArtifactsRequest::Representation
          command.request_object = import_yum_artifacts_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::Operation::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Directly uploads a Yum artifact. The returned Operation will complete once the
        # resources are uploaded. Package, Version, and File resources are created based
        # on the imported artifact. Imported artifacts that conflict with existing
        # resources are ignored.
        # @param [String] parent
        #   The name of the parent resource where the artifacts will be uploaded.
        # @param [Google::Apis::ArtifactregistryV1::UploadYumArtifactRequest] upload_yum_artifact_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ArtifactregistryV1::UploadYumArtifactMediaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ArtifactregistryV1::UploadYumArtifactMediaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_yum_artifact(parent, upload_yum_artifact_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+parent}/yumArtifacts:create', options)
          else
            command = make_upload_command(:post, 'v1/{+parent}/yumArtifacts:create', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ArtifactregistryV1::UploadYumArtifactRequest::Representation
          command.request_object = upload_yum_artifact_request_object
          command.response_representation = Google::Apis::ArtifactregistryV1::UploadYumArtifactMediaResponse::Representation
          command.response_class = Google::Apis::ArtifactregistryV1::UploadYumArtifactMediaResponse
          command.params['parent'] = parent unless parent.nil?
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
