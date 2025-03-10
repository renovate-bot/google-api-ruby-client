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
    module WebsecurityscannerV1
      
      class Authentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CrawledUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Finding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindingTypeStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Form
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Header
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IapCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IapTestServiceAccountInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCrawledUrlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFindingTypeStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListScanConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListScanRunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutdatedLibrary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScanConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScanConfigError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScanRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScanRunErrorTrace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScanRunWarningTrace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartScanRunRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopScanRunRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViolatingResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerableHeaders
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerableParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Xss
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Xxe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Authentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_account, as: 'customAccount', class: Google::Apis::WebsecurityscannerV1::CustomAccount, decorator: Google::Apis::WebsecurityscannerV1::CustomAccount::Representation
      
          property :google_account, as: 'googleAccount', class: Google::Apis::WebsecurityscannerV1::GoogleAccount, decorator: Google::Apis::WebsecurityscannerV1::GoogleAccount::Representation
      
          property :iap_credential, as: 'iapCredential', class: Google::Apis::WebsecurityscannerV1::IapCredential, decorator: Google::Apis::WebsecurityscannerV1::IapCredential::Representation
      
        end
      end
      
      class CrawledUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :http_method, as: 'httpMethod'
          property :url, as: 'url'
        end
      end
      
      class CustomAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :login_url, as: 'loginUrl'
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :description, as: 'description'
          property :final_url, as: 'finalUrl'
          property :finding_type, as: 'findingType'
          property :form, as: 'form', class: Google::Apis::WebsecurityscannerV1::Form, decorator: Google::Apis::WebsecurityscannerV1::Form::Representation
      
          property :frame_url, as: 'frameUrl'
          property :fuzzed_url, as: 'fuzzedUrl'
          property :http_method, as: 'httpMethod'
          property :name, as: 'name'
          property :outdated_library, as: 'outdatedLibrary', class: Google::Apis::WebsecurityscannerV1::OutdatedLibrary, decorator: Google::Apis::WebsecurityscannerV1::OutdatedLibrary::Representation
      
          property :reproduction_url, as: 'reproductionUrl'
          property :severity, as: 'severity'
          property :tracking_id, as: 'trackingId'
          property :violating_resource, as: 'violatingResource', class: Google::Apis::WebsecurityscannerV1::ViolatingResource, decorator: Google::Apis::WebsecurityscannerV1::ViolatingResource::Representation
      
          property :vulnerable_headers, as: 'vulnerableHeaders', class: Google::Apis::WebsecurityscannerV1::VulnerableHeaders, decorator: Google::Apis::WebsecurityscannerV1::VulnerableHeaders::Representation
      
          property :vulnerable_parameters, as: 'vulnerableParameters', class: Google::Apis::WebsecurityscannerV1::VulnerableParameters, decorator: Google::Apis::WebsecurityscannerV1::VulnerableParameters::Representation
      
          property :xss, as: 'xss', class: Google::Apis::WebsecurityscannerV1::Xss, decorator: Google::Apis::WebsecurityscannerV1::Xss::Representation
      
          property :xxe, as: 'xxe', class: Google::Apis::WebsecurityscannerV1::Xxe, decorator: Google::Apis::WebsecurityscannerV1::Xxe::Representation
      
        end
      end
      
      class FindingTypeStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finding_count, as: 'findingCount'
          property :finding_type, as: 'findingType'
        end
      end
      
      class Form
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_uri, as: 'actionUri'
          collection :fields, as: 'fields'
        end
      end
      
      class GoogleAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class Header
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class IapCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iap_test_service_account_info, as: 'iapTestServiceAccountInfo', class: Google::Apis::WebsecurityscannerV1::IapTestServiceAccountInfo, decorator: Google::Apis::WebsecurityscannerV1::IapTestServiceAccountInfo::Representation
      
        end
      end
      
      class IapTestServiceAccountInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_audience_client_id, as: 'targetAudienceClientId'
        end
      end
      
      class ListCrawledUrlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :crawled_urls, as: 'crawledUrls', class: Google::Apis::WebsecurityscannerV1::CrawledUrl, decorator: Google::Apis::WebsecurityscannerV1::CrawledUrl::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFindingTypeStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :finding_type_stats, as: 'findingTypeStats', class: Google::Apis::WebsecurityscannerV1::FindingTypeStats, decorator: Google::Apis::WebsecurityscannerV1::FindingTypeStats::Representation
      
        end
      end
      
      class ListFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :findings, as: 'findings', class: Google::Apis::WebsecurityscannerV1::Finding, decorator: Google::Apis::WebsecurityscannerV1::Finding::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListScanConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scan_configs, as: 'scanConfigs', class: Google::Apis::WebsecurityscannerV1::ScanConfig, decorator: Google::Apis::WebsecurityscannerV1::ScanConfig::Representation
      
        end
      end
      
      class ListScanRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scan_runs, as: 'scanRuns', class: Google::Apis::WebsecurityscannerV1::ScanRun, decorator: Google::Apis::WebsecurityscannerV1::ScanRun::Representation
      
        end
      end
      
      class OutdatedLibrary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :learn_more_urls, as: 'learnMoreUrls'
          property :library_name, as: 'libraryName'
          property :version, as: 'version'
        end
      end
      
      class ScanConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication, as: 'authentication', class: Google::Apis::WebsecurityscannerV1::Authentication, decorator: Google::Apis::WebsecurityscannerV1::Authentication::Representation
      
          collection :blacklist_patterns, as: 'blacklistPatterns'
          property :display_name, as: 'displayName'
          property :export_to_security_command_center, as: 'exportToSecurityCommandCenter'
          property :ignore_http_status_errors, as: 'ignoreHttpStatusErrors'
          property :latest_run, as: 'latestRun', class: Google::Apis::WebsecurityscannerV1::ScanRun, decorator: Google::Apis::WebsecurityscannerV1::ScanRun::Representation
      
          property :managed_scan, as: 'managedScan'
          property :max_qps, as: 'maxQps'
          property :name, as: 'name'
          property :risk_level, as: 'riskLevel'
          property :schedule, as: 'schedule', class: Google::Apis::WebsecurityscannerV1::Schedule, decorator: Google::Apis::WebsecurityscannerV1::Schedule::Representation
      
          collection :starting_urls, as: 'startingUrls'
          property :static_ip_scan, as: 'staticIpScan'
          collection :target_platforms, as: 'targetPlatforms'
          property :user_agent, as: 'userAgent'
        end
      end
      
      class ScanConfigError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :field_name, as: 'fieldName'
        end
      end
      
      class ScanRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :error_trace, as: 'errorTrace', class: Google::Apis::WebsecurityscannerV1::ScanRunErrorTrace, decorator: Google::Apis::WebsecurityscannerV1::ScanRunErrorTrace::Representation
      
          property :execution_state, as: 'executionState'
          property :has_vulnerabilities, as: 'hasVulnerabilities'
          property :name, as: 'name'
          property :progress_percent, as: 'progressPercent'
          property :result_state, as: 'resultState'
          property :start_time, as: 'startTime'
          property :urls_crawled_count, :numeric_string => true, as: 'urlsCrawledCount'
          property :urls_tested_count, :numeric_string => true, as: 'urlsTestedCount'
          collection :warning_traces, as: 'warningTraces', class: Google::Apis::WebsecurityscannerV1::ScanRunWarningTrace, decorator: Google::Apis::WebsecurityscannerV1::ScanRunWarningTrace::Representation
      
        end
      end
      
      class ScanRunErrorTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :most_common_http_error_code, as: 'mostCommonHttpErrorCode'
          property :scan_config_error, as: 'scanConfigError', class: Google::Apis::WebsecurityscannerV1::ScanConfigError, decorator: Google::Apis::WebsecurityscannerV1::ScanConfigError::Representation
      
        end
      end
      
      class ScanRunWarningTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval_duration_days, as: 'intervalDurationDays'
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class StartScanRunRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StopScanRunRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ViolatingResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class VulnerableHeaders
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :headers, as: 'headers', class: Google::Apis::WebsecurityscannerV1::Header, decorator: Google::Apis::WebsecurityscannerV1::Header::Representation
      
          collection :missing_headers, as: 'missingHeaders', class: Google::Apis::WebsecurityscannerV1::Header, decorator: Google::Apis::WebsecurityscannerV1::Header::Representation
      
        end
      end
      
      class VulnerableParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameter_names, as: 'parameterNames'
        end
      end
      
      class Xss
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_vector, as: 'attackVector'
          property :error_message, as: 'errorMessage'
          collection :stack_traces, as: 'stackTraces'
          property :stored_xss_seeding_url, as: 'storedXssSeedingUrl'
        end
      end
      
      class Xxe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload_location, as: 'payloadLocation'
          property :payload_value, as: 'payloadValue'
        end
      end
    end
  end
end
