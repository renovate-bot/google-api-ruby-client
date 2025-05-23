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
    module DlpV2
      # Sensitive Data Protection (DLP)
      #
      # Discover and protect your sensitive data. A fully managed service designed to
      #  help you discover, classify, and protect your valuable data assets with ease.
      #
      # @example
      #    require 'google/apis/dlp_v2'
      #
      #    Dlp = Google::Apis::DlpV2 # Alias the module
      #    service = Dlp::DLPService.new
      #
      # @see https://cloud.google.com/sensitive-data-protection/docs/
      class DLPService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://dlp.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-dlp_v2',
                client_version: Google::Apis::DlpV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns a list of the sensitive information types that the DLP API supports.
        # See https://cloud.google.com/sensitive-data-protection/docs/infotypes-
        # reference to learn more.
        # @param [String] filter
        #   filter to only return infoTypes supported by certain parts of the API.
        #   Defaults to supported_by=INSPECT.
        # @param [String] language_code
        #   BCP-47 language code for localized infoType friendly names. If omitted, or if
        #   localized strings are not available, en-US strings will be returned.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] parent
        #   The parent resource name. The format of this value is as follows: `locations/`
        #   location_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_info_types(filter: nil, language_code: nil, location_id: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/infoTypes', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of the sensitive information types that the DLP API supports.
        # See https://cloud.google.com/sensitive-data-protection/docs/infotypes-
        # reference to learn more.
        # @param [String] parent
        #   The parent resource name. The format of this value is as follows: `locations/`
        #   location_id``
        # @param [String] filter
        #   filter to only return infoTypes supported by certain parts of the API.
        #   Defaults to supported_by=INSPECT.
        # @param [String] language_code
        #   BCP-47 language code for localized infoType friendly names. If omitted, or if
        #   localized strings are not available, en-US strings will be returned.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_info_types(parent, filter: nil, language_code: nil, location_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/infoTypes', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DeidentifyTemplate for reusing frequently used configuration for de-
        # identifying content, images, and storage. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-templates-deid to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDeidentifyTemplateRequest] google_privacy_dlp_v2_create_deidentify_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_deidentify_template(parent, google_privacy_dlp_v2_create_deidentify_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/deidentifyTemplates', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDeidentifyTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_deidentify_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and deidentify template to be
        #   deleted, for example `organizations/433245324/deidentifyTemplates/432452342`
        #   or projects/project-id/deidentifyTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_deidentify_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and deidentify template to be read,
        #   for example `organizations/433245324/deidentifyTemplates/432452342` or
        #   projects/project-id/deidentifyTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_deidentify_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `create_time`: corresponds to the
        #   time the template was created. - `update_time`: corresponds to the time the
        #   template was last updated. - `name`: corresponds to the template's name. - `
        #   display_name`: corresponds to the template's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListDeidentifyTemplates`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_deidentify_templates(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/deidentifyTemplates', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of organization and deidentify template to be updated,
        #   for example `organizations/433245324/deidentifyTemplates/432452342` or
        #   projects/project-id/deidentifyTemplates/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest] google_privacy_dlp_v2_update_deidentify_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_deidentify_template(name, google_privacy_dlp_v2_update_deidentify_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_deidentify_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an InspectTemplate for reusing frequently used configuration for
        # inspecting content, images, and storage. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-templates to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateInspectTemplateRequest] google_privacy_dlp_v2_create_inspect_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_inspect_template(parent, google_privacy_dlp_v2_create_inspect_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/inspectTemplates', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateInspectTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_inspect_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and inspectTemplate to be deleted,
        #   for example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_inspect_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and inspectTemplate to be read,
        #   for example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_inspect_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-templates to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `create_time`: corresponds to the
        #   time the template was created. - `update_time`: corresponds to the time the
        #   template was last updated. - `name`: corresponds to the template's name. - `
        #   display_name`: corresponds to the template's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListInspectTemplates`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_inspect_templates(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/inspectTemplates', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of organization and inspectTemplate to be updated, for
        #   example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateInspectTemplateRequest] google_privacy_dlp_v2_update_inspect_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_inspect_template(name, google_privacy_dlp_v2_update_inspect_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateInspectTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_inspect_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a column data profile.
        # @param [String] name
        #   Required. Resource name, for example `organizations/12345/locations/us/
        #   columnDataProfiles/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_column_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists column data profiles for an organization.
        # @param [String] parent
        #   Required. Resource name of the organization or project, for example `
        #   organizations/433245324/locations/europe` or `projects/project-id/locations/
        #   asia`.
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values: - `
        #   table_data_profile_name` - The name of the related table data profile. - `
        #   project_id` - The Google Cloud project ID. (REQUIRED) - `dataset_id` - The
        #   BigQuery dataset ID. (REQUIRED) - `table_id` - The BigQuery table ID. (
        #   REQUIRED) - `field_id` - The ID of the BigQuery field. - `info_type` - The
        #   infotype detected in the resource. - `sensitivity_level` - HIGH|MEDIUM|LOW - `
        #   data_risk_level`: How much risk is associated with this data. - `status_code` -
        #   an RPC status code as defined in https://github.com/googleapis/googleapis/
        #   blob/master/google/rpc/code.proto * The operator must be `=` for project_id,
        #   dataset_id, and table_id. Other filters also support `!=`. Examples: *
        #   project_id = 12345 AND status_code = 1 * project_id = 12345 AND
        #   sensitivity_level = HIGH * project_id = 12345 AND info_type = STREET_ADDRESS
        #   The length of this field should be no more than 500 characters.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Only one order field at a time
        #   is allowed. Examples: * `project_id asc` * `table_id` * `sensitivity_level
        #   desc` Supported fields are: - `project_id`: The Google Cloud project ID. - `
        #   dataset_id`: The ID of a BigQuery dataset. - `table_id`: The ID of a BigQuery
        #   table. - `sensitivity_level`: How sensitive the data in a column is, at most. -
        #   `data_risk_level`: How much risk is associated with this data. - `
        #   profile_last_generated`: When the profile was last updated in epoch seconds.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero, server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListColumnDataProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListColumnDataProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_column_data_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/columnDataProfiles', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListColumnDataProfilesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListColumnDataProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a Connection to an external data source.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization): + Projects scope: `
        #   projects/`project_id`/locations/`location_id`` + Organizations scope: `
        #   organizations/`org_id`/locations/`location_id``
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateConnectionRequest] google_privacy_dlp_v2_create_connection_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_connection(parent, google_privacy_dlp_v2_create_connection_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/connections', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateConnectionRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_connection_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a Connection.
        # @param [String] name
        #   Required. Resource name of the Connection to be deleted, in the format: `
        #   projects/`project`/locations/`location`/connections/`connection``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a Connection by name.
        # @param [String] name
        #   Required. Resource name in the format: `projects/`project`/locations/`location`
        #   /connections/`connection``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Connections in a parent. Use SearchConnections to see all connections
        # within an organization.
        # @param [String] parent
        #   Required. Resource name of the organization or project, for example, `
        #   organizations/433245324/locations/europe` or `projects/project-id/locations/
        #   asia`.
        # @param [String] filter
        #   Optional. Supported field/value: `state` - MISSING|AVAILABLE|ERROR
        # @param [Fixnum] page_size
        #   Optional. Number of results per page, max 1000.
        # @param [String] page_token
        #   Optional. Page token from a previous page to return the next set of results.
        #   If set, all other request fields must match the original request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_connections(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/connections', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListConnectionsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a Connection.
        # @param [String] name
        #   Required. Resource name in the format: `projects/`project`/locations/`location`
        #   /connections/`connection``.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateConnectionRequest] google_privacy_dlp_v2_update_connection_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_connection(name, google_privacy_dlp_v2_update_connection_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateConnectionRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_connection_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for Connections in a parent.
        # @param [String] parent
        #   Required. Resource name of the organization or project with a wildcard
        #   location, for example, `organizations/433245324/locations/-` or `projects/
        #   project-id/locations/-`.
        # @param [String] filter
        #   Optional. Supported field/value: - `state` - MISSING|AVAILABLE|ERROR
        # @param [Fixnum] page_size
        #   Optional. Number of results per page, max 1000.
        # @param [String] page_token
        #   Optional. Page token from a previous page to return the next set of results.
        #   If set, all other request fields must match the original request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2SearchConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SearchConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_organization_location_connections(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/connections:search', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2SearchConnectionsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2SearchConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DeidentifyTemplate for reusing frequently used configuration for de-
        # identifying content, images, and storage. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-templates-deid to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDeidentifyTemplateRequest] google_privacy_dlp_v2_create_deidentify_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_deidentify_template(parent, google_privacy_dlp_v2_create_deidentify_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/deidentifyTemplates', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDeidentifyTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_deidentify_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and deidentify template to be
        #   deleted, for example `organizations/433245324/deidentifyTemplates/432452342`
        #   or projects/project-id/deidentifyTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_deidentify_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and deidentify template to be read,
        #   for example `organizations/433245324/deidentifyTemplates/432452342` or
        #   projects/project-id/deidentifyTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_deidentify_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `create_time`: corresponds to the
        #   time the template was created. - `update_time`: corresponds to the time the
        #   template was last updated. - `name`: corresponds to the template's name. - `
        #   display_name`: corresponds to the template's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListDeidentifyTemplates`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_deidentify_templates(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/deidentifyTemplates', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of organization and deidentify template to be updated,
        #   for example `organizations/433245324/deidentifyTemplates/432452342` or
        #   projects/project-id/deidentifyTemplates/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest] google_privacy_dlp_v2_update_deidentify_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_deidentify_template(name, google_privacy_dlp_v2_update_deidentify_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_deidentify_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a config for discovery to scan and profile storage.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization): + Projects scope: `
        #   projects/`project_id`/locations/`location_id`` + Organizations scope: `
        #   organizations/`org_id`/locations/`location_id`` The following example `parent`
        #   string specifies a parent project with the identifier `example-project`, and
        #   specifies the `europe-west3` location for processing data: parent=projects/
        #   example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDiscoveryConfigRequest] google_privacy_dlp_v2_create_discovery_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_discovery_config(parent, google_privacy_dlp_v2_create_discovery_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/discoveryConfigs', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDiscoveryConfigRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_discovery_config_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the project and the config, for example `projects/
        #   dlp-test-project/discoveryConfigs/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_discovery_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the project and the configuration, for example `
        #   projects/dlp-test-project/discoveryConfigs/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_discovery_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists discovery configurations.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value is as follows: `
        #   projects/`project_id`/locations/`location_id`` The following example `parent`
        #   string specifies a parent project with the identifier `example-project`, and
        #   specifies the `europe-west3` location for processing data: parent=projects/
        #   example-project/locations/europe-west3
        # @param [String] order_by
        #   Comma-separated list of config fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `last_run_time`: corresponds to the
        #   last time the DiscoveryConfig ran. - `name`: corresponds to the
        #   DiscoveryConfig's name. - `status`: corresponds to DiscoveryConfig's status.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by a server.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to
        #   ListDiscoveryConfigs. `order_by` field must not change for subsequent calls.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDiscoveryConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDiscoveryConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_discovery_configs(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/discoveryConfigs', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDiscoveryConfigsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDiscoveryConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the project and the configuration, for example `
        #   projects/dlp-test-project/discoveryConfigs/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDiscoveryConfigRequest] google_privacy_dlp_v2_update_discovery_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_discovery_config(name, google_privacy_dlp_v2_update_discovery_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDiscoveryConfigRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_discovery_config_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DlpJobs that match the specified filter in the request. See https://
        # cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://
        # cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn
        # more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values for
        #   inspect jobs: - `state` - PENDING|RUNNING|CANCELED|FINISHED|FAILED - `
        #   inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The
        #   name of the trigger that created the job. - 'end_time` - Corresponds to the
        #   time the job finished. - 'start_time` - Corresponds to the time the job
        #   finished. * Supported fields for risk analysis jobs: - `state` - RUNNING|
        #   CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time the job
        #   finished. - 'start_time` - Corresponds to the time the job finished. * The
        #   operator must be `=` or `!=`. Examples: * inspected_storage = cloud_storage
        #   AND state = done * inspected_storage = cloud_storage OR inspected_storage =
        #   bigquery * inspected_storage = cloud_storage AND (state = done OR state =
        #   canceled) * end_time > \"2017-12-12T00:00:00+00:00\" The length of this field
        #   should be no more than 500 characters.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc, end_time
        #   asc, create_time desc` Supported fields are: - `create_time`: corresponds to
        #   the time the job was created. - `end_time`: corresponds to the time the job
        #   ended. - `name`: corresponds to the job's name. - `state`: corresponds to `
        #   state`
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] type
        #   The type of job. Defaults to `DlpJobType.INSPECT`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_dlp_jobs(parent, filter: nil, location_id: nil, order_by: nil, page_size: nil, page_token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/dlpJobs', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a FileStoreDataProfile. Will not prevent the profile from being
        # regenerated if the resource is still included in a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the file store data profile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_file_store_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a file store data profile.
        # @param [String] name
        #   Required. Resource name, for example `organizations/12345/locations/us/
        #   fileStoreDataProfiles/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_file_store_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists file store data profiles for an organization.
        # @param [String] parent
        #   Required. Resource name of the organization or project, for example `
        #   organizations/433245324/locations/europe` or `projects/project-id/locations/
        #   asia`.
        # @param [String] filter
        #   Optional. Allows filtering. Supported syntax: * Filter expressions are made up
        #   of one or more restrictions. * Restrictions can be combined by `AND` or `OR`
        #   logical operators. A sequence of restrictions implicitly uses `AND`. * A
        #   restriction has the form of ``field` `operator` `value``. * Supported fields/
        #   values: - `project_id` - The Google Cloud project ID. - `account_id` - The AWS
        #   account ID. - `file_store_path` - The path like "gs://bucket". - `
        #   data_source_type` - The profile's data source type, like "google/storage/
        #   bucket". - `data_storage_location` - The location where the file store's data
        #   is stored, like "us-central1". - `sensitivity_level` - HIGH|MODERATE|LOW - `
        #   data_risk_level` - HIGH|MODERATE|LOW - `resource_visibility`: PUBLIC|
        #   RESTRICTED - `status_code` - an RPC status code as defined in https://github.
        #   com/googleapis/googleapis/blob/master/google/rpc/code.proto * The operator
        #   must be `=` or `!=`. Examples: * `project_id = 12345 AND status_code = 1` * `
        #   project_id = 12345 AND sensitivity_level = HIGH` * `project_id = 12345 AND
        #   resource_visibility = PUBLIC` * `file_store_path = "gs://mybucket"` The length
        #   of this field should be no more than 500 characters.
        # @param [String] order_by
        #   Optional. Comma-separated list of fields to order by, followed by `asc` or `
        #   desc` postfix. This list is case insensitive. The default sorting order is
        #   ascending. Redundant space characters are insignificant. Only one order field
        #   at a time is allowed. Examples: * `project_id asc` * `name` * `
        #   sensitivity_level desc` Supported fields are: - `project_id`: The Google Cloud
        #   project ID. - `sensitivity_level`: How sensitive the data in a table is, at
        #   most. - `data_risk_level`: How much risk is associated with this data. - `
        #   profile_last_generated`: When the profile was last updated in epoch seconds. -
        #   `last_modified`: The last time the resource was modified. - `
        #   resource_visibility`: Visibility restriction for this resource. - `name`: The
        #   name of the profile. - `create_time`: The time the file store was first
        #   created.
        # @param [Fixnum] page_size
        #   Optional. Size of the page. This value can be limited by the server. If zero,
        #   server returns a page of max size 100.
        # @param [String] page_token
        #   Optional. Page token to continue retrieval.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListFileStoreDataProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListFileStoreDataProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_file_store_data_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/fileStoreDataProfiles', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListFileStoreDataProfilesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of the sensitive information types that the DLP API supports.
        # See https://cloud.google.com/sensitive-data-protection/docs/infotypes-
        # reference to learn more.
        # @param [String] parent
        #   The parent resource name. The format of this value is as follows: `locations/`
        #   location_id``
        # @param [String] filter
        #   filter to only return infoTypes supported by certain parts of the API.
        #   Defaults to supported_by=INSPECT.
        # @param [String] language_code
        #   BCP-47 language code for localized infoType friendly names. If omitted, or if
        #   localized strings are not available, en-US strings will be returned.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_info_types(parent, filter: nil, language_code: nil, location_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/infoTypes', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an InspectTemplate for reusing frequently used configuration for
        # inspecting content, images, and storage. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-templates to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateInspectTemplateRequest] google_privacy_dlp_v2_create_inspect_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_inspect_template(parent, google_privacy_dlp_v2_create_inspect_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/inspectTemplates', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateInspectTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_inspect_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and inspectTemplate to be deleted,
        #   for example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_inspect_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and inspectTemplate to be read,
        #   for example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_inspect_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-templates to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `create_time`: corresponds to the
        #   time the template was created. - `update_time`: corresponds to the time the
        #   template was last updated. - `name`: corresponds to the template's name. - `
        #   display_name`: corresponds to the template's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListInspectTemplates`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_inspect_templates(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/inspectTemplates', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of organization and inspectTemplate to be updated, for
        #   example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateInspectTemplateRequest] google_privacy_dlp_v2_update_inspect_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_inspect_template(name, google_privacy_dlp_v2_update_inspect_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateInspectTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_inspect_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a job trigger to run DLP actions such as scanning storage for
        # sensitive information on a set schedule. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-job-triggers to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateJobTriggerRequest] google_privacy_dlp_v2_create_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_job_trigger(parent, google_privacy_dlp_v2_create_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/jobTriggers', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_job_trigger(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_job_trigger(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists job triggers. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values for
        #   inspect triggers: - `status` - HEALTHY|PAUSED|CANCELLED - `inspected_storage` -
        #   DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time` - RFC 3339 formatted
        #   timestamp, surrounded by quotation marks. Nanoseconds are ignored. - '
        #   error_count' - Number of errors that have occurred while running. * The
        #   operator must be `=` or `!=` for status and inspected_storage. Examples: *
        #   inspected_storage = cloud_storage AND status = HEALTHY * inspected_storage =
        #   cloud_storage OR inspected_storage = bigquery * inspected_storage =
        #   cloud_storage AND (state = PAUSED OR state = HEALTHY) * last_run_time > \"2017-
        #   12-12T00:00:00+00:00\" The length of this field should be no more than 500
        #   characters.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of triggeredJob fields to order by, followed by `asc` or `
        #   desc` postfix. This list is case insensitive. The default sorting order is
        #   ascending. Redundant space characters are insignificant. Example: `name asc,
        #   update_time, create_time desc` Supported fields are: - `create_time`:
        #   corresponds to the time the JobTrigger was created. - `update_time`:
        #   corresponds to the time the JobTrigger was last updated. - `last_run_time`:
        #   corresponds to the last time the JobTrigger ran. - `name`: corresponds to the
        #   JobTrigger's name. - `display_name`: corresponds to the JobTrigger's display
        #   name. - `status`: corresponds to JobTrigger's status.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by a server.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to
        #   ListJobTriggers. `order_by` field must not change for subsequent calls.
        # @param [String] type
        #   The type of jobs. Will use `DlpJobType.INSPECT` if not set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_job_triggers(parent, filter: nil, location_id: nil, order_by: nil, page_size: nil, page_token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/jobTriggers', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateJobTriggerRequest] google_privacy_dlp_v2_update_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_job_trigger(name, google_privacy_dlp_v2_update_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a project data profile.
        # @param [String] name
        #   Required. Resource name, for example `organizations/12345/locations/us/
        #   projectDataProfiles/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_project_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists project data profiles for an organization.
        # @param [String] parent
        #   Required. organizations/`org_id`/locations/`loc_id`
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values: - `
        #   sensitivity_level` - HIGH|MODERATE|LOW - `data_risk_level` - HIGH|MODERATE|LOW
        #   - `status_code` - an RPC status code as defined in https://github.com/
        #   googleapis/googleapis/blob/master/google/rpc/code.proto * The operator must be
        #   `=` or `!=`. Examples: * `project_id = 12345 AND status_code = 1` * `
        #   project_id = 12345 AND sensitivity_level = HIGH` The length of this field
        #   should be no more than 500 characters.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Only one order field at a time
        #   is allowed. Examples: * `project_id` * `sensitivity_level desc` Supported
        #   fields are: - `project_id`: Google Cloud project ID - `sensitivity_level`: How
        #   sensitive the data in a project is, at most. - `data_risk_level`: How much
        #   risk is associated with this data. - `profile_last_generated`: When the
        #   profile was last updated in epoch seconds.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero, server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListProjectDataProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListProjectDataProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_project_data_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/projectDataProfiles', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListProjectDataProfilesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListProjectDataProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a pre-built stored infoType to be used for inspection. See https://
        # cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to
        # learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateStoredInfoTypeRequest] google_privacy_dlp_v2_create_stored_info_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_stored_info_type(parent, google_privacy_dlp_v2_create_stored_info_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/storedInfoTypes', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateStoredInfoTypeRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_stored_info_type_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a stored infoType. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-stored-infotypes to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and storedInfoType to be deleted,
        #   for example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_stored_info_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-stored-infotypes to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and storedInfoType to be read, for
        #   example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_stored_info_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-stored-infotypes to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,
        #   display_name, create_time desc` Supported fields are: - `create_time`:
        #   corresponds to the time the most recent version of the resource was created. -
        #   `state`: corresponds to the state of the resource. - `name`: corresponds to
        #   resource name. - `display_name`: corresponds to info type's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListStoredInfoTypes`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_stored_info_types(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/storedInfoTypes', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the stored infoType by creating a new version. The existing version
        # will continue to be used until the new version is ready. See https://cloud.
        # google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn
        # more.
        # @param [String] name
        #   Required. Resource name of organization and storedInfoType to be updated, for
        #   example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateStoredInfoTypeRequest] google_privacy_dlp_v2_update_stored_info_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_stored_info_type(name, google_privacy_dlp_v2_update_stored_info_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateStoredInfoTypeRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_stored_info_type_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a TableDataProfile. Will not prevent the profile from being regenerated
        # if the table is still included in a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the table data profile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_table_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a table data profile.
        # @param [String] name
        #   Required. Resource name, for example `organizations/12345/locations/us/
        #   tableDataProfiles/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_table_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists table data profiles for an organization.
        # @param [String] parent
        #   Required. Resource name of the organization or project, for example `
        #   organizations/433245324/locations/europe` or `projects/project-id/locations/
        #   asia`.
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values: - `
        #   project_id` - The Google Cloud project ID. - `dataset_id` - The BigQuery
        #   dataset ID. - `table_id` - The ID of the BigQuery table. - `sensitivity_level`
        #   - HIGH|MODERATE|LOW - `data_risk_level` - HIGH|MODERATE|LOW - `
        #   resource_visibility`: PUBLIC|RESTRICTED - `status_code` - an RPC status code
        #   as defined in https://github.com/googleapis/googleapis/blob/master/google/rpc/
        #   code.proto * The operator must be `=` or `!=`. Examples: * `project_id = 12345
        #   AND status_code = 1` * `project_id = 12345 AND sensitivity_level = HIGH` * `
        #   project_id = 12345 AND resource_visibility = PUBLIC` The length of this field
        #   should be no more than 500 characters.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Only one order field at a time
        #   is allowed. Examples: * `project_id asc` * `table_id` * `sensitivity_level
        #   desc` Supported fields are: - `project_id`: The Google Cloud project ID. - `
        #   dataset_id`: The ID of a BigQuery dataset. - `table_id`: The ID of a BigQuery
        #   table. - `sensitivity_level`: How sensitive the data in a table is, at most. -
        #   `data_risk_level`: How much risk is associated with this data. - `
        #   profile_last_generated`: When the profile was last updated in epoch seconds. -
        #   `last_modified`: The last time the resource was modified. - `
        #   resource_visibility`: Visibility restriction for this resource. - `row_count`:
        #   Number of rows in this resource.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero, server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListTableDataProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListTableDataProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_table_data_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/tableDataProfiles', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListTableDataProfilesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListTableDataProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a pre-built stored infoType to be used for inspection. See https://
        # cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to
        # learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateStoredInfoTypeRequest] google_privacy_dlp_v2_create_stored_info_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_stored_info_type(parent, google_privacy_dlp_v2_create_stored_info_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/storedInfoTypes', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateStoredInfoTypeRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_stored_info_type_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a stored infoType. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-stored-infotypes to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and storedInfoType to be deleted,
        #   for example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_stored_info_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-stored-infotypes to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and storedInfoType to be read, for
        #   example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_stored_info_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-stored-infotypes to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,
        #   display_name, create_time desc` Supported fields are: - `create_time`:
        #   corresponds to the time the most recent version of the resource was created. -
        #   `state`: corresponds to the state of the resource. - `name`: corresponds to
        #   resource name. - `display_name`: corresponds to info type's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListStoredInfoTypes`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_stored_info_types(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/storedInfoTypes', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the stored infoType by creating a new version. The existing version
        # will continue to be used until the new version is ready. See https://cloud.
        # google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn
        # more.
        # @param [String] name
        #   Required. Resource name of organization and storedInfoType to be updated, for
        #   example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateStoredInfoTypeRequest] google_privacy_dlp_v2_update_stored_info_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_stored_info_type(name, google_privacy_dlp_v2_update_stored_info_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateStoredInfoTypeRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_stored_info_type_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # De-identifies potentially sensitive info from a ContentItem. This method has
        # limits on input size and output size. See https://cloud.google.com/sensitive-
        # data-protection/docs/deidentify-sensitive-data to learn more. When no
        # InfoTypes or CustomInfoTypes are specified in this request, the system will
        # automatically choose what detectors to run. By default this may be all types,
        # but may change over time as detectors are updated.
        # @param [String] parent
        #   Parent resource name. The format of this value varies depending on whether you
        #   have [specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentRequest] google_privacy_dlp_v2_deidentify_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_project_content(parent, google_privacy_dlp_v2_deidentify_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/content:deidentify', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentRequest::Representation
          command.request_object = google_privacy_dlp_v2_deidentify_content_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finds potentially sensitive info in content. This method has limits on input
        # size, processing time, and output size. When no InfoTypes or CustomInfoTypes
        # are specified in this request, the system will automatically choose what
        # detectors to run. By default this may be all types, but may change over time
        # as detectors are updated. For how to guides, see https://cloud.google.com/
        # sensitive-data-protection/docs/inspecting-images and https://cloud.google.com/
        # sensitive-data-protection/docs/inspecting-text,
        # @param [String] parent
        #   Parent resource name. The format of this value varies depending on whether you
        #   have [specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentRequest] google_privacy_dlp_v2_inspect_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def inspect_project_content(parent, google_privacy_dlp_v2_inspect_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/content:inspect', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentRequest::Representation
          command.request_object = google_privacy_dlp_v2_inspect_content_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Re-identifies content that has been de-identified. See https://cloud.google.
        # com/sensitive-data-protection/docs/pseudonymization#re-
        # identification_in_free_text_code_example to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentRequest] google_privacy_dlp_v2_reidentify_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reidentify_project_content(parent, google_privacy_dlp_v2_reidentify_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/content:reidentify', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentRequest::Representation
          command.request_object = google_privacy_dlp_v2_reidentify_content_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DeidentifyTemplate for reusing frequently used configuration for de-
        # identifying content, images, and storage. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-templates-deid to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDeidentifyTemplateRequest] google_privacy_dlp_v2_create_deidentify_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_deidentify_template(parent, google_privacy_dlp_v2_create_deidentify_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/deidentifyTemplates', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDeidentifyTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_deidentify_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and deidentify template to be
        #   deleted, for example `organizations/433245324/deidentifyTemplates/432452342`
        #   or projects/project-id/deidentifyTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_deidentify_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and deidentify template to be read,
        #   for example `organizations/433245324/deidentifyTemplates/432452342` or
        #   projects/project-id/deidentifyTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_deidentify_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `create_time`: corresponds to the
        #   time the template was created. - `update_time`: corresponds to the time the
        #   template was last updated. - `name`: corresponds to the template's name. - `
        #   display_name`: corresponds to the template's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListDeidentifyTemplates`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_deidentify_templates(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/deidentifyTemplates', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of organization and deidentify template to be updated,
        #   for example `organizations/433245324/deidentifyTemplates/432452342` or
        #   projects/project-id/deidentifyTemplates/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest] google_privacy_dlp_v2_update_deidentify_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_deidentify_template(name, google_privacy_dlp_v2_update_deidentify_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_deidentify_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running DlpJob. The server makes a
        # best effort to cancel the DlpJob, but success is not guaranteed. See https://
        # cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://
        # cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn
        # more.
        # @param [String] name
        #   Required. The name of the DlpJob resource to be cancelled.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CancelDlpJobRequest] google_privacy_dlp_v2_cancel_dlp_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_dlp_job(name, google_privacy_dlp_v2_cancel_dlp_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CancelDlpJobRequest::Representation
          command.request_object = google_privacy_dlp_v2_cancel_dlp_job_request_object
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new job to inspect storage or calculate risk metrics. See https://
        # cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://
        # cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn
        # more. When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the
        # system will automatically choose what detectors to run. By default this may be
        # all types, but may change over time as detectors are updated.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDlpJobRequest] google_privacy_dlp_v2_create_dlp_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_dlp_job(parent, google_privacy_dlp_v2_create_dlp_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/dlpJobs', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDlpJobRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_dlp_job_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running DlpJob. This method indicates that the client is no
        # longer interested in the DlpJob result. The job will be canceled if possible.
        # See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
        # and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-
        # analysis to learn more.
        # @param [String] name
        #   Required. The name of the DlpJob resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_dlp_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running DlpJob. See https://cloud.google.com/
        # sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/
        # sensitive-data-protection/docs/compute-risk-analysis to learn more.
        # @param [String] name
        #   Required. The name of the DlpJob resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dlp_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DlpJobs that match the specified filter in the request. See https://
        # cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://
        # cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn
        # more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values for
        #   inspect jobs: - `state` - PENDING|RUNNING|CANCELED|FINISHED|FAILED - `
        #   inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The
        #   name of the trigger that created the job. - 'end_time` - Corresponds to the
        #   time the job finished. - 'start_time` - Corresponds to the time the job
        #   finished. * Supported fields for risk analysis jobs: - `state` - RUNNING|
        #   CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time the job
        #   finished. - 'start_time` - Corresponds to the time the job finished. * The
        #   operator must be `=` or `!=`. Examples: * inspected_storage = cloud_storage
        #   AND state = done * inspected_storage = cloud_storage OR inspected_storage =
        #   bigquery * inspected_storage = cloud_storage AND (state = done OR state =
        #   canceled) * end_time > \"2017-12-12T00:00:00+00:00\" The length of this field
        #   should be no more than 500 characters.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc, end_time
        #   asc, create_time desc` Supported fields are: - `create_time`: corresponds to
        #   the time the job was created. - `end_time`: corresponds to the time the job
        #   ended. - `name`: corresponds to the job's name. - `state`: corresponds to `
        #   state`
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] type
        #   The type of job. Defaults to `DlpJobType.INSPECT`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_dlp_jobs(parent, filter: nil, location_id: nil, order_by: nil, page_size: nil, page_token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/dlpJobs', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Redacts potentially sensitive info from an image. This method has limits on
        # input size, processing time, and output size. See https://cloud.google.com/
        # sensitive-data-protection/docs/redacting-sensitive-data-images to learn more.
        # When no InfoTypes or CustomInfoTypes are specified in this request, the system
        # will automatically choose what detectors to run. By default this may be all
        # types, but may change over time as detectors are updated. Only the first frame
        # of each multiframe image is redacted. Metadata and other frames are omitted in
        # the response.
        # @param [String] parent
        #   Parent resource name. The format of this value varies depending on whether you
        #   have [specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageRequest] google_privacy_dlp_v2_redact_image_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def redact_project_image(parent, google_privacy_dlp_v2_redact_image_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/image:redact', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageRequest::Representation
          command.request_object = google_privacy_dlp_v2_redact_image_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an InspectTemplate for reusing frequently used configuration for
        # inspecting content, images, and storage. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-templates to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateInspectTemplateRequest] google_privacy_dlp_v2_create_inspect_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_inspect_template(parent, google_privacy_dlp_v2_create_inspect_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/inspectTemplates', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateInspectTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_inspect_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and inspectTemplate to be deleted,
        #   for example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_inspect_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and inspectTemplate to be read,
        #   for example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_inspect_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-templates to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `create_time`: corresponds to the
        #   time the template was created. - `update_time`: corresponds to the time the
        #   template was last updated. - `name`: corresponds to the template's name. - `
        #   display_name`: corresponds to the template's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListInspectTemplates`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_inspect_templates(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/inspectTemplates', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of organization and inspectTemplate to be updated, for
        #   example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateInspectTemplateRequest] google_privacy_dlp_v2_update_inspect_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_inspect_template(name, google_privacy_dlp_v2_update_inspect_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateInspectTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_inspect_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activate a job trigger. Causes the immediate execute of a trigger instead of
        # waiting on the trigger event to occur.
        # @param [String] name
        #   Required. Resource name of the trigger to activate, for example `projects/dlp-
        #   test-project/jobTriggers/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2ActivateJobTriggerRequest] google_privacy_dlp_v2_activate_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_project_job_trigger(name, google_privacy_dlp_v2_activate_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:activate', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ActivateJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_activate_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a job trigger to run DLP actions such as scanning storage for
        # sensitive information on a set schedule. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-job-triggers to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateJobTriggerRequest] google_privacy_dlp_v2_create_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_job_trigger(parent, google_privacy_dlp_v2_create_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/jobTriggers', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_job_trigger(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_job_trigger(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists job triggers. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values for
        #   inspect triggers: - `status` - HEALTHY|PAUSED|CANCELLED - `inspected_storage` -
        #   DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time` - RFC 3339 formatted
        #   timestamp, surrounded by quotation marks. Nanoseconds are ignored. - '
        #   error_count' - Number of errors that have occurred while running. * The
        #   operator must be `=` or `!=` for status and inspected_storage. Examples: *
        #   inspected_storage = cloud_storage AND status = HEALTHY * inspected_storage =
        #   cloud_storage OR inspected_storage = bigquery * inspected_storage =
        #   cloud_storage AND (state = PAUSED OR state = HEALTHY) * last_run_time > \"2017-
        #   12-12T00:00:00+00:00\" The length of this field should be no more than 500
        #   characters.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of triggeredJob fields to order by, followed by `asc` or `
        #   desc` postfix. This list is case insensitive. The default sorting order is
        #   ascending. Redundant space characters are insignificant. Example: `name asc,
        #   update_time, create_time desc` Supported fields are: - `create_time`:
        #   corresponds to the time the JobTrigger was created. - `update_time`:
        #   corresponds to the time the JobTrigger was last updated. - `last_run_time`:
        #   corresponds to the last time the JobTrigger ran. - `name`: corresponds to the
        #   JobTrigger's name. - `display_name`: corresponds to the JobTrigger's display
        #   name. - `status`: corresponds to JobTrigger's status.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by a server.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to
        #   ListJobTriggers. `order_by` field must not change for subsequent calls.
        # @param [String] type
        #   The type of jobs. Will use `DlpJobType.INSPECT` if not set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_job_triggers(parent, filter: nil, location_id: nil, order_by: nil, page_size: nil, page_token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/jobTriggers', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateJobTriggerRequest] google_privacy_dlp_v2_update_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_job_trigger(name, google_privacy_dlp_v2_update_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a column data profile.
        # @param [String] name
        #   Required. Resource name, for example `organizations/12345/locations/us/
        #   columnDataProfiles/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_column_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists column data profiles for an organization.
        # @param [String] parent
        #   Required. Resource name of the organization or project, for example `
        #   organizations/433245324/locations/europe` or `projects/project-id/locations/
        #   asia`.
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values: - `
        #   table_data_profile_name` - The name of the related table data profile. - `
        #   project_id` - The Google Cloud project ID. (REQUIRED) - `dataset_id` - The
        #   BigQuery dataset ID. (REQUIRED) - `table_id` - The BigQuery table ID. (
        #   REQUIRED) - `field_id` - The ID of the BigQuery field. - `info_type` - The
        #   infotype detected in the resource. - `sensitivity_level` - HIGH|MEDIUM|LOW - `
        #   data_risk_level`: How much risk is associated with this data. - `status_code` -
        #   an RPC status code as defined in https://github.com/googleapis/googleapis/
        #   blob/master/google/rpc/code.proto * The operator must be `=` for project_id,
        #   dataset_id, and table_id. Other filters also support `!=`. Examples: *
        #   project_id = 12345 AND status_code = 1 * project_id = 12345 AND
        #   sensitivity_level = HIGH * project_id = 12345 AND info_type = STREET_ADDRESS
        #   The length of this field should be no more than 500 characters.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Only one order field at a time
        #   is allowed. Examples: * `project_id asc` * `table_id` * `sensitivity_level
        #   desc` Supported fields are: - `project_id`: The Google Cloud project ID. - `
        #   dataset_id`: The ID of a BigQuery dataset. - `table_id`: The ID of a BigQuery
        #   table. - `sensitivity_level`: How sensitive the data in a column is, at most. -
        #   `data_risk_level`: How much risk is associated with this data. - `
        #   profile_last_generated`: When the profile was last updated in epoch seconds.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero, server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListColumnDataProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListColumnDataProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_column_data_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/columnDataProfiles', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListColumnDataProfilesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListColumnDataProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a Connection to an external data source.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization): + Projects scope: `
        #   projects/`project_id`/locations/`location_id`` + Organizations scope: `
        #   organizations/`org_id`/locations/`location_id``
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateConnectionRequest] google_privacy_dlp_v2_create_connection_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection(parent, google_privacy_dlp_v2_create_connection_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/connections', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateConnectionRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_connection_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a Connection.
        # @param [String] name
        #   Required. Resource name of the Connection to be deleted, in the format: `
        #   projects/`project`/locations/`location`/connections/`connection``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a Connection by name.
        # @param [String] name
        #   Required. Resource name in the format: `projects/`project`/locations/`location`
        #   /connections/`connection``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Connections in a parent. Use SearchConnections to see all connections
        # within an organization.
        # @param [String] parent
        #   Required. Resource name of the organization or project, for example, `
        #   organizations/433245324/locations/europe` or `projects/project-id/locations/
        #   asia`.
        # @param [String] filter
        #   Optional. Supported field/value: `state` - MISSING|AVAILABLE|ERROR
        # @param [Fixnum] page_size
        #   Optional. Number of results per page, max 1000.
        # @param [String] page_token
        #   Optional. Page token from a previous page to return the next set of results.
        #   If set, all other request fields must match the original request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connections(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/connections', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListConnectionsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a Connection.
        # @param [String] name
        #   Required. Resource name in the format: `projects/`project`/locations/`location`
        #   /connections/`connection``.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateConnectionRequest] google_privacy_dlp_v2_update_connection_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connection(name, google_privacy_dlp_v2_update_connection_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateConnectionRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_connection_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2Connection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for Connections in a parent.
        # @param [String] parent
        #   Required. Resource name of the organization or project with a wildcard
        #   location, for example, `organizations/433245324/locations/-` or `projects/
        #   project-id/locations/-`.
        # @param [String] filter
        #   Optional. Supported field/value: - `state` - MISSING|AVAILABLE|ERROR
        # @param [Fixnum] page_size
        #   Optional. Number of results per page, max 1000.
        # @param [String] page_token
        #   Optional. Page token from a previous page to return the next set of results.
        #   If set, all other request fields must match the original request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2SearchConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SearchConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_connections(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/connections:search', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2SearchConnectionsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2SearchConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # De-identifies potentially sensitive info from a ContentItem. This method has
        # limits on input size and output size. See https://cloud.google.com/sensitive-
        # data-protection/docs/deidentify-sensitive-data to learn more. When no
        # InfoTypes or CustomInfoTypes are specified in this request, the system will
        # automatically choose what detectors to run. By default this may be all types,
        # but may change over time as detectors are updated.
        # @param [String] parent
        #   Parent resource name. The format of this value varies depending on whether you
        #   have [specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentRequest] google_privacy_dlp_v2_deidentify_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_project_location_content(parent, google_privacy_dlp_v2_deidentify_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/content:deidentify', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentRequest::Representation
          command.request_object = google_privacy_dlp_v2_deidentify_content_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyContentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finds potentially sensitive info in content. This method has limits on input
        # size, processing time, and output size. When no InfoTypes or CustomInfoTypes
        # are specified in this request, the system will automatically choose what
        # detectors to run. By default this may be all types, but may change over time
        # as detectors are updated. For how to guides, see https://cloud.google.com/
        # sensitive-data-protection/docs/inspecting-images and https://cloud.google.com/
        # sensitive-data-protection/docs/inspecting-text,
        # @param [String] parent
        #   Parent resource name. The format of this value varies depending on whether you
        #   have [specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentRequest] google_privacy_dlp_v2_inspect_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def inspect_project_location_content(parent, google_privacy_dlp_v2_inspect_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/content:inspect', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentRequest::Representation
          command.request_object = google_privacy_dlp_v2_inspect_content_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectContentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Re-identifies content that has been de-identified. See https://cloud.google.
        # com/sensitive-data-protection/docs/pseudonymization#re-
        # identification_in_free_text_code_example to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentRequest] google_privacy_dlp_v2_reidentify_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reidentify_project_location_content(parent, google_privacy_dlp_v2_reidentify_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/content:reidentify', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentRequest::Representation
          command.request_object = google_privacy_dlp_v2_reidentify_content_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ReidentifyContentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DeidentifyTemplate for reusing frequently used configuration for de-
        # identifying content, images, and storage. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-templates-deid to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDeidentifyTemplateRequest] google_privacy_dlp_v2_create_deidentify_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_deidentify_template(parent, google_privacy_dlp_v2_create_deidentify_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/deidentifyTemplates', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDeidentifyTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_deidentify_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and deidentify template to be
        #   deleted, for example `organizations/433245324/deidentifyTemplates/432452342`
        #   or projects/project-id/deidentifyTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_deidentify_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and deidentify template to be read,
        #   for example `organizations/433245324/deidentifyTemplates/432452342` or
        #   projects/project-id/deidentifyTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_deidentify_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `create_time`: corresponds to the
        #   time the template was created. - `update_time`: corresponds to the time the
        #   template was last updated. - `name`: corresponds to the template's name. - `
        #   display_name`: corresponds to the template's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListDeidentifyTemplates`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_deidentify_templates(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/deidentifyTemplates', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates-deid to learn more.
        # @param [String] name
        #   Required. Resource name of organization and deidentify template to be updated,
        #   for example `organizations/433245324/deidentifyTemplates/432452342` or
        #   projects/project-id/deidentifyTemplates/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest] google_privacy_dlp_v2_update_deidentify_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_deidentify_template(name, google_privacy_dlp_v2_update_deidentify_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_deidentify_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a config for discovery to scan and profile storage.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization): + Projects scope: `
        #   projects/`project_id`/locations/`location_id`` + Organizations scope: `
        #   organizations/`org_id`/locations/`location_id`` The following example `parent`
        #   string specifies a parent project with the identifier `example-project`, and
        #   specifies the `europe-west3` location for processing data: parent=projects/
        #   example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDiscoveryConfigRequest] google_privacy_dlp_v2_create_discovery_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_discovery_config(parent, google_privacy_dlp_v2_create_discovery_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/discoveryConfigs', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDiscoveryConfigRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_discovery_config_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the project and the config, for example `projects/
        #   dlp-test-project/discoveryConfigs/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_discovery_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the project and the configuration, for example `
        #   projects/dlp-test-project/discoveryConfigs/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_discovery_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists discovery configurations.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value is as follows: `
        #   projects/`project_id`/locations/`location_id`` The following example `parent`
        #   string specifies a parent project with the identifier `example-project`, and
        #   specifies the `europe-west3` location for processing data: parent=projects/
        #   example-project/locations/europe-west3
        # @param [String] order_by
        #   Comma-separated list of config fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `last_run_time`: corresponds to the
        #   last time the DiscoveryConfig ran. - `name`: corresponds to the
        #   DiscoveryConfig's name. - `status`: corresponds to DiscoveryConfig's status.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by a server.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to
        #   ListDiscoveryConfigs. `order_by` field must not change for subsequent calls.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDiscoveryConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDiscoveryConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_discovery_configs(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/discoveryConfigs', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDiscoveryConfigsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDiscoveryConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the project and the configuration, for example `
        #   projects/dlp-test-project/discoveryConfigs/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDiscoveryConfigRequest] google_privacy_dlp_v2_update_discovery_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_discovery_config(name, google_privacy_dlp_v2_update_discovery_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateDiscoveryConfigRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_discovery_config_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running DlpJob. The server makes a
        # best effort to cancel the DlpJob, but success is not guaranteed. See https://
        # cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://
        # cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn
        # more.
        # @param [String] name
        #   Required. The name of the DlpJob resource to be cancelled.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CancelDlpJobRequest] google_privacy_dlp_v2_cancel_dlp_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_dlp_job(name, google_privacy_dlp_v2_cancel_dlp_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CancelDlpJobRequest::Representation
          command.request_object = google_privacy_dlp_v2_cancel_dlp_job_request_object
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new job to inspect storage or calculate risk metrics. See https://
        # cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://
        # cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn
        # more. When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the
        # system will automatically choose what detectors to run. By default this may be
        # all types, but may change over time as detectors are updated.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDlpJobRequest] google_privacy_dlp_v2_create_dlp_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dlp_job(parent, google_privacy_dlp_v2_create_dlp_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/dlpJobs', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateDlpJobRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_dlp_job_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running DlpJob. This method indicates that the client is no
        # longer interested in the DlpJob result. The job will be canceled if possible.
        # See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
        # and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-
        # analysis to learn more.
        # @param [String] name
        #   Required. The name of the DlpJob resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dlp_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finish a running hybrid DlpJob. Triggers the finalization steps and running of
        # any enabled actions that have not yet run.
        # @param [String] name
        #   Required. The name of the DlpJob resource to be finished.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2FinishDlpJobRequest] google_privacy_dlp_v2_finish_dlp_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finish_project_location_dlp_job(name, google_privacy_dlp_v2_finish_dlp_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:finish', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2FinishDlpJobRequest::Representation
          command.request_object = google_privacy_dlp_v2_finish_dlp_job_request_object
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running DlpJob. See https://cloud.google.com/
        # sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/
        # sensitive-data-protection/docs/compute-risk-analysis to learn more.
        # @param [String] name
        #   Required. The name of the DlpJob resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dlp_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inspect hybrid content and store findings to a job. To review the findings,
        # inspect the job. Inspection will occur asynchronously.
        # @param [String] name
        #   Required. Resource name of the job to execute a hybrid inspect on, for example
        #   `projects/dlp-test-project/dlpJob/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectDlpJobRequest] google_privacy_dlp_v2_hybrid_inspect_dlp_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def hybrid_project_location_dlp_job_inspect(name, google_privacy_dlp_v2_hybrid_inspect_dlp_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:hybridInspect', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectDlpJobRequest::Representation
          command.request_object = google_privacy_dlp_v2_hybrid_inspect_dlp_job_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DlpJobs that match the specified filter in the request. See https://
        # cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://
        # cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn
        # more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values for
        #   inspect jobs: - `state` - PENDING|RUNNING|CANCELED|FINISHED|FAILED - `
        #   inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The
        #   name of the trigger that created the job. - 'end_time` - Corresponds to the
        #   time the job finished. - 'start_time` - Corresponds to the time the job
        #   finished. * Supported fields for risk analysis jobs: - `state` - RUNNING|
        #   CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time the job
        #   finished. - 'start_time` - Corresponds to the time the job finished. * The
        #   operator must be `=` or `!=`. Examples: * inspected_storage = cloud_storage
        #   AND state = done * inspected_storage = cloud_storage OR inspected_storage =
        #   bigquery * inspected_storage = cloud_storage AND (state = done OR state =
        #   canceled) * end_time > \"2017-12-12T00:00:00+00:00\" The length of this field
        #   should be no more than 500 characters.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc, end_time
        #   asc, create_time desc` Supported fields are: - `create_time`: corresponds to
        #   the time the job was created. - `end_time`: corresponds to the time the job
        #   ended. - `name`: corresponds to the job's name. - `state`: corresponds to `
        #   state`
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] type
        #   The type of job. Defaults to `DlpJobType.INSPECT`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dlp_jobs(parent, filter: nil, location_id: nil, order_by: nil, page_size: nil, page_token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/dlpJobs', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListDlpJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a FileStoreDataProfile. Will not prevent the profile from being
        # regenerated if the resource is still included in a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the file store data profile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_file_store_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a file store data profile.
        # @param [String] name
        #   Required. Resource name, for example `organizations/12345/locations/us/
        #   fileStoreDataProfiles/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_file_store_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists file store data profiles for an organization.
        # @param [String] parent
        #   Required. Resource name of the organization or project, for example `
        #   organizations/433245324/locations/europe` or `projects/project-id/locations/
        #   asia`.
        # @param [String] filter
        #   Optional. Allows filtering. Supported syntax: * Filter expressions are made up
        #   of one or more restrictions. * Restrictions can be combined by `AND` or `OR`
        #   logical operators. A sequence of restrictions implicitly uses `AND`. * A
        #   restriction has the form of ``field` `operator` `value``. * Supported fields/
        #   values: - `project_id` - The Google Cloud project ID. - `account_id` - The AWS
        #   account ID. - `file_store_path` - The path like "gs://bucket". - `
        #   data_source_type` - The profile's data source type, like "google/storage/
        #   bucket". - `data_storage_location` - The location where the file store's data
        #   is stored, like "us-central1". - `sensitivity_level` - HIGH|MODERATE|LOW - `
        #   data_risk_level` - HIGH|MODERATE|LOW - `resource_visibility`: PUBLIC|
        #   RESTRICTED - `status_code` - an RPC status code as defined in https://github.
        #   com/googleapis/googleapis/blob/master/google/rpc/code.proto * The operator
        #   must be `=` or `!=`. Examples: * `project_id = 12345 AND status_code = 1` * `
        #   project_id = 12345 AND sensitivity_level = HIGH` * `project_id = 12345 AND
        #   resource_visibility = PUBLIC` * `file_store_path = "gs://mybucket"` The length
        #   of this field should be no more than 500 characters.
        # @param [String] order_by
        #   Optional. Comma-separated list of fields to order by, followed by `asc` or `
        #   desc` postfix. This list is case insensitive. The default sorting order is
        #   ascending. Redundant space characters are insignificant. Only one order field
        #   at a time is allowed. Examples: * `project_id asc` * `name` * `
        #   sensitivity_level desc` Supported fields are: - `project_id`: The Google Cloud
        #   project ID. - `sensitivity_level`: How sensitive the data in a table is, at
        #   most. - `data_risk_level`: How much risk is associated with this data. - `
        #   profile_last_generated`: When the profile was last updated in epoch seconds. -
        #   `last_modified`: The last time the resource was modified. - `
        #   resource_visibility`: Visibility restriction for this resource. - `name`: The
        #   name of the profile. - `create_time`: The time the file store was first
        #   created.
        # @param [Fixnum] page_size
        #   Optional. Size of the page. This value can be limited by the server. If zero,
        #   server returns a page of max size 100.
        # @param [String] page_token
        #   Optional. Page token to continue retrieval.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListFileStoreDataProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListFileStoreDataProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_file_store_data_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/fileStoreDataProfiles', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListFileStoreDataProfilesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Redacts potentially sensitive info from an image. This method has limits on
        # input size, processing time, and output size. See https://cloud.google.com/
        # sensitive-data-protection/docs/redacting-sensitive-data-images to learn more.
        # When no InfoTypes or CustomInfoTypes are specified in this request, the system
        # will automatically choose what detectors to run. By default this may be all
        # types, but may change over time as detectors are updated. Only the first frame
        # of each multiframe image is redacted. Metadata and other frames are omitted in
        # the response.
        # @param [String] parent
        #   Parent resource name. The format of this value varies depending on whether you
        #   have [specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageRequest] google_privacy_dlp_v2_redact_image_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def redact_project_location_image(parent, google_privacy_dlp_v2_redact_image_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/image:redact', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageRequest::Representation
          command.request_object = google_privacy_dlp_v2_redact_image_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2RedactImageResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of the sensitive information types that the DLP API supports.
        # See https://cloud.google.com/sensitive-data-protection/docs/infotypes-
        # reference to learn more.
        # @param [String] parent
        #   The parent resource name. The format of this value is as follows: `locations/`
        #   location_id``
        # @param [String] filter
        #   filter to only return infoTypes supported by certain parts of the API.
        #   Defaults to supported_by=INSPECT.
        # @param [String] language_code
        #   BCP-47 language code for localized infoType friendly names. If omitted, or if
        #   localized strings are not available, en-US strings will be returned.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_info_types(parent, filter: nil, language_code: nil, location_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/infoTypes', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInfoTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an InspectTemplate for reusing frequently used configuration for
        # inspecting content, images, and storage. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-templates to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateInspectTemplateRequest] google_privacy_dlp_v2_create_inspect_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_inspect_template(parent, google_privacy_dlp_v2_create_inspect_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/inspectTemplates', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateInspectTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_inspect_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and inspectTemplate to be deleted,
        #   for example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_inspect_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and inspectTemplate to be read,
        #   for example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_inspect_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-templates to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,update_time,
        #   create_time desc` Supported fields are: - `create_time`: corresponds to the
        #   time the template was created. - `update_time`: corresponds to the time the
        #   template was last updated. - `name`: corresponds to the template's name. - `
        #   display_name`: corresponds to the template's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListInspectTemplates`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_inspect_templates(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/inspectTemplates', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListInspectTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-templates to learn more.
        # @param [String] name
        #   Required. Resource name of organization and inspectTemplate to be updated, for
        #   example `organizations/433245324/inspectTemplates/432452342` or projects/
        #   project-id/inspectTemplates/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateInspectTemplateRequest] google_privacy_dlp_v2_update_inspect_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_inspect_template(name, google_privacy_dlp_v2_update_inspect_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateInspectTemplateRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_inspect_template_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activate a job trigger. Causes the immediate execute of a trigger instead of
        # waiting on the trigger event to occur.
        # @param [String] name
        #   Required. Resource name of the trigger to activate, for example `projects/dlp-
        #   test-project/jobTriggers/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2ActivateJobTriggerRequest] google_privacy_dlp_v2_activate_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_project_location_job_trigger(name, google_privacy_dlp_v2_activate_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:activate', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ActivateJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_activate_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a job trigger to run DLP actions such as scanning storage for
        # sensitive information on a set schedule. See https://cloud.google.com/
        # sensitive-data-protection/docs/creating-job-triggers to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateJobTriggerRequest] google_privacy_dlp_v2_create_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_job_trigger(parent, google_privacy_dlp_v2_create_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/jobTriggers', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_job_trigger(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_job_trigger(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inspect hybrid content and store findings to a trigger. The inspection will be
        # processed asynchronously. To review the findings monitor the jobs within the
        # trigger.
        # @param [String] name
        #   Required. Resource name of the trigger to execute a hybrid inspect on, for
        #   example `projects/dlp-test-project/jobTriggers/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectJobTriggerRequest] google_privacy_dlp_v2_hybrid_inspect_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def hybrid_project_location_job_trigger_inspect(name, google_privacy_dlp_v2_hybrid_inspect_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:hybridInspect', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_hybrid_inspect_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists job triggers. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   whether you have [specified a processing location](https://cloud.google.com/
        #   sensitive-data-protection/docs/specifying-location): + Projects scope,
        #   location specified: `projects/`project_id`/locations/`location_id`` + Projects
        #   scope, no location specified (defaults to global): `projects/`project_id`` The
        #   following example `parent` string specifies a parent project with the
        #   identifier `example-project`, and specifies the `europe-west3` location for
        #   processing data: parent=projects/example-project/locations/europe-west3
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values for
        #   inspect triggers: - `status` - HEALTHY|PAUSED|CANCELLED - `inspected_storage` -
        #   DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time` - RFC 3339 formatted
        #   timestamp, surrounded by quotation marks. Nanoseconds are ignored. - '
        #   error_count' - Number of errors that have occurred while running. * The
        #   operator must be `=` or `!=` for status and inspected_storage. Examples: *
        #   inspected_storage = cloud_storage AND status = HEALTHY * inspected_storage =
        #   cloud_storage OR inspected_storage = bigquery * inspected_storage =
        #   cloud_storage AND (state = PAUSED OR state = HEALTHY) * last_run_time > \"2017-
        #   12-12T00:00:00+00:00\" The length of this field should be no more than 500
        #   characters.
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of triggeredJob fields to order by, followed by `asc` or `
        #   desc` postfix. This list is case insensitive. The default sorting order is
        #   ascending. Redundant space characters are insignificant. Example: `name asc,
        #   update_time, create_time desc` Supported fields are: - `create_time`:
        #   corresponds to the time the JobTrigger was created. - `update_time`:
        #   corresponds to the time the JobTrigger was last updated. - `last_run_time`:
        #   corresponds to the last time the JobTrigger ran. - `name`: corresponds to the
        #   JobTrigger's name. - `display_name`: corresponds to the JobTrigger's display
        #   name. - `status`: corresponds to JobTrigger's status.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by a server.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to
        #   ListJobTriggers. `order_by` field must not change for subsequent calls.
        # @param [String] type
        #   The type of jobs. Will use `DlpJobType.INSPECT` if not set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_job_triggers(parent, filter: nil, location_id: nil, order_by: nil, page_size: nil, page_token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/jobTriggers', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListJobTriggersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-job-triggers to learn more.
        # @param [String] name
        #   Required. Resource name of the project and the triggeredJob, for example `
        #   projects/dlp-test-project/jobTriggers/53234423`.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateJobTriggerRequest] google_privacy_dlp_v2_update_job_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_job_trigger(name, google_privacy_dlp_v2_update_job_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateJobTriggerRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_job_trigger_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a project data profile.
        # @param [String] name
        #   Required. Resource name, for example `organizations/12345/locations/us/
        #   projectDataProfiles/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_project_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists project data profiles for an organization.
        # @param [String] parent
        #   Required. organizations/`org_id`/locations/`loc_id`
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values: - `
        #   sensitivity_level` - HIGH|MODERATE|LOW - `data_risk_level` - HIGH|MODERATE|LOW
        #   - `status_code` - an RPC status code as defined in https://github.com/
        #   googleapis/googleapis/blob/master/google/rpc/code.proto * The operator must be
        #   `=` or `!=`. Examples: * `project_id = 12345 AND status_code = 1` * `
        #   project_id = 12345 AND sensitivity_level = HIGH` The length of this field
        #   should be no more than 500 characters.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Only one order field at a time
        #   is allowed. Examples: * `project_id` * `sensitivity_level desc` Supported
        #   fields are: - `project_id`: Google Cloud project ID - `sensitivity_level`: How
        #   sensitive the data in a project is, at most. - `data_risk_level`: How much
        #   risk is associated with this data. - `profile_last_generated`: When the
        #   profile was last updated in epoch seconds.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero, server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListProjectDataProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListProjectDataProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_project_data_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/projectDataProfiles', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListProjectDataProfilesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListProjectDataProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a pre-built stored infoType to be used for inspection. See https://
        # cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to
        # learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateStoredInfoTypeRequest] google_privacy_dlp_v2_create_stored_info_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_stored_info_type(parent, google_privacy_dlp_v2_create_stored_info_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/storedInfoTypes', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateStoredInfoTypeRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_stored_info_type_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a stored infoType. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-stored-infotypes to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and storedInfoType to be deleted,
        #   for example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_stored_info_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-stored-infotypes to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and storedInfoType to be read, for
        #   example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_stored_info_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-stored-infotypes to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,
        #   display_name, create_time desc` Supported fields are: - `create_time`:
        #   corresponds to the time the most recent version of the resource was created. -
        #   `state`: corresponds to the state of the resource. - `name`: corresponds to
        #   resource name. - `display_name`: corresponds to info type's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListStoredInfoTypes`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_stored_info_types(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/storedInfoTypes', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the stored infoType by creating a new version. The existing version
        # will continue to be used until the new version is ready. See https://cloud.
        # google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn
        # more.
        # @param [String] name
        #   Required. Resource name of organization and storedInfoType to be updated, for
        #   example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateStoredInfoTypeRequest] google_privacy_dlp_v2_update_stored_info_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_stored_info_type(name, google_privacy_dlp_v2_update_stored_info_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateStoredInfoTypeRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_stored_info_type_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a TableDataProfile. Will not prevent the profile from being regenerated
        # if the table is still included in a discovery configuration.
        # @param [String] name
        #   Required. Resource name of the table data profile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_table_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a table data profile.
        # @param [String] name
        #   Required. Resource name, for example `organizations/12345/locations/us/
        #   tableDataProfiles/53234423`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_table_data_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists table data profiles for an organization.
        # @param [String] parent
        #   Required. Resource name of the organization or project, for example `
        #   organizations/433245324/locations/europe` or `projects/project-id/locations/
        #   asia`.
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions can be combined by `AND` or `OR` logical
        #   operators. A sequence of restrictions implicitly uses `AND`. * A restriction
        #   has the form of ``field` `operator` `value``. * Supported fields/values: - `
        #   project_id` - The Google Cloud project ID. - `dataset_id` - The BigQuery
        #   dataset ID. - `table_id` - The ID of the BigQuery table. - `sensitivity_level`
        #   - HIGH|MODERATE|LOW - `data_risk_level` - HIGH|MODERATE|LOW - `
        #   resource_visibility`: PUBLIC|RESTRICTED - `status_code` - an RPC status code
        #   as defined in https://github.com/googleapis/googleapis/blob/master/google/rpc/
        #   code.proto * The operator must be `=` or `!=`. Examples: * `project_id = 12345
        #   AND status_code = 1` * `project_id = 12345 AND sensitivity_level = HIGH` * `
        #   project_id = 12345 AND resource_visibility = PUBLIC` The length of this field
        #   should be no more than 500 characters.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Only one order field at a time
        #   is allowed. Examples: * `project_id asc` * `table_id` * `sensitivity_level
        #   desc` Supported fields are: - `project_id`: The Google Cloud project ID. - `
        #   dataset_id`: The ID of a BigQuery dataset. - `table_id`: The ID of a BigQuery
        #   table. - `sensitivity_level`: How sensitive the data in a table is, at most. -
        #   `data_risk_level`: How much risk is associated with this data. - `
        #   profile_last_generated`: When the profile was last updated in epoch seconds. -
        #   `last_modified`: The last time the resource was modified. - `
        #   resource_visibility`: Visibility restriction for this resource. - `row_count`:
        #   Number of rows in this resource.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero, server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListTableDataProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListTableDataProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_table_data_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/tableDataProfiles', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListTableDataProfilesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListTableDataProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a pre-built stored infoType to be used for inspection. See https://
        # cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to
        # learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` + Organizations scope,
        #   location specified: `organizations/`org_id`/locations/`location_id`` +
        #   Organizations scope, no location specified (defaults to global): `
        #   organizations/`org_id`` The following example `parent` string specifies a
        #   parent project with the identifier `example-project`, and specifies the `
        #   europe-west3` location for processing data: parent=projects/example-project/
        #   locations/europe-west3
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2CreateStoredInfoTypeRequest] google_privacy_dlp_v2_create_stored_info_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_stored_info_type(parent, google_privacy_dlp_v2_create_stored_info_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/storedInfoTypes', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2CreateStoredInfoTypeRequest::Representation
          command.request_object = google_privacy_dlp_v2_create_stored_info_type_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a stored infoType. See https://cloud.google.com/sensitive-data-
        # protection/docs/creating-stored-infotypes to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and storedInfoType to be deleted,
        #   for example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_stored_info_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-stored-infotypes to learn more.
        # @param [String] name
        #   Required. Resource name of the organization and storedInfoType to be read, for
        #   example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_stored_info_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/
        # docs/creating-stored-infotypes to learn more.
        # @param [String] parent
        #   Required. Parent resource name. The format of this value varies depending on
        #   the scope of the request (project or organization) and whether you have [
        #   specified a processing location](https://cloud.google.com/sensitive-data-
        #   protection/docs/specifying-location): + Projects scope, location specified: `
        #   projects/`project_id`/locations/`location_id`` + Projects scope, no location
        #   specified (defaults to global): `projects/`project_id`` The following example `
        #   parent` string specifies a parent project with the identifier `example-project`
        #   , and specifies the `europe-west3` location for processing data: parent=
        #   projects/example-project/locations/europe-west3
        # @param [String] location_id
        #   Deprecated. This field has no effect.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, followed by `asc` or `desc`
        #   postfix. This list is case insensitive. The default sorting order is ascending.
        #   Redundant space characters are insignificant. Example: `name asc,
        #   display_name, create_time desc` Supported fields are: - `create_time`:
        #   corresponds to the time the most recent version of the resource was created. -
        #   `state`: corresponds to the state of the resource. - `name`: corresponds to
        #   resource name. - `display_name`: corresponds to info type's display name.
        # @param [Fixnum] page_size
        #   Size of the page. This value can be limited by the server. If zero server
        #   returns a page of max size 100.
        # @param [String] page_token
        #   Page token to continue retrieval. Comes from the previous call to `
        #   ListStoredInfoTypes`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_stored_info_types(parent, location_id: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/storedInfoTypes', options)
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2ListStoredInfoTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['locationId'] = location_id unless location_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the stored infoType by creating a new version. The existing version
        # will continue to be used until the new version is ready. See https://cloud.
        # google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn
        # more.
        # @param [String] name
        #   Required. Resource name of organization and storedInfoType to be updated, for
        #   example `organizations/433245324/storedInfoTypes/432452342` or projects/
        #   project-id/storedInfoTypes/432452342.
        # @param [Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateStoredInfoTypeRequest] google_privacy_dlp_v2_update_stored_info_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_stored_info_type(name, google_privacy_dlp_v2_update_stored_info_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2UpdateStoredInfoTypeRequest::Representation
          command.request_object = google_privacy_dlp_v2_update_stored_info_type_request_object
          command.response_representation = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
          command.response_class = Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType
          command.params['name'] = name unless name.nil?
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
