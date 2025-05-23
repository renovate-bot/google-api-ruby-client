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
    module RecommenderV1beta1
      # Recommender API
      #
      # 
      #
      # @example
      #    require 'google/apis/recommender_v1beta1'
      #
      #    Recommender = Google::Apis::RecommenderV1beta1 # Alias the module
      #    service = Recommender::RecommenderService.new
      #
      # @see https://cloud.google.com/recommender/docs/
      class RecommenderService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://recommender.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-recommender_v1beta1',
                client_version: Google::Apis::RecommenderV1beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists locations with recommendations or insights.
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
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested InsightTypeConfig. There is only one instance of the config
        # for each InsightType.
        # @param [String] name
        #   Required. Name of the InsightTypeConfig to get. Acceptable formats: * `
        #   projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/
        #   config` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `billingAccounts/[
        #   BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_insight_type_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an InsightTypeConfig change. This will create a new revision of the
        # config.
        # @param [String] name
        #   Identifier. Name of insight type config. Eg, projects/[PROJECT_NUMBER]/
        #   locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] google_cloud_recommender_v1beta1_insight_type_config_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [Boolean] validate_only
        #   If true, validate the request and preview the change, but do not actually
        #   update it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_billing_account_location_insight_type_config(name, google_cloud_recommender_v1beta1_insight_type_config_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.request_object = google_cloud_recommender_v1beta1_insight_type_config_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested insight. Requires the recommender.*.get IAM permission for
        # the specified insight type.
        # @param [String] name
        #   Required. Name of the insight.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_insight_type_insight(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists insights for the specified Cloud Resource. Requires the recommender.*.
        # list IAM permission for the specified insight type.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/
        #   insightTypes/[INSIGHT_TYPE_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/
        #   insightTypes/[INSIGHT_TYPE_ID]` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` LOCATION here refers to GCP
        #   Locations: https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
        #   supported insight types: https://cloud.google.com/recommender/docs/insights/
        #   insight-types.
        # @param [String] filter
        #   Optional. Filter expression to restrict the insights returned. Supported
        #   filter fields: * `stateInfo.state` * `insightSubtype` * `severity` * `
        #   targetResources` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
        #   DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL OR
        #   severity = HIGH` * `targetResources : //compute.googleapis.com/projects/1234/
        #   zones/us-central1-a/instances/instance-1` * `stateInfo.state = ACTIVE AND (
        #   severity = CRITICAL OR severity = HIGH)` The max allowed filter length is 500
        #   characters. (These expressions are based on the filter language described at
        #   https://google.aip.dev/160)
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. If not specified, the server will determine the
        #   number of results to return.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters must be identical
        #   to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_insight_type_insights(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/insights', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Insight State as Accepted. Users can use this method to indicate to
        # the Recommender API that they have applied some action based on the insight.
        # This stops the insight content from being updated. MarkInsightAccepted can be
        # applied to insights in ACTIVE state. Requires the recommender.*.update IAM
        # permission for the specified insight.
        # @param [String] name
        #   Required. Name of the insight.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest] google_cloud_recommender_v1beta1_mark_insight_accepted_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_billing_account_location_insight_type_insight_accepted(name, google_cloud_recommender_v1beta1_mark_insight_accepted_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markAccepted', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_insight_accepted_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested Recommender Config. There is only one instance of the
        # config for each Recommender.
        # @param [String] name
        #   Required. Name of the Recommendation Config to get. Acceptable formats: * `
        #   projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/
        #   config` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]
        #   /recommenders/[RECOMMENDER_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/
        #   locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_recommender_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Recommender Config. This will create a new revision of the config.
        # @param [String] name
        #   Identifier. Name of recommender config. Eg, projects/[PROJECT_NUMBER]/
        #   locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] google_cloud_recommender_v1beta1_recommender_config_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [Boolean] validate_only
        #   If true, validate the request and preview the change, but do not actually
        #   update it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_billing_account_location_recommender_config(name, google_cloud_recommender_v1beta1_recommender_config_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.request_object = google_cloud_recommender_v1beta1_recommender_config_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested recommendation. Requires the recommender.*.get IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_recommender_recommendation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists recommendations for the specified Cloud Resource. Requires the
        # recommender.*.list IAM permission for the specified recommender.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/
        #   recommenders/[RECOMMENDER_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/
        #   recommenders/[RECOMMENDER_ID]` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/recommenders/[RECOMMENDER_ID]` LOCATION here refers to GCP Locations:
        #   https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to supported
        #   recommenders: https://cloud.google.com/recommender/docs/recommenders.
        # @param [String] filter
        #   Filter expression to restrict the recommendations returned. Supported filter
        #   fields: * `state_info.state` * `recommenderSubtype` * `priority` * `
        #   targetResources` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
        #   DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype =
        #   REPLACE_ROLE` * `priority = P1 OR priority = P2` * `targetResources : //
        #   compute.googleapis.com/projects/1234/zones/us-central1-a/instances/instance-1`
        #   * `stateInfo.state = ACTIVE AND (priority = P1 OR priority = P2)` The max
        #   allowed filter length is 500 characters. (These expressions are based on the
        #   filter language described at https://google.aip.dev/160)
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. If not specified, the server will determine the
        #   number of results to return.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters must be identical
        #   to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_recommender_recommendations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/recommendations', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Claimed. Users can use this method to
        # indicate to the Recommender API that they are starting to apply the
        # recommendation themselves. This stops the recommendation content from being
        # updated. Associated insights are frozen and placed in the ACCEPTED state.
        # MarkRecommendationClaimed can be applied to recommendations in CLAIMED or
        # ACTIVE state. Requires the recommender.*.update IAM permission for the
        # specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest] google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_billing_account_location_recommender_recommendation_claimed(name, google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markClaimed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mark the Recommendation State as Dismissed. Users can use this method to
        # indicate to the Recommender API that an ACTIVE recommendation has to be marked
        # back as DISMISSED. MarkRecommendationDismissed can be applied to
        # recommendations in ACTIVE state. Requires the recommender.*.update IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest] google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_billing_account_location_recommender_recommendation_dismissed(name, google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markDismissed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Failed. Users can use this method to
        # indicate to the Recommender API that they have applied the recommendation
        # themselves, and the operation failed. This stops the recommendation content
        # from being updated. Associated insights are frozen and placed in the ACCEPTED
        # state. MarkRecommendationFailed can be applied to recommendations in ACTIVE,
        # CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest] google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_billing_account_location_recommender_recommendation_failed(name, google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markFailed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Succeeded. Users can use this method to
        # indicate to the Recommender API that they have applied the recommendation
        # themselves, and the operation was successful. This stops the recommendation
        # content from being updated. Associated insights are frozen and placed in the
        # ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations
        # in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.
        # update IAM permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest] google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_billing_account_location_recommender_recommendation_succeeded(name, google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markSucceeded', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists locations with recommendations or insights.
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
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested insight. Requires the recommender.*.get IAM permission for
        # the specified insight type.
        # @param [String] name
        #   Required. Name of the insight.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_insight_type_insight(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists insights for the specified Cloud Resource. Requires the recommender.*.
        # list IAM permission for the specified insight type.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/
        #   insightTypes/[INSIGHT_TYPE_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/
        #   insightTypes/[INSIGHT_TYPE_ID]` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` LOCATION here refers to GCP
        #   Locations: https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
        #   supported insight types: https://cloud.google.com/recommender/docs/insights/
        #   insight-types.
        # @param [String] filter
        #   Optional. Filter expression to restrict the insights returned. Supported
        #   filter fields: * `stateInfo.state` * `insightSubtype` * `severity` * `
        #   targetResources` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
        #   DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL OR
        #   severity = HIGH` * `targetResources : //compute.googleapis.com/projects/1234/
        #   zones/us-central1-a/instances/instance-1` * `stateInfo.state = ACTIVE AND (
        #   severity = CRITICAL OR severity = HIGH)` The max allowed filter length is 500
        #   characters. (These expressions are based on the filter language described at
        #   https://google.aip.dev/160)
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. If not specified, the server will determine the
        #   number of results to return.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters must be identical
        #   to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_insight_type_insights(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/insights', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Insight State as Accepted. Users can use this method to indicate to
        # the Recommender API that they have applied some action based on the insight.
        # This stops the insight content from being updated. MarkInsightAccepted can be
        # applied to insights in ACTIVE state. Requires the recommender.*.update IAM
        # permission for the specified insight.
        # @param [String] name
        #   Required. Name of the insight.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest] google_cloud_recommender_v1beta1_mark_insight_accepted_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_folder_location_insight_type_insight_accepted(name, google_cloud_recommender_v1beta1_mark_insight_accepted_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markAccepted', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_insight_accepted_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested recommendation. Requires the recommender.*.get IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_recommender_recommendation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists recommendations for the specified Cloud Resource. Requires the
        # recommender.*.list IAM permission for the specified recommender.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/
        #   recommenders/[RECOMMENDER_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/
        #   recommenders/[RECOMMENDER_ID]` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/recommenders/[RECOMMENDER_ID]` LOCATION here refers to GCP Locations:
        #   https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to supported
        #   recommenders: https://cloud.google.com/recommender/docs/recommenders.
        # @param [String] filter
        #   Filter expression to restrict the recommendations returned. Supported filter
        #   fields: * `state_info.state` * `recommenderSubtype` * `priority` * `
        #   targetResources` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
        #   DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype =
        #   REPLACE_ROLE` * `priority = P1 OR priority = P2` * `targetResources : //
        #   compute.googleapis.com/projects/1234/zones/us-central1-a/instances/instance-1`
        #   * `stateInfo.state = ACTIVE AND (priority = P1 OR priority = P2)` The max
        #   allowed filter length is 500 characters. (These expressions are based on the
        #   filter language described at https://google.aip.dev/160)
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. If not specified, the server will determine the
        #   number of results to return.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters must be identical
        #   to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_recommender_recommendations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/recommendations', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Claimed. Users can use this method to
        # indicate to the Recommender API that they are starting to apply the
        # recommendation themselves. This stops the recommendation content from being
        # updated. Associated insights are frozen and placed in the ACCEPTED state.
        # MarkRecommendationClaimed can be applied to recommendations in CLAIMED or
        # ACTIVE state. Requires the recommender.*.update IAM permission for the
        # specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest] google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_folder_location_recommender_recommendation_claimed(name, google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markClaimed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mark the Recommendation State as Dismissed. Users can use this method to
        # indicate to the Recommender API that an ACTIVE recommendation has to be marked
        # back as DISMISSED. MarkRecommendationDismissed can be applied to
        # recommendations in ACTIVE state. Requires the recommender.*.update IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest] google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_folder_location_recommender_recommendation_dismissed(name, google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markDismissed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Failed. Users can use this method to
        # indicate to the Recommender API that they have applied the recommendation
        # themselves, and the operation failed. This stops the recommendation content
        # from being updated. Associated insights are frozen and placed in the ACCEPTED
        # state. MarkRecommendationFailed can be applied to recommendations in ACTIVE,
        # CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest] google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_folder_location_recommender_recommendation_failed(name, google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markFailed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Succeeded. Users can use this method to
        # indicate to the Recommender API that they have applied the recommendation
        # themselves, and the operation was successful. This stops the recommendation
        # content from being updated. Associated insights are frozen and placed in the
        # ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations
        # in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.
        # update IAM permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest] google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_folder_location_recommender_recommendation_succeeded(name, google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markSucceeded', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists available InsightTypes. No IAM permissions are required.
        # @param [Fixnum] page_size
        #   Optional. The number of InsightTypes to return per page. The service may
        #   return fewer than this value.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListRecommenders` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_insight_types(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/insightTypes', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightTypesResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightTypesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists locations with recommendations or insights.
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
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested InsightTypeConfig. There is only one instance of the config
        # for each InsightType.
        # @param [String] name
        #   Required. Name of the InsightTypeConfig to get. Acceptable formats: * `
        #   projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/
        #   config` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `billingAccounts/[
        #   BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_insight_type_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an InsightTypeConfig change. This will create a new revision of the
        # config.
        # @param [String] name
        #   Identifier. Name of insight type config. Eg, projects/[PROJECT_NUMBER]/
        #   locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] google_cloud_recommender_v1beta1_insight_type_config_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [Boolean] validate_only
        #   If true, validate the request and preview the change, but do not actually
        #   update it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_location_insight_type_config(name, google_cloud_recommender_v1beta1_insight_type_config_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.request_object = google_cloud_recommender_v1beta1_insight_type_config_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested insight. Requires the recommender.*.get IAM permission for
        # the specified insight type.
        # @param [String] name
        #   Required. Name of the insight.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_insight_type_insight(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists insights for the specified Cloud Resource. Requires the recommender.*.
        # list IAM permission for the specified insight type.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/
        #   insightTypes/[INSIGHT_TYPE_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/
        #   insightTypes/[INSIGHT_TYPE_ID]` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` LOCATION here refers to GCP
        #   Locations: https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
        #   supported insight types: https://cloud.google.com/recommender/docs/insights/
        #   insight-types.
        # @param [String] filter
        #   Optional. Filter expression to restrict the insights returned. Supported
        #   filter fields: * `stateInfo.state` * `insightSubtype` * `severity` * `
        #   targetResources` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
        #   DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL OR
        #   severity = HIGH` * `targetResources : //compute.googleapis.com/projects/1234/
        #   zones/us-central1-a/instances/instance-1` * `stateInfo.state = ACTIVE AND (
        #   severity = CRITICAL OR severity = HIGH)` The max allowed filter length is 500
        #   characters. (These expressions are based on the filter language described at
        #   https://google.aip.dev/160)
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. If not specified, the server will determine the
        #   number of results to return.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters must be identical
        #   to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_insight_type_insights(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/insights', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Insight State as Accepted. Users can use this method to indicate to
        # the Recommender API that they have applied some action based on the insight.
        # This stops the insight content from being updated. MarkInsightAccepted can be
        # applied to insights in ACTIVE state. Requires the recommender.*.update IAM
        # permission for the specified insight.
        # @param [String] name
        #   Required. Name of the insight.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest] google_cloud_recommender_v1beta1_mark_insight_accepted_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_organization_location_insight_type_insight_accepted(name, google_cloud_recommender_v1beta1_mark_insight_accepted_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markAccepted', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_insight_accepted_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested Recommender Config. There is only one instance of the
        # config for each Recommender.
        # @param [String] name
        #   Required. Name of the Recommendation Config to get. Acceptable formats: * `
        #   projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/
        #   config` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]
        #   /recommenders/[RECOMMENDER_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/
        #   locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_recommender_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Recommender Config. This will create a new revision of the config.
        # @param [String] name
        #   Identifier. Name of recommender config. Eg, projects/[PROJECT_NUMBER]/
        #   locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] google_cloud_recommender_v1beta1_recommender_config_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [Boolean] validate_only
        #   If true, validate the request and preview the change, but do not actually
        #   update it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_location_recommender_config(name, google_cloud_recommender_v1beta1_recommender_config_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.request_object = google_cloud_recommender_v1beta1_recommender_config_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested recommendation. Requires the recommender.*.get IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_recommender_recommendation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists recommendations for the specified Cloud Resource. Requires the
        # recommender.*.list IAM permission for the specified recommender.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/
        #   recommenders/[RECOMMENDER_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/
        #   recommenders/[RECOMMENDER_ID]` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/recommenders/[RECOMMENDER_ID]` LOCATION here refers to GCP Locations:
        #   https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to supported
        #   recommenders: https://cloud.google.com/recommender/docs/recommenders.
        # @param [String] filter
        #   Filter expression to restrict the recommendations returned. Supported filter
        #   fields: * `state_info.state` * `recommenderSubtype` * `priority` * `
        #   targetResources` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
        #   DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype =
        #   REPLACE_ROLE` * `priority = P1 OR priority = P2` * `targetResources : //
        #   compute.googleapis.com/projects/1234/zones/us-central1-a/instances/instance-1`
        #   * `stateInfo.state = ACTIVE AND (priority = P1 OR priority = P2)` The max
        #   allowed filter length is 500 characters. (These expressions are based on the
        #   filter language described at https://google.aip.dev/160)
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. If not specified, the server will determine the
        #   number of results to return.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters must be identical
        #   to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_recommender_recommendations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/recommendations', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Claimed. Users can use this method to
        # indicate to the Recommender API that they are starting to apply the
        # recommendation themselves. This stops the recommendation content from being
        # updated. Associated insights are frozen and placed in the ACCEPTED state.
        # MarkRecommendationClaimed can be applied to recommendations in CLAIMED or
        # ACTIVE state. Requires the recommender.*.update IAM permission for the
        # specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest] google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_organization_location_recommender_recommendation_claimed(name, google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markClaimed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mark the Recommendation State as Dismissed. Users can use this method to
        # indicate to the Recommender API that an ACTIVE recommendation has to be marked
        # back as DISMISSED. MarkRecommendationDismissed can be applied to
        # recommendations in ACTIVE state. Requires the recommender.*.update IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest] google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_organization_location_recommender_recommendation_dismissed(name, google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markDismissed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Failed. Users can use this method to
        # indicate to the Recommender API that they have applied the recommendation
        # themselves, and the operation failed. This stops the recommendation content
        # from being updated. Associated insights are frozen and placed in the ACCEPTED
        # state. MarkRecommendationFailed can be applied to recommendations in ACTIVE,
        # CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest] google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_organization_location_recommender_recommendation_failed(name, google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markFailed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Succeeded. Users can use this method to
        # indicate to the Recommender API that they have applied the recommendation
        # themselves, and the operation was successful. This stops the recommendation
        # content from being updated. Associated insights are frozen and placed in the
        # ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations
        # in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.
        # update IAM permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest] google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_organization_location_recommender_recommendation_succeeded(name, google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markSucceeded', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists locations with recommendations or insights.
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
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested InsightTypeConfig. There is only one instance of the config
        # for each InsightType.
        # @param [String] name
        #   Required. Name of the InsightTypeConfig to get. Acceptable formats: * `
        #   projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/
        #   config` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `billingAccounts/[
        #   BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_insight_type_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an InsightTypeConfig change. This will create a new revision of the
        # config.
        # @param [String] name
        #   Identifier. Name of insight type config. Eg, projects/[PROJECT_NUMBER]/
        #   locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] google_cloud_recommender_v1beta1_insight_type_config_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [Boolean] validate_only
        #   If true, validate the request and preview the change, but do not actually
        #   update it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_insight_type_config(name, google_cloud_recommender_v1beta1_insight_type_config_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.request_object = google_cloud_recommender_v1beta1_insight_type_config_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1InsightTypeConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested insight. Requires the recommender.*.get IAM permission for
        # the specified insight type.
        # @param [String] name
        #   Required. Name of the insight.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_insight_type_insight(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists insights for the specified Cloud Resource. Requires the recommender.*.
        # list IAM permission for the specified insight type.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[
        #   INSIGHT_TYPE_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/
        #   insightTypes/[INSIGHT_TYPE_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/
        #   insightTypes/[INSIGHT_TYPE_ID]` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` LOCATION here refers to GCP
        #   Locations: https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
        #   supported insight types: https://cloud.google.com/recommender/docs/insights/
        #   insight-types.
        # @param [String] filter
        #   Optional. Filter expression to restrict the insights returned. Supported
        #   filter fields: * `stateInfo.state` * `insightSubtype` * `severity` * `
        #   targetResources` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
        #   DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL OR
        #   severity = HIGH` * `targetResources : //compute.googleapis.com/projects/1234/
        #   zones/us-central1-a/instances/instance-1` * `stateInfo.state = ACTIVE AND (
        #   severity = CRITICAL OR severity = HIGH)` The max allowed filter length is 500
        #   characters. (These expressions are based on the filter language described at
        #   https://google.aip.dev/160)
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. If not specified, the server will determine the
        #   number of results to return.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters must be identical
        #   to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_insight_type_insights(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/insights', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListInsightsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Insight State as Accepted. Users can use this method to indicate to
        # the Recommender API that they have applied some action based on the insight.
        # This stops the insight content from being updated. MarkInsightAccepted can be
        # applied to insights in ACTIVE state. Requires the recommender.*.update IAM
        # permission for the specified insight.
        # @param [String] name
        #   Required. Name of the insight.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest] google_cloud_recommender_v1beta1_mark_insight_accepted_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_project_location_insight_type_insight_accepted(name, google_cloud_recommender_v1beta1_mark_insight_accepted_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markAccepted', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_insight_accepted_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Insight
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested Recommender Config. There is only one instance of the
        # config for each Recommender.
        # @param [String] name
        #   Required. Name of the Recommendation Config to get. Acceptable formats: * `
        #   projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/
        #   config` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]
        #   /recommenders/[RECOMMENDER_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/
        #   locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_recommender_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Recommender Config. This will create a new revision of the config.
        # @param [String] name
        #   Identifier. Name of recommender config. Eg, projects/[PROJECT_NUMBER]/
        #   locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] google_cloud_recommender_v1beta1_recommender_config_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [Boolean] validate_only
        #   If true, validate the request and preview the change, but do not actually
        #   update it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_recommender_config(name, google_cloud_recommender_v1beta1_recommender_config_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.request_object = google_cloud_recommender_v1beta1_recommender_config_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1RecommenderConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested recommendation. Requires the recommender.*.get IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_recommender_recommendation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists recommendations for the specified Cloud Resource. Requires the
        # recommender.*.list IAM permission for the specified recommender.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[
        #   RECOMMENDER_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/
        #   recommenders/[RECOMMENDER_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/
        #   recommenders/[RECOMMENDER_ID]` * `organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION]/recommenders/[RECOMMENDER_ID]` LOCATION here refers to GCP Locations:
        #   https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to supported
        #   recommenders: https://cloud.google.com/recommender/docs/recommenders.
        # @param [String] filter
        #   Filter expression to restrict the recommendations returned. Supported filter
        #   fields: * `state_info.state` * `recommenderSubtype` * `priority` * `
        #   targetResources` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
        #   DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype =
        #   REPLACE_ROLE` * `priority = P1 OR priority = P2` * `targetResources : //
        #   compute.googleapis.com/projects/1234/zones/us-central1-a/instances/instance-1`
        #   * `stateInfo.state = ACTIVE AND (priority = P1 OR priority = P2)` The max
        #   allowed filter length is 500 characters. (These expressions are based on the
        #   filter language described at https://google.aip.dev/160)
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. If not specified, the server will determine the
        #   number of results to return.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters must be identical
        #   to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_recommender_recommendations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/recommendations', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Claimed. Users can use this method to
        # indicate to the Recommender API that they are starting to apply the
        # recommendation themselves. This stops the recommendation content from being
        # updated. Associated insights are frozen and placed in the ACCEPTED state.
        # MarkRecommendationClaimed can be applied to recommendations in CLAIMED or
        # ACTIVE state. Requires the recommender.*.update IAM permission for the
        # specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest] google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_project_location_recommender_recommendation_claimed(name, google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markClaimed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_claimed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mark the Recommendation State as Dismissed. Users can use this method to
        # indicate to the Recommender API that an ACTIVE recommendation has to be marked
        # back as DISMISSED. MarkRecommendationDismissed can be applied to
        # recommendations in ACTIVE state. Requires the recommender.*.update IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest] google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_project_location_recommender_recommendation_dismissed(name, google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markDismissed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_dismissed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Failed. Users can use this method to
        # indicate to the Recommender API that they have applied the recommendation
        # themselves, and the operation failed. This stops the recommendation content
        # from being updated. Associated insights are frozen and placed in the ACCEPTED
        # state. MarkRecommendationFailed can be applied to recommendations in ACTIVE,
        # CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM
        # permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest] google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_project_location_recommender_recommendation_failed(name, google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markFailed', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_failed_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Recommendation State as Succeeded. Users can use this method to
        # indicate to the Recommender API that they have applied the recommendation
        # themselves, and the operation was successful. This stops the recommendation
        # content from being updated. Associated insights are frozen and placed in the
        # ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations
        # in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.
        # update IAM permission for the specified recommender.
        # @param [String] name
        #   Required. Name of the recommendation.
        # @param [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest] google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_project_location_recommender_recommendation_succeeded(name, google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:markSucceeded', options)
          command.request_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest::Representation
          command.request_object = google_cloud_recommender_v1beta1_mark_recommendation_succeeded_request_object
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1Recommendation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all available Recommenders. No IAM permissions are required.
        # @param [Fixnum] page_size
        #   Optional. The number of RecommenderTypes to return per page. The service may
        #   return fewer than this value.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListRecommenders` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_recommenders(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/recommenders', options)
          command.response_representation = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendersResponse::Representation
          command.response_class = Google::Apis::RecommenderV1beta1::GoogleCloudRecommenderV1beta1ListRecommendersResponse
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
