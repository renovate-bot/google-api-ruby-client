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
    module JobsV4
      # Cloud Talent Solution API
      #
      # Cloud Talent Solution provides the capability to create, read, update, and
      #  delete job postings, as well as search jobs based on keywords and filters.
      #
      # @example
      #    require 'google/apis/jobs_v4'
      #
      #    Jobs = Google::Apis::JobsV4 # Alias the module
      #    service = Jobs::CloudTalentSolutionService.new
      #
      # @see https://cloud.google.com/talent-solution/job-search/docs/
      class CloudTalentSolutionService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://jobs.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-jobs_v4',
                client_version: Google::Apis::JobsV4::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::JobsV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::JobsV4::Operation::Representation
          command.response_class = Google::Apis::JobsV4::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified prefix with keyword suggestions. Intended for use by a
        # job search auto-complete search box.
        # @param [String] tenant
        #   Required. Resource name of tenant the completion is performed within. The
        #   format is "projects/`project_id`/tenants/`tenant_id`", for example, "projects/
        #   foo/tenants/bar".
        # @param [String] company
        #   If provided, restricts completion to specified company. The format is "
        #   projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for example,
        #   "projects/foo/tenants/bar/companies/baz".
        # @param [Array<String>, String] language_codes
        #   The list of languages of the query. This is the BCP-47 language code, such as "
        #   en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages]
        #   (https://tools.ietf.org/html/bcp47). The maximum number of allowed characters
        #   is 255.
        # @param [Fixnum] page_size
        #   Required. Completion result count. The maximum allowed page size is 10.
        # @param [String] query
        #   Required. The query used to generate suggestions. The maximum number of
        #   allowed characters is 255.
        # @param [String] scope
        #   The scope of the completion. The defaults is CompletionScope.PUBLIC.
        # @param [String] type
        #   The completion topic. The default is CompletionType.COMBINED.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::CompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::CompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_tenant_query(tenant, company: nil, language_codes: nil, page_size: nil, query: nil, scope: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+tenant}:completeQuery', options)
          command.response_representation = Google::Apis::JobsV4::CompleteQueryResponse::Representation
          command.response_class = Google::Apis::JobsV4::CompleteQueryResponse
          command.params['tenant'] = tenant unless tenant.nil?
          command.query['company'] = company unless company.nil?
          command.query['languageCodes'] = language_codes unless language_codes.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['scope'] = scope unless scope.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new tenant entity.
        # @param [String] parent
        #   Required. Resource name of the project under which the tenant is created. The
        #   format is "projects/`project_id`", for example, "projects/foo".
        # @param [Google::Apis::JobsV4::Tenant] tenant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant(parent, tenant_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/tenants', options)
          command.request_representation = Google::Apis::JobsV4::Tenant::Representation
          command.request_object = tenant_object
          command.response_representation = Google::Apis::JobsV4::Tenant::Representation
          command.response_class = Google::Apis::JobsV4::Tenant
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes specified tenant.
        # @param [String] name
        #   Required. The resource name of the tenant to be deleted. The format is "
        #   projects/`project_id`/tenants/`tenant_id`", for example, "projects/foo/tenants/
        #   bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::JobsV4::Empty::Representation
          command.response_class = Google::Apis::JobsV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves specified tenant.
        # @param [String] name
        #   Required. The resource name of the tenant to be retrieved. The format is "
        #   projects/`project_id`/tenants/`tenant_id`", for example, "projects/foo/tenants/
        #   bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::JobsV4::Tenant::Representation
          command.response_class = Google::Apis::JobsV4::Tenant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all tenants associated with the project.
        # @param [String] parent
        #   Required. Resource name of the project under which the tenant is created. The
        #   format is "projects/`project_id`", for example, "projects/foo".
        # @param [Fixnum] page_size
        #   The maximum number of tenants to be returned, at most 100. Default is 100 if a
        #   non-positive number is provided.
        # @param [String] page_token
        #   The starting indicator from which to return results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::ListTenantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::ListTenantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/tenants', options)
          command.response_representation = Google::Apis::JobsV4::ListTenantsResponse::Representation
          command.response_class = Google::Apis::JobsV4::ListTenantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified tenant.
        # @param [String] name
        #   Required during tenant update. The resource name for a tenant. This is
        #   generated by the service when a tenant is created. The format is "projects/`
        #   project_id`/tenants/`tenant_id`", for example, "projects/foo/tenants/bar".
        # @param [Google::Apis::JobsV4::Tenant] tenant_object
        # @param [String] update_mask
        #   Strongly recommended for the best service experience. If update_mask is
        #   provided, only the specified fields in tenant are updated. Otherwise all the
        #   fields are updated. A field mask to specify the tenant fields to be updated.
        #   Only top level fields of Tenant are supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant(name, tenant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::JobsV4::Tenant::Representation
          command.request_object = tenant_object
          command.response_representation = Google::Apis::JobsV4::Tenant::Representation
          command.response_class = Google::Apis::JobsV4::Tenant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report events issued when end user interacts with customer's application that
        # uses Cloud Talent Solution. You may inspect the created events in [self
        # service tools](https://console.cloud.google.com/talent-solution/overview). [
        # Learn more](https://cloud.google.com/talent-solution/docs/management-tools)
        # about self service tools.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the event is created. The
        #   format is "projects/`project_id`/tenants/`tenant_id`", for example, "projects/
        #   foo/tenants/bar".
        # @param [Google::Apis::JobsV4::ClientEvent] client_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::ClientEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::ClientEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_client_event(parent, client_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/clientEvents', options)
          command.request_representation = Google::Apis::JobsV4::ClientEvent::Representation
          command.request_object = client_event_object
          command.response_representation = Google::Apis::JobsV4::ClientEvent::Representation
          command.response_class = Google::Apis::JobsV4::ClientEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new company entity.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the company is created. The
        #   format is "projects/`project_id`/tenants/`tenant_id`", for example, "projects/
        #   foo/tenants/bar".
        # @param [Google::Apis::JobsV4::Company] company_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_company(parent, company_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/companies', options)
          command.request_representation = Google::Apis::JobsV4::Company::Representation
          command.request_object = company_object
          command.response_representation = Google::Apis::JobsV4::Company::Representation
          command.response_class = Google::Apis::JobsV4::Company
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes specified company. Prerequisite: The company has no jobs associated
        # with it.
        # @param [String] name
        #   Required. The resource name of the company to be deleted. The format is "
        #   projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for example,
        #   "projects/foo/tenants/bar/companies/baz".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_company(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::JobsV4::Empty::Representation
          command.response_class = Google::Apis::JobsV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves specified company.
        # @param [String] name
        #   Required. The resource name of the company to be retrieved. The format is "
        #   projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for example,
        #   "projects/api-test-project/tenants/foo/companies/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_company(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::JobsV4::Company::Representation
          command.response_class = Google::Apis::JobsV4::Company
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all companies associated with the project.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the company is created. The
        #   format is "projects/`project_id`/tenants/`tenant_id`", for example, "projects/
        #   foo/tenants/bar".
        # @param [Fixnum] page_size
        #   The maximum number of companies to be returned, at most 100. Default is 100 if
        #   a non-positive number is provided.
        # @param [String] page_token
        #   The starting indicator from which to return results.
        # @param [Boolean] require_open_jobs
        #   Set to true if the companies requested must have open jobs. Defaults to false.
        #   If true, at most page_size of companies are fetched, among which only those
        #   with open jobs are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::ListCompaniesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::ListCompaniesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_companies(parent, page_size: nil, page_token: nil, require_open_jobs: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/companies', options)
          command.response_representation = Google::Apis::JobsV4::ListCompaniesResponse::Representation
          command.response_class = Google::Apis::JobsV4::ListCompaniesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['requireOpenJobs'] = require_open_jobs unless require_open_jobs.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified company.
        # @param [String] name
        #   Required during company update. The resource name for a company. This is
        #   generated by the service when a company is created. The format is "projects/`
        #   project_id`/tenants/`tenant_id`/companies/`company_id`", for example, "
        #   projects/foo/tenants/bar/companies/baz".
        # @param [Google::Apis::JobsV4::Company] company_object
        # @param [String] update_mask
        #   Strongly recommended for the best service experience. If update_mask is
        #   provided, only the specified fields in company are updated. Otherwise all the
        #   fields are updated. A field mask to specify the company fields to be updated.
        #   Only top level fields of Company are supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_company(name, company_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::JobsV4::Company::Representation
          command.request_object = company_object
          command.response_representation = Google::Apis::JobsV4::Company::Representation
          command.response_class = Google::Apis::JobsV4::Company
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins executing a batch create jobs operation.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created. The
        #   format is "projects/`project_id`/tenants/`tenant_id`". For example, "projects/
        #   foo/tenants/bar".
        # @param [Google::Apis::JobsV4::BatchCreateJobsRequest] batch_create_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_tenant_job_create(parent, batch_create_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/jobs:batchCreate', options)
          command.request_representation = Google::Apis::JobsV4::BatchCreateJobsRequest::Representation
          command.request_object = batch_create_jobs_request_object
          command.response_representation = Google::Apis::JobsV4::Operation::Representation
          command.response_class = Google::Apis::JobsV4::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins executing a batch delete jobs operation.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created. The
        #   format is "projects/`project_id`/tenants/`tenant_id`". For example, "projects/
        #   foo/tenants/bar". The parent of all of the jobs specified in `names` must
        #   match this field.
        # @param [Google::Apis::JobsV4::BatchDeleteJobsRequest] batch_delete_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_tenant_job_delete(parent, batch_delete_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/jobs:batchDelete', options)
          command.request_representation = Google::Apis::JobsV4::BatchDeleteJobsRequest::Representation
          command.request_object = batch_delete_jobs_request_object
          command.response_representation = Google::Apis::JobsV4::Operation::Representation
          command.response_class = Google::Apis::JobsV4::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins executing a batch update jobs operation.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created. The
        #   format is "projects/`project_id`/tenants/`tenant_id`". For example, "projects/
        #   foo/tenants/bar".
        # @param [Google::Apis::JobsV4::BatchUpdateJobsRequest] batch_update_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_tenant_job_update(parent, batch_update_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/jobs:batchUpdate', options)
          command.request_representation = Google::Apis::JobsV4::BatchUpdateJobsRequest::Representation
          command.request_object = batch_update_jobs_request_object
          command.response_representation = Google::Apis::JobsV4::Operation::Representation
          command.response_class = Google::Apis::JobsV4::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new job. Typically, the job becomes searchable within 10 seconds,
        # but it may take up to 5 minutes.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created. The
        #   format is "projects/`project_id`/tenants/`tenant_id`". For example, "projects/
        #   foo/tenants/bar".
        # @param [Google::Apis::JobsV4::Job] job_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_job(parent, job_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/jobs', options)
          command.request_representation = Google::Apis::JobsV4::Job::Representation
          command.request_object = job_object
          command.response_representation = Google::Apis::JobsV4::Job::Representation
          command.response_class = Google::Apis::JobsV4::Job
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified job. Typically, the job becomes unsearchable within 10
        # seconds, but it may take up to 5 minutes.
        # @param [String] name
        #   Required. The resource name of the job to be deleted. The format is "projects/`
        #   project_id`/tenants/`tenant_id`/jobs/`job_id`". For example, "projects/foo/
        #   tenants/bar/jobs/baz".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::JobsV4::Empty::Representation
          command.response_class = Google::Apis::JobsV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified job, whose status is OPEN or recently EXPIRED within
        # the last 90 days.
        # @param [String] name
        #   Required. The resource name of the job to retrieve. The format is "projects/`
        #   project_id`/tenants/`tenant_id`/jobs/`job_id`". For example, "projects/foo/
        #   tenants/bar/jobs/baz".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::JobsV4::Job::Representation
          command.response_class = Google::Apis::JobsV4::Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists jobs by filter.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created. The
        #   format is "projects/`project_id`/tenants/`tenant_id`". For example, "projects/
        #   foo/tenants/bar".
        # @param [String] filter
        #   Required. The filter string specifies the jobs to be enumerated. Supported
        #   operator: =, AND The fields eligible for filtering are: * `companyName` * `
        #   requisitionId` * `status` Available values: OPEN, EXPIRED, ALL. Defaults to
        #   OPEN if no value is specified. At least one of `companyName` and `
        #   requisitionId` must present or an INVALID_ARGUMENT error is thrown. Sample
        #   Query: * companyName = "projects/foo/tenants/bar/companies/baz" * companyName =
        #   "projects/foo/tenants/bar/companies/baz" AND requisitionId = "req-1" *
        #   companyName = "projects/foo/tenants/bar/companies/baz" AND status = "EXPIRED" *
        #   requisitionId = "req-1" * requisitionId = "req-1" AND status = "EXPIRED"
        # @param [String] job_view
        #   The desired job attributes returned for jobs in the search response. Defaults
        #   to JobView.JOB_VIEW_FULL if no value is specified.
        # @param [Fixnum] page_size
        #   The maximum number of jobs to be returned per page of results. If job_view is
        #   set to JobView.JOB_VIEW_ID_ONLY, the maximum allowed page size is 1000.
        #   Otherwise, the maximum allowed page size is 100. Default is 100 if empty or a
        #   number < 1 is specified.
        # @param [String] page_token
        #   The starting point of a query result.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_jobs(parent, filter: nil, job_view: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/jobs', options)
          command.response_representation = Google::Apis::JobsV4::ListJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4::ListJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['jobView'] = job_view unless job_view.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified job. Typically, updated contents become visible in search
        # results within 10 seconds, but it may take up to 5 minutes.
        # @param [String] name
        #   Required during job update. The resource name for the job. This is generated
        #   by the service when a job is created. The format is "projects/`project_id`/
        #   tenants/`tenant_id`/jobs/`job_id`". For example, "projects/foo/tenants/bar/
        #   jobs/baz". Use of this field in job queries and API calls is preferred over
        #   the use of requisition_id since this value is unique.
        # @param [Google::Apis::JobsV4::Job] job_object
        # @param [String] update_mask
        #   Strongly recommended for the best service experience. If update_mask is
        #   provided, only the specified fields in job are updated. Otherwise all the
        #   fields are updated. A field mask to restrict the fields that are updated. Only
        #   top level fields of Job are supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_job(name, job_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::JobsV4::Job::Representation
          command.request_object = job_object
          command.response_representation = Google::Apis::JobsV4::Job::Representation
          command.response_class = Google::Apis::JobsV4::Job
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for jobs using the provided SearchJobsRequest. This call constrains
        # the visibility of jobs present in the database, and only returns jobs that the
        # caller has permission to search against.
        # @param [String] parent
        #   Required. The resource name of the tenant to search within. The format is "
        #   projects/`project_id`/tenants/`tenant_id`". For example, "projects/foo/tenants/
        #   bar".
        # @param [Google::Apis::JobsV4::SearchJobsRequest] search_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::SearchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::SearchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_tenant_jobs(parent, search_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/jobs:search', options)
          command.request_representation = Google::Apis::JobsV4::SearchJobsRequest::Representation
          command.request_object = search_jobs_request_object
          command.response_representation = Google::Apis::JobsV4::SearchJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4::SearchJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for jobs using the provided SearchJobsRequest. This API call is
        # intended for the use case of targeting passive job seekers (for example, job
        # seekers who have signed up to receive email alerts about potential job
        # opportunities), it has different algorithmic adjustments that are designed to
        # specifically target passive job seekers. This call constrains the visibility
        # of jobs present in the database, and only returns jobs the caller has
        # permission to search against.
        # @param [String] parent
        #   Required. The resource name of the tenant to search within. The format is "
        #   projects/`project_id`/tenants/`tenant_id`". For example, "projects/foo/tenants/
        #   bar".
        # @param [Google::Apis::JobsV4::SearchJobsRequest] search_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4::SearchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4::SearchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_tenant_job_for_alert(parent, search_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/jobs:searchForAlert', options)
          command.request_representation = Google::Apis::JobsV4::SearchJobsRequest::Representation
          command.request_object = search_jobs_request_object
          command.response_representation = Google::Apis::JobsV4::SearchJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4::SearchJobsResponse
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
