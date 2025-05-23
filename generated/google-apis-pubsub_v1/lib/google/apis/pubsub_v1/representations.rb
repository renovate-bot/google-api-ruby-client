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
    module PubsubV1
      
      class AcknowledgeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsHubSubscriptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvroConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvroFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsKinesis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsMsk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureEventHubs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudStorage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfluentCloud
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSnapshotRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeadLetterPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetachSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExpirationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestionDataSourceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JavaScriptUdf
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSchemaRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSnapshotsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicSnapshotsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageStoragePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageTransform
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyAckDeadlineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyPushConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NoWrapper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OidcToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlatformLogsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubSubAvroFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubWrapper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReceivedMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeekRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeekResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Snapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
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
      
      class TextConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Topic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSnapshotRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateTopicRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateSchemaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcknowledgeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ack_ids, as: 'ackIds'
        end
      end
      
      class AnalyticsHubSubscriptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :listing, as: 'listing'
          property :subscription, as: 'subscription'
        end
      end
      
      class AvroConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_topic_schema, as: 'useTopicSchema'
          property :write_metadata, as: 'writeMetadata'
        end
      end
      
      class AvroFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AwsKinesis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_role_arn, as: 'awsRoleArn'
          property :consumer_arn, as: 'consumerArn'
          property :gcp_service_account, as: 'gcpServiceAccount'
          property :state, as: 'state'
          property :stream_arn, as: 'streamArn'
        end
      end
      
      class AwsMsk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_role_arn, as: 'awsRoleArn'
          property :cluster_arn, as: 'clusterArn'
          property :gcp_service_account, as: 'gcpServiceAccount'
          property :state, as: 'state'
          property :topic, as: 'topic'
        end
      end
      
      class AzureEventHubs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :event_hub, as: 'eventHub'
          property :gcp_service_account, as: 'gcpServiceAccount'
          property :namespace, as: 'namespace'
          property :resource_group, as: 'resourceGroup'
          property :state, as: 'state'
          property :subscription_id, as: 'subscriptionId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class BigQueryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drop_unknown_fields, as: 'dropUnknownFields'
          property :service_account_email, as: 'serviceAccountEmail'
          property :state, as: 'state'
          property :table, as: 'table'
          property :use_table_schema, as: 'useTableSchema'
          property :use_topic_schema, as: 'useTopicSchema'
          property :write_metadata, as: 'writeMetadata'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::PubsubV1::Expr, decorator: Google::Apis::PubsubV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CloudStorage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avro_format, as: 'avroFormat', class: Google::Apis::PubsubV1::AvroFormat, decorator: Google::Apis::PubsubV1::AvroFormat::Representation
      
          property :bucket, as: 'bucket'
          property :match_glob, as: 'matchGlob'
          property :minimum_object_create_time, as: 'minimumObjectCreateTime'
          property :pubsub_avro_format, as: 'pubsubAvroFormat', class: Google::Apis::PubsubV1::PubSubAvroFormat, decorator: Google::Apis::PubsubV1::PubSubAvroFormat::Representation
      
          property :state, as: 'state'
          property :text_format, as: 'textFormat', class: Google::Apis::PubsubV1::TextFormat, decorator: Google::Apis::PubsubV1::TextFormat::Representation
      
        end
      end
      
      class CloudStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avro_config, as: 'avroConfig', class: Google::Apis::PubsubV1::AvroConfig, decorator: Google::Apis::PubsubV1::AvroConfig::Representation
      
          property :bucket, as: 'bucket'
          property :filename_datetime_format, as: 'filenameDatetimeFormat'
          property :filename_prefix, as: 'filenamePrefix'
          property :filename_suffix, as: 'filenameSuffix'
          property :max_bytes, :numeric_string => true, as: 'maxBytes'
          property :max_duration, as: 'maxDuration'
          property :max_messages, :numeric_string => true, as: 'maxMessages'
          property :service_account_email, as: 'serviceAccountEmail'
          property :state, as: 'state'
          property :text_config, as: 'textConfig', class: Google::Apis::PubsubV1::TextConfig, decorator: Google::Apis::PubsubV1::TextConfig::Representation
      
        end
      end
      
      class CommitSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ConfluentCloud
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bootstrap_server, as: 'bootstrapServer'
          property :cluster_id, as: 'clusterId'
          property :gcp_service_account, as: 'gcpServiceAccount'
          property :identity_pool_id, as: 'identityPoolId'
          property :state, as: 'state'
          property :topic, as: 'topic'
        end
      end
      
      class CreateSnapshotRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :subscription, as: 'subscription'
        end
      end
      
      class DeadLetterPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dead_letter_topic, as: 'deadLetterTopic'
          property :max_delivery_attempts, as: 'maxDeliveryAttempts'
        end
      end
      
      class DetachSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExpirationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ttl, as: 'ttl'
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
      
      class IngestionDataSourceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_kinesis, as: 'awsKinesis', class: Google::Apis::PubsubV1::AwsKinesis, decorator: Google::Apis::PubsubV1::AwsKinesis::Representation
      
          property :aws_msk, as: 'awsMsk', class: Google::Apis::PubsubV1::AwsMsk, decorator: Google::Apis::PubsubV1::AwsMsk::Representation
      
          property :azure_event_hubs, as: 'azureEventHubs', class: Google::Apis::PubsubV1::AzureEventHubs, decorator: Google::Apis::PubsubV1::AzureEventHubs::Representation
      
          property :cloud_storage, as: 'cloudStorage', class: Google::Apis::PubsubV1::CloudStorage, decorator: Google::Apis::PubsubV1::CloudStorage::Representation
      
          property :confluent_cloud, as: 'confluentCloud', class: Google::Apis::PubsubV1::ConfluentCloud, decorator: Google::Apis::PubsubV1::ConfluentCloud::Representation
      
          property :platform_logs_settings, as: 'platformLogsSettings', class: Google::Apis::PubsubV1::PlatformLogsSettings, decorator: Google::Apis::PubsubV1::PlatformLogsSettings::Representation
      
        end
      end
      
      class JavaScriptUdf
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :function_name, as: 'functionName'
        end
      end
      
      class ListSchemaRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ListSnapshotsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :snapshots, as: 'snapshots', class: Google::Apis::PubsubV1::Snapshot, decorator: Google::Apis::PubsubV1::Snapshot::Representation
      
        end
      end
      
      class ListSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions', class: Google::Apis::PubsubV1::Subscription, decorator: Google::Apis::PubsubV1::Subscription::Representation
      
        end
      end
      
      class ListTopicSnapshotsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :snapshots, as: 'snapshots'
        end
      end
      
      class ListTopicSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions'
        end
      end
      
      class ListTopicsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :topics, as: 'topics', class: Google::Apis::PubsubV1::Topic, decorator: Google::Apis::PubsubV1::Topic::Representation
      
        end
      end
      
      class MessageStoragePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_persistence_regions, as: 'allowedPersistenceRegions'
          property :enforce_in_transit, as: 'enforceInTransit'
        end
      end
      
      class MessageTransform
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :enabled, as: 'enabled'
          property :javascript_udf, as: 'javascriptUdf', class: Google::Apis::PubsubV1::JavaScriptUdf, decorator: Google::Apis::PubsubV1::JavaScriptUdf::Representation
      
        end
      end
      
      class ModifyAckDeadlineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
          collection :ack_ids, as: 'ackIds'
        end
      end
      
      class ModifyPushConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1::PushConfig, decorator: Google::Apis::PubsubV1::PushConfig::Representation
      
        end
      end
      
      class NoWrapper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :write_metadata, as: 'writeMetadata'
        end
      end
      
      class OidcToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class PlatformLogsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :severity, as: 'severity'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::PubsubV1::Binding, decorator: Google::Apis::PubsubV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PubSubAvroFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PublishRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::PubsubV1::Message, decorator: Google::Apis::PubsubV1::Message::Representation
      
        end
      end
      
      class PublishResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :message_ids, as: 'messageIds'
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :data, :base64 => true, as: 'data'
          property :message_id, as: 'messageId'
          property :ordering_key, as: 'orderingKey'
          property :publish_time, as: 'publishTime'
        end
      end
      
      class PubsubWrapper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PullRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_messages, as: 'maxMessages'
          property :return_immediately, as: 'returnImmediately'
        end
      end
      
      class PullResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :received_messages, as: 'receivedMessages', class: Google::Apis::PubsubV1::ReceivedMessage, decorator: Google::Apis::PubsubV1::ReceivedMessage::Representation
      
        end
      end
      
      class PushConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :no_wrapper, as: 'noWrapper', class: Google::Apis::PubsubV1::NoWrapper, decorator: Google::Apis::PubsubV1::NoWrapper::Representation
      
          property :oidc_token, as: 'oidcToken', class: Google::Apis::PubsubV1::OidcToken, decorator: Google::Apis::PubsubV1::OidcToken::Representation
      
          property :pubsub_wrapper, as: 'pubsubWrapper', class: Google::Apis::PubsubV1::PubsubWrapper, decorator: Google::Apis::PubsubV1::PubsubWrapper::Representation
      
          property :push_endpoint, as: 'pushEndpoint'
        end
      end
      
      class ReceivedMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_id, as: 'ackId'
          property :delivery_attempt, as: 'deliveryAttempt'
          property :message, as: 'message', class: Google::Apis::PubsubV1::Message, decorator: Google::Apis::PubsubV1::Message::Representation
      
        end
      end
      
      class RetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum_backoff, as: 'maximumBackoff'
          property :minimum_backoff, as: 'minimumBackoff'
        end
      end
      
      class RollbackSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision_id, as: 'revisionId'
        end
      end
      
      class Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :definition, as: 'definition'
          property :name, as: 'name'
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :type, as: 'type'
        end
      end
      
      class SchemaSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :first_revision_id, as: 'firstRevisionId'
          property :last_revision_id, as: 'lastRevisionId'
          property :schema, as: 'schema'
        end
      end
      
      class SeekRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot, as: 'snapshot'
          property :time, as: 'time'
        end
      end
      
      class SeekResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::PubsubV1::Policy, decorator: Google::Apis::PubsubV1::Policy::Representation
      
        end
      end
      
      class Snapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :topic, as: 'topic'
        end
      end
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
          property :analytics_hub_subscription_info, as: 'analyticsHubSubscriptionInfo', class: Google::Apis::PubsubV1::AnalyticsHubSubscriptionInfo, decorator: Google::Apis::PubsubV1::AnalyticsHubSubscriptionInfo::Representation
      
          property :bigquery_config, as: 'bigqueryConfig', class: Google::Apis::PubsubV1::BigQueryConfig, decorator: Google::Apis::PubsubV1::BigQueryConfig::Representation
      
          property :cloud_storage_config, as: 'cloudStorageConfig', class: Google::Apis::PubsubV1::CloudStorageConfig, decorator: Google::Apis::PubsubV1::CloudStorageConfig::Representation
      
          property :dead_letter_policy, as: 'deadLetterPolicy', class: Google::Apis::PubsubV1::DeadLetterPolicy, decorator: Google::Apis::PubsubV1::DeadLetterPolicy::Representation
      
          property :detached, as: 'detached'
          property :enable_exactly_once_delivery, as: 'enableExactlyOnceDelivery'
          property :enable_message_ordering, as: 'enableMessageOrdering'
          property :expiration_policy, as: 'expirationPolicy', class: Google::Apis::PubsubV1::ExpirationPolicy, decorator: Google::Apis::PubsubV1::ExpirationPolicy::Representation
      
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :message_retention_duration, as: 'messageRetentionDuration'
          collection :message_transforms, as: 'messageTransforms', class: Google::Apis::PubsubV1::MessageTransform, decorator: Google::Apis::PubsubV1::MessageTransform::Representation
      
          property :name, as: 'name'
          property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1::PushConfig, decorator: Google::Apis::PubsubV1::PushConfig::Representation
      
          property :retain_acked_messages, as: 'retainAckedMessages'
          property :retry_policy, as: 'retryPolicy', class: Google::Apis::PubsubV1::RetryPolicy, decorator: Google::Apis::PubsubV1::RetryPolicy::Representation
      
          property :state, as: 'state'
          property :topic, as: 'topic'
          property :topic_message_retention_duration, as: 'topicMessageRetentionDuration'
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
      
      class TextConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TextFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
        end
      end
      
      class Topic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingestion_data_source_settings, as: 'ingestionDataSourceSettings', class: Google::Apis::PubsubV1::IngestionDataSourceSettings, decorator: Google::Apis::PubsubV1::IngestionDataSourceSettings::Representation
      
          property :kms_key_name, as: 'kmsKeyName'
          hash :labels, as: 'labels'
          property :message_retention_duration, as: 'messageRetentionDuration'
          property :message_storage_policy, as: 'messageStoragePolicy', class: Google::Apis::PubsubV1::MessageStoragePolicy, decorator: Google::Apis::PubsubV1::MessageStoragePolicy::Representation
      
          collection :message_transforms, as: 'messageTransforms', class: Google::Apis::PubsubV1::MessageTransform, decorator: Google::Apis::PubsubV1::MessageTransform::Representation
      
          property :name, as: 'name'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :schema_settings, as: 'schemaSettings', class: Google::Apis::PubsubV1::SchemaSettings, decorator: Google::Apis::PubsubV1::SchemaSettings::Representation
      
          property :state, as: 'state'
        end
      end
      
      class UpdateSnapshotRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot, as: 'snapshot', class: Google::Apis::PubsubV1::Snapshot, decorator: Google::Apis::PubsubV1::Snapshot::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PubsubV1::Subscription, decorator: Google::Apis::PubsubV1::Subscription::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateTopicRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic', class: Google::Apis::PubsubV1::Topic, decorator: Google::Apis::PubsubV1::Topic::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class ValidateMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :message, :base64 => true, as: 'message'
          property :name, as: 'name'
          property :schema, as: 'schema', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ValidateMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ValidateSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ValidateSchemaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
