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
      
      # Request for the Acknowledge method.
      class AcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # Required. The acknowledgment ID for the messages being acknowledged that was
        # returned by the Pub/Sub system in the `Pull` response. Must not be empty.
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_ids = args[:ack_ids] if args.key?(:ack_ids)
        end
      end
      
      # Information about an associated [Analytics Hub subscription](https://cloud.
      # google.com/bigquery/docs/analytics-hub-manage-subscriptions).
      class AnalyticsHubSubscriptionInfo
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the associated Analytics Hub listing resource. Pattern: "
        # projects/`project`/locations/`location`/dataExchanges/`data_exchange`/listings/
        # `listing`"
        # Corresponds to the JSON property `listing`
        # @return [String]
        attr_accessor :listing
      
        # Optional. The name of the associated Analytics Hub subscription resource.
        # Pattern: "projects/`project`/locations/`location`/subscriptions/`subscription`"
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @listing = args[:listing] if args.key?(:listing)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Configuration for writing message data in Avro format. Message payloads and
      # metadata will be written to files as an Avro binary.
      class AvroConfig
        include Google::Apis::Core::Hashable
      
        # Optional. When true, the output Cloud Storage file will be serialized using
        # the topic schema, if it exists.
        # Corresponds to the JSON property `useTopicSchema`
        # @return [Boolean]
        attr_accessor :use_topic_schema
        alias_method :use_topic_schema?, :use_topic_schema
      
        # Optional. When true, write the subscription name, message_id, publish_time,
        # attributes, and ordering_key as additional fields in the output. The
        # subscription name, message_id, and publish_time fields are put in their own
        # fields while all other message properties other than data (for example, an
        # ordering_key, if present) are added as entries in the attributes map.
        # Corresponds to the JSON property `writeMetadata`
        # @return [Boolean]
        attr_accessor :write_metadata
        alias_method :write_metadata?, :write_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @use_topic_schema = args[:use_topic_schema] if args.key?(:use_topic_schema)
          @write_metadata = args[:write_metadata] if args.key?(:write_metadata)
        end
      end
      
      # Configuration for reading Cloud Storage data in Avro binary format. The bytes
      # of each object will be set to the `data` field of a Pub/Sub message.
      class AvroFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Ingestion settings for Amazon Kinesis Data Streams.
      class AwsKinesis
        include Google::Apis::Core::Hashable
      
        # Required. AWS role ARN to be used for Federated Identity authentication with
        # Kinesis. Check the Pub/Sub docs for how to set up this role and the required
        # permissions that need to be attached to it.
        # Corresponds to the JSON property `awsRoleArn`
        # @return [String]
        attr_accessor :aws_role_arn
      
        # Required. The Kinesis consumer ARN to used for ingestion in Enhanced Fan-Out
        # mode. The consumer must be already created and ready to be used.
        # Corresponds to the JSON property `consumerArn`
        # @return [String]
        attr_accessor :consumer_arn
      
        # Required. The GCP service account to be used for Federated Identity
        # authentication with Kinesis (via a `AssumeRoleWithWebIdentity` call for the
        # provided role). The `aws_role_arn` must be set up with `accounts.google.com:
        # sub` equals to this service account number.
        # Corresponds to the JSON property `gcpServiceAccount`
        # @return [String]
        attr_accessor :gcp_service_account
      
        # Output only. An output-only field that indicates the state of the Kinesis
        # ingestion source.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The Kinesis stream ARN to ingest data from.
        # Corresponds to the JSON property `streamArn`
        # @return [String]
        attr_accessor :stream_arn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_role_arn = args[:aws_role_arn] if args.key?(:aws_role_arn)
          @consumer_arn = args[:consumer_arn] if args.key?(:consumer_arn)
          @gcp_service_account = args[:gcp_service_account] if args.key?(:gcp_service_account)
          @state = args[:state] if args.key?(:state)
          @stream_arn = args[:stream_arn] if args.key?(:stream_arn)
        end
      end
      
      # Ingestion settings for Amazon MSK.
      class AwsMsk
        include Google::Apis::Core::Hashable
      
        # Required. AWS role ARN to be used for Federated Identity authentication with
        # Amazon MSK. Check the Pub/Sub docs for how to set up this role and the
        # required permissions that need to be attached to it.
        # Corresponds to the JSON property `awsRoleArn`
        # @return [String]
        attr_accessor :aws_role_arn
      
        # Required. The Amazon Resource Name (ARN) that uniquely identifies the cluster.
        # Corresponds to the JSON property `clusterArn`
        # @return [String]
        attr_accessor :cluster_arn
      
        # Required. The GCP service account to be used for Federated Identity
        # authentication with Amazon MSK (via a `AssumeRoleWithWebIdentity` call for the
        # provided role). The `aws_role_arn` must be set up with `accounts.google.com:
        # sub` equals to this service account number.
        # Corresponds to the JSON property `gcpServiceAccount`
        # @return [String]
        attr_accessor :gcp_service_account
      
        # Output only. An output-only field that indicates the state of the Amazon MSK
        # ingestion source.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The name of the topic in the Amazon MSK cluster that Pub/Sub will
        # import from.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_role_arn = args[:aws_role_arn] if args.key?(:aws_role_arn)
          @cluster_arn = args[:cluster_arn] if args.key?(:cluster_arn)
          @gcp_service_account = args[:gcp_service_account] if args.key?(:gcp_service_account)
          @state = args[:state] if args.key?(:state)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Ingestion settings for Azure Event Hubs.
      class AzureEventHubs
        include Google::Apis::Core::Hashable
      
        # Optional. The client id of the Azure application that is being used to
        # authenticate Pub/Sub.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Optional. The name of the Event Hub.
        # Corresponds to the JSON property `eventHub`
        # @return [String]
        attr_accessor :event_hub
      
        # Optional. The GCP service account to be used for Federated Identity
        # authentication.
        # Corresponds to the JSON property `gcpServiceAccount`
        # @return [String]
        attr_accessor :gcp_service_account
      
        # Optional. The name of the Event Hubs namespace.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        # Optional. Name of the resource group within the azure subscription.
        # Corresponds to the JSON property `resourceGroup`
        # @return [String]
        attr_accessor :resource_group
      
        # Output only. An output-only field that indicates the state of the Event Hubs
        # ingestion source.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. The Azure subscription id.
        # Corresponds to the JSON property `subscriptionId`
        # @return [String]
        attr_accessor :subscription_id
      
        # Optional. The tenant id of the Azure application that is being used to
        # authenticate Pub/Sub.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @event_hub = args[:event_hub] if args.key?(:event_hub)
          @gcp_service_account = args[:gcp_service_account] if args.key?(:gcp_service_account)
          @namespace = args[:namespace] if args.key?(:namespace)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @state = args[:state] if args.key?(:state)
          @subscription_id = args[:subscription_id] if args.key?(:subscription_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Configuration for a BigQuery subscription.
      class BigQueryConfig
        include Google::Apis::Core::Hashable
      
        # Optional. When true and use_topic_schema is true, any fields that are a part
        # of the topic schema that are not part of the BigQuery table schema are dropped
        # when writing to BigQuery. Otherwise, the schemas must be kept in sync and any
        # messages with extra fields are not written and remain in the subscription's
        # backlog.
        # Corresponds to the JSON property `dropUnknownFields`
        # @return [Boolean]
        attr_accessor :drop_unknown_fields
        alias_method :drop_unknown_fields?, :drop_unknown_fields
      
        # Optional. The service account to use to write to BigQuery. The subscription
        # creator or updater that specifies this field must have `iam.serviceAccounts.
        # actAs` permission on the service account. If not specified, the Pub/Sub [
        # service agent](https://cloud.google.com/iam/docs/service-agents), service-`
        # project_number`@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Output only. An output-only field that indicates whether or not the
        # subscription can receive messages.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. The name of the table to which to write data, of the form `projectId`
        # .`datasetId`.`tableId`
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # Optional. When true, use the BigQuery table's schema as the columns to write
        # to in BigQuery. `use_table_schema` and `use_topic_schema` cannot be enabled at
        # the same time.
        # Corresponds to the JSON property `useTableSchema`
        # @return [Boolean]
        attr_accessor :use_table_schema
        alias_method :use_table_schema?, :use_table_schema
      
        # Optional. When true, use the topic's schema as the columns to write to in
        # BigQuery, if it exists. `use_topic_schema` and `use_table_schema` cannot be
        # enabled at the same time.
        # Corresponds to the JSON property `useTopicSchema`
        # @return [Boolean]
        attr_accessor :use_topic_schema
        alias_method :use_topic_schema?, :use_topic_schema
      
        # Optional. When true, write the subscription name, message_id, publish_time,
        # attributes, and ordering_key to additional columns in the table. The
        # subscription name, message_id, and publish_time fields are put in their own
        # columns while all other message properties (other than data) are written to a
        # JSON object in the attributes column.
        # Corresponds to the JSON property `writeMetadata`
        # @return [Boolean]
        attr_accessor :write_metadata
        alias_method :write_metadata?, :write_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drop_unknown_fields = args[:drop_unknown_fields] if args.key?(:drop_unknown_fields)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @state = args[:state] if args.key?(:state)
          @table = args[:table] if args.key?(:table)
          @use_table_schema = args[:use_table_schema] if args.key?(:use_table_schema)
          @use_topic_schema = args[:use_topic_schema] if args.key?(:use_topic_schema)
          @write_metadata = args[:write_metadata] if args.key?(:write_metadata)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::PubsubV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Ingestion settings for Cloud Storage.
      class CloudStorage
        include Google::Apis::Core::Hashable
      
        # Configuration for reading Cloud Storage data in Avro binary format. The bytes
        # of each object will be set to the `data` field of a Pub/Sub message.
        # Corresponds to the JSON property `avroFormat`
        # @return [Google::Apis::PubsubV1::AvroFormat]
        attr_accessor :avro_format
      
        # Optional. Cloud Storage bucket. The bucket name must be without any prefix
        # like "gs://". See the [bucket naming requirements] (https://cloud.google.com/
        # storage/docs/buckets#naming).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Optional. Glob pattern used to match objects that will be ingested. If unset,
        # all objects will be ingested. See the [supported patterns](https://cloud.
        # google.com/storage/docs/json_api/v1/objects/list#list-objects-and-prefixes-
        # using-glob).
        # Corresponds to the JSON property `matchGlob`
        # @return [String]
        attr_accessor :match_glob
      
        # Optional. Only objects with a larger or equal creation timestamp will be
        # ingested.
        # Corresponds to the JSON property `minimumObjectCreateTime`
        # @return [String]
        attr_accessor :minimum_object_create_time
      
        # Configuration for reading Cloud Storage data written via [Cloud Storage
        # subscriptions](https://cloud.google.com/pubsub/docs/cloudstorage). The data
        # and attributes fields of the originally exported Pub/Sub message will be
        # restored when publishing.
        # Corresponds to the JSON property `pubsubAvroFormat`
        # @return [Google::Apis::PubsubV1::PubSubAvroFormat]
        attr_accessor :pubsub_avro_format
      
        # Output only. An output-only field that indicates the state of the Cloud
        # Storage ingestion source.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Configuration for reading Cloud Storage data in text format. Each line of text
        # as specified by the delimiter will be set to the `data` field of a Pub/Sub
        # message.
        # Corresponds to the JSON property `textFormat`
        # @return [Google::Apis::PubsubV1::TextFormat]
        attr_accessor :text_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avro_format = args[:avro_format] if args.key?(:avro_format)
          @bucket = args[:bucket] if args.key?(:bucket)
          @match_glob = args[:match_glob] if args.key?(:match_glob)
          @minimum_object_create_time = args[:minimum_object_create_time] if args.key?(:minimum_object_create_time)
          @pubsub_avro_format = args[:pubsub_avro_format] if args.key?(:pubsub_avro_format)
          @state = args[:state] if args.key?(:state)
          @text_format = args[:text_format] if args.key?(:text_format)
        end
      end
      
      # Configuration for a Cloud Storage subscription.
      class CloudStorageConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for writing message data in Avro format. Message payloads and
        # metadata will be written to files as an Avro binary.
        # Corresponds to the JSON property `avroConfig`
        # @return [Google::Apis::PubsubV1::AvroConfig]
        attr_accessor :avro_config
      
        # Required. User-provided name for the Cloud Storage bucket. The bucket must be
        # created by the user. The bucket name must be without any prefix like "gs://".
        # See the [bucket naming requirements] (https://cloud.google.com/storage/docs/
        # buckets#naming).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Optional. User-provided format string specifying how to represent datetimes in
        # Cloud Storage filenames. See the [datetime format guidance](https://cloud.
        # google.com/pubsub/docs/create-cloudstorage-subscription#file_names).
        # Corresponds to the JSON property `filenameDatetimeFormat`
        # @return [String]
        attr_accessor :filename_datetime_format
      
        # Optional. User-provided prefix for Cloud Storage filename. See the [object
        # naming requirements](https://cloud.google.com/storage/docs/objects#naming).
        # Corresponds to the JSON property `filenamePrefix`
        # @return [String]
        attr_accessor :filename_prefix
      
        # Optional. User-provided suffix for Cloud Storage filename. See the [object
        # naming requirements](https://cloud.google.com/storage/docs/objects#naming).
        # Must not end in "/".
        # Corresponds to the JSON property `filenameSuffix`
        # @return [String]
        attr_accessor :filename_suffix
      
        # Optional. The maximum bytes that can be written to a Cloud Storage file before
        # a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be
        # exceeded in cases where messages are larger than the limit.
        # Corresponds to the JSON property `maxBytes`
        # @return [Fixnum]
        attr_accessor :max_bytes
      
        # Optional. The maximum duration that can elapse before a new Cloud Storage file
        # is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed
        # the subscription's acknowledgment deadline.
        # Corresponds to the JSON property `maxDuration`
        # @return [String]
        attr_accessor :max_duration
      
        # Optional. The maximum number of messages that can be written to a Cloud
        # Storage file before a new file is created. Min 1000 messages.
        # Corresponds to the JSON property `maxMessages`
        # @return [Fixnum]
        attr_accessor :max_messages
      
        # Optional. The service account to use to write to Cloud Storage. The
        # subscription creator or updater that specifies this field must have `iam.
        # serviceAccounts.actAs` permission on the service account. If not specified,
        # the Pub/Sub [service agent](https://cloud.google.com/iam/docs/service-agents),
        # service-`project_number`@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Output only. An output-only field that indicates whether or not the
        # subscription can receive messages.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Configuration for writing message data in text format. Message payloads will
        # be written to files as raw text, separated by a newline.
        # Corresponds to the JSON property `textConfig`
        # @return [Google::Apis::PubsubV1::TextConfig]
        attr_accessor :text_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avro_config = args[:avro_config] if args.key?(:avro_config)
          @bucket = args[:bucket] if args.key?(:bucket)
          @filename_datetime_format = args[:filename_datetime_format] if args.key?(:filename_datetime_format)
          @filename_prefix = args[:filename_prefix] if args.key?(:filename_prefix)
          @filename_suffix = args[:filename_suffix] if args.key?(:filename_suffix)
          @max_bytes = args[:max_bytes] if args.key?(:max_bytes)
          @max_duration = args[:max_duration] if args.key?(:max_duration)
          @max_messages = args[:max_messages] if args.key?(:max_messages)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @state = args[:state] if args.key?(:state)
          @text_config = args[:text_config] if args.key?(:text_config)
        end
      end
      
      # Request for CommitSchema method.
      class CommitSchemaRequest
        include Google::Apis::Core::Hashable
      
        # A schema resource.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::PubsubV1::Schema]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # Ingestion settings for Confluent Cloud.
      class ConfluentCloud
        include Google::Apis::Core::Hashable
      
        # Required. The address of the bootstrap server. The format is url:port.
        # Corresponds to the JSON property `bootstrapServer`
        # @return [String]
        attr_accessor :bootstrap_server
      
        # Required. The id of the cluster.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The GCP service account to be used for Federated Identity
        # authentication with `identity_pool_id`.
        # Corresponds to the JSON property `gcpServiceAccount`
        # @return [String]
        attr_accessor :gcp_service_account
      
        # Required. The id of the identity pool to be used for Federated Identity
        # authentication with Confluent Cloud. See https://docs.confluent.io/cloud/
        # current/security/authenticate/workload-identities/identity-providers/oauth/
        # identity-pools.html#add-oauth-identity-pools.
        # Corresponds to the JSON property `identityPoolId`
        # @return [String]
        attr_accessor :identity_pool_id
      
        # Output only. An output-only field that indicates the state of the Confluent
        # Cloud ingestion source.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The name of the topic in the Confluent Cloud cluster that Pub/Sub
        # will import from.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bootstrap_server = args[:bootstrap_server] if args.key?(:bootstrap_server)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @gcp_service_account = args[:gcp_service_account] if args.key?(:gcp_service_account)
          @identity_pool_id = args[:identity_pool_id] if args.key?(:identity_pool_id)
          @state = args[:state] if args.key?(:state)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Request for the `CreateSnapshot` method.
      class CreateSnapshotRequest
        include Google::Apis::Core::Hashable
      
        # Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/
        # docs/labels).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The subscription whose backlog the snapshot retains. Specifically,
        # the created snapshot is guaranteed to retain: (a) The existing backlog on the
        # subscription. More precisely, this is defined as the messages in the
        # subscription's backlog that are unacknowledged upon the successful completion
        # of the `CreateSnapshot` request; as well as: (b) Any messages published to the
        # subscription's topic following the successful completion of the CreateSnapshot
        # request. Format is `projects/`project`/subscriptions/`sub``.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Dead lettering is done on a best effort basis. The same message might be dead
      # lettered multiple times. If validation on any of the fields fails at
      # subscription creation/updation, the create/update subscription request will
      # fail.
      class DeadLetterPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the topic to which dead letter messages should be
        # published. Format is `projects/`project`/topics/`topic``.The Pub/Sub service
        # account associated with the enclosing subscription's parent project (i.e.,
        # service-`project_number`@gcp-sa-pubsub.iam.gserviceaccount.com) must have
        # permission to Publish() to this topic. The operation will fail if the topic
        # does not exist. Users should ensure that there is a subscription attached to
        # this topic since messages published to a topic with no subscriptions are lost.
        # Corresponds to the JSON property `deadLetterTopic`
        # @return [String]
        attr_accessor :dead_letter_topic
      
        # Optional. The maximum number of delivery attempts for any message. The value
        # must be between 5 and 100. The number of delivery attempts is defined as 1 + (
        # the sum of number of NACKs and number of times the acknowledgment deadline has
        # been exceeded for the message). A NACK is any call to ModifyAckDeadline with a
        # 0 deadline. Note that client libraries may automatically extend ack_deadlines.
        # This field will be honored on a best effort basis. If this parameter is 0, a
        # default value of 5 is used.
        # Corresponds to the JSON property `maxDeliveryAttempts`
        # @return [Fixnum]
        attr_accessor :max_delivery_attempts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dead_letter_topic = args[:dead_letter_topic] if args.key?(:dead_letter_topic)
          @max_delivery_attempts = args[:max_delivery_attempts] if args.key?(:max_delivery_attempts)
        end
      end
      
      # Response for the DetachSubscription method. Reserved for future use.
      class DetachSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # A policy that specifies the conditions for resource expiration (i.e.,
      # automatic resource deletion).
      class ExpirationPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the "time-to-live" duration for an associated resource.
        # The resource expires if it is not active for a period of `ttl`. The definition
        # of "activity" depends on the type of the associated resource. The minimum and
        # maximum allowed values for `ttl` depend on the type of the associated resource,
        # as well. If `ttl` is not set, the associated resource never expires.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Settings for an ingestion data source on a topic.
      class IngestionDataSourceSettings
        include Google::Apis::Core::Hashable
      
        # Ingestion settings for Amazon Kinesis Data Streams.
        # Corresponds to the JSON property `awsKinesis`
        # @return [Google::Apis::PubsubV1::AwsKinesis]
        attr_accessor :aws_kinesis
      
        # Ingestion settings for Amazon MSK.
        # Corresponds to the JSON property `awsMsk`
        # @return [Google::Apis::PubsubV1::AwsMsk]
        attr_accessor :aws_msk
      
        # Ingestion settings for Azure Event Hubs.
        # Corresponds to the JSON property `azureEventHubs`
        # @return [Google::Apis::PubsubV1::AzureEventHubs]
        attr_accessor :azure_event_hubs
      
        # Ingestion settings for Cloud Storage.
        # Corresponds to the JSON property `cloudStorage`
        # @return [Google::Apis::PubsubV1::CloudStorage]
        attr_accessor :cloud_storage
      
        # Ingestion settings for Confluent Cloud.
        # Corresponds to the JSON property `confluentCloud`
        # @return [Google::Apis::PubsubV1::ConfluentCloud]
        attr_accessor :confluent_cloud
      
        # Settings for Platform Logs produced by Pub/Sub.
        # Corresponds to the JSON property `platformLogsSettings`
        # @return [Google::Apis::PubsubV1::PlatformLogsSettings]
        attr_accessor :platform_logs_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_kinesis = args[:aws_kinesis] if args.key?(:aws_kinesis)
          @aws_msk = args[:aws_msk] if args.key?(:aws_msk)
          @azure_event_hubs = args[:azure_event_hubs] if args.key?(:azure_event_hubs)
          @cloud_storage = args[:cloud_storage] if args.key?(:cloud_storage)
          @confluent_cloud = args[:confluent_cloud] if args.key?(:confluent_cloud)
          @platform_logs_settings = args[:platform_logs_settings] if args.key?(:platform_logs_settings)
        end
      end
      
      # User-defined JavaScript function that can transform or filter a Pub/Sub
      # message.
      class JavaScriptUdf
        include Google::Apis::Core::Hashable
      
        # Required. JavaScript code that contains a function `function_name` with the
        # below signature: ``` /** * Transforms a Pub/Sub message. * @return `(Object)>|
        # null)` - To * filter a message, return `null`. To transform a message return a
        # map * with the following keys: * - (required) 'data' : `string` * - (optional)
        # 'attributes' : `Object` * Returning empty `attributes` will remove all
        # attributes from the * message. * * @param `(Object)>` Pub/Sub * message. Keys:
        # * - (required) 'data' : `string` * - (required) 'attributes' : `Object` * * @
        # param `Object` metadata - Pub/Sub message metadata. * Keys: * - (optional) '
        # message_id' : `string` * - (optional) 'publish_time': `string` YYYY-MM-DDTHH:
        # MM:SSZ format * - (optional) 'ordering_key': `string` */ function (message,
        # metadata) ` ` ```
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Required. Name of the JavasScript function that should applied to Pub/Sub
        # messages.
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # Response for the `ListSchemaRevisions` method.
      class ListSchemaRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The revisions of the schema.
        # Corresponds to the JSON property `schemas`
        # @return [Array<Google::Apis::PubsubV1::Schema>]
        attr_accessor :schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @schemas = args[:schemas] if args.key?(:schemas)
        end
      end
      
      # Response for the `ListSchemas` method.
      class ListSchemasResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more schemas that match the request;
        # this value should be passed in a new `ListSchemasRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting schemas.
        # Corresponds to the JSON property `schemas`
        # @return [Array<Google::Apis::PubsubV1::Schema>]
        attr_accessor :schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @schemas = args[:schemas] if args.key?(:schemas)
        end
      end
      
      # Response for the `ListSnapshots` method.
      class ListSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. If not empty, indicates that there may be more snapshot that match
        # the request; this value should be passed in a new `ListSnapshotsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. The resulting snapshots.
        # Corresponds to the JSON property `snapshots`
        # @return [Array<Google::Apis::PubsubV1::Snapshot>]
        attr_accessor :snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshots = args[:snapshots] if args.key?(:snapshots)
        end
      end
      
      # Response for the `ListSubscriptions` method.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. If not empty, indicates that there may be more subscriptions that
        # match the request; this value should be passed in a new `
        # ListSubscriptionsRequest` to get more subscriptions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. The subscriptions that match the request.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::PubsubV1::Subscription>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # Response for the `ListTopicSnapshots` method.
      class ListTopicSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. If not empty, indicates that there may be more snapshots that match
        # the request; this value should be passed in a new `ListTopicSnapshotsRequest`
        # to get more snapshots.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. The names of the snapshots that match the request.
        # Corresponds to the JSON property `snapshots`
        # @return [Array<String>]
        attr_accessor :snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshots = args[:snapshots] if args.key?(:snapshots)
        end
      end
      
      # Response for the `ListTopicSubscriptions` method.
      class ListTopicSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. If not empty, indicates that there may be more subscriptions that
        # match the request; this value should be passed in a new `
        # ListTopicSubscriptionsRequest` to get more subscriptions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. The names of subscriptions attached to the topic specified in the
        # request.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<String>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # Response for the `ListTopics` method.
      class ListTopicsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. If not empty, indicates that there may be more topics that match the
        # request; this value should be passed in a new `ListTopicsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. The resulting topics.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::PubsubV1::Topic>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @topics = args[:topics] if args.key?(:topics)
        end
      end
      
      # A policy constraining the storage of messages published to the topic.
      class MessageStoragePolicy
        include Google::Apis::Core::Hashable
      
        # Optional. A list of IDs of Google Cloud regions where messages that are
        # published to the topic may be persisted in storage. Messages published by
        # publishers running in non-allowed Google Cloud regions (or running outside of
        # Google Cloud altogether) are routed for storage in one of the allowed regions.
        # An empty list means that no regions are allowed, and is not a valid
        # configuration.
        # Corresponds to the JSON property `allowedPersistenceRegions`
        # @return [Array<String>]
        attr_accessor :allowed_persistence_regions
      
        # Optional. If true, `allowed_persistence_regions` is also used to enforce in-
        # transit guarantees for messages. That is, Pub/Sub will fail Publish operations
        # on this topic and subscribe operations on any subscription attached to this
        # topic in any region that is not in `allowed_persistence_regions`.
        # Corresponds to the JSON property `enforceInTransit`
        # @return [Boolean]
        attr_accessor :enforce_in_transit
        alias_method :enforce_in_transit?, :enforce_in_transit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_persistence_regions = args[:allowed_persistence_regions] if args.key?(:allowed_persistence_regions)
          @enforce_in_transit = args[:enforce_in_transit] if args.key?(:enforce_in_transit)
        end
      end
      
      # All supported message transforms types.
      class MessageTransform
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the transform is disabled and will not be applied to
        # messages. Defaults to `false`.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. This field is deprecated, use the `disabled` field to disable
        # transforms.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # User-defined JavaScript function that can transform or filter a Pub/Sub
        # message.
        # Corresponds to the JSON property `javascriptUdf`
        # @return [Google::Apis::PubsubV1::JavaScriptUdf]
        attr_accessor :javascript_udf
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @enabled = args[:enabled] if args.key?(:enabled)
          @javascript_udf = args[:javascript_udf] if args.key?(:javascript_udf)
        end
      end
      
      # Request for the ModifyAckDeadline method.
      class ModifyAckDeadlineRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new ack deadline with respect to the time this request was sent
        # to the Pub/Sub system. For example, if the value is 10, the new ack deadline
        # will expire 10 seconds after the `ModifyAckDeadline` call was made. Specifying
        # zero might immediately make the message available for delivery to another
        # subscriber client. This typically results in an increase in the rate of
        # message redeliveries (that is, duplicates). The minimum deadline you can
        # specify is 0 seconds. The maximum deadline you can specify in a single request
        # is 600 seconds (10 minutes).
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # Required. List of acknowledgment IDs.
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] if args.key?(:ack_deadline_seconds)
          @ack_ids = args[:ack_ids] if args.key?(:ack_ids)
        end
      end
      
      # Request for the ModifyPushConfig method.
      class ModifyPushConfigRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1::PushConfig]
        attr_accessor :push_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @push_config = args[:push_config] if args.key?(:push_config)
        end
      end
      
      # Sets the `data` field as the HTTP body for delivery.
      class NoWrapper
        include Google::Apis::Core::Hashable
      
        # Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:`
        # headers of the HTTP request. Writes the Pub/Sub message attributes to `:`
        # headers of the HTTP request.
        # Corresponds to the JSON property `writeMetadata`
        # @return [Boolean]
        attr_accessor :write_metadata
        alias_method :write_metadata?, :write_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @write_metadata = args[:write_metadata] if args.key?(:write_metadata)
        end
      end
      
      # Contains information needed for generating an [OpenID Connect token](https://
      # developers.google.com/identity/protocols/OpenIDConnect).
      class OidcToken
        include Google::Apis::Core::Hashable
      
        # Optional. Audience to be used when generating OIDC token. The audience claim
        # identifies the recipients that the JWT is intended for. The audience value is
        # a single case-sensitive string. Having multiple values (array) for the
        # audience field is not supported. More info about the OIDC JWT token audience
        # here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified,
        # the Push endpoint URL will be used.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Optional. [Service account email](https://cloud.google.com/iam/docs/service-
        # accounts) used for generating the OIDC token. For more information on setting
        # up authentication, see [Push subscriptions](https://cloud.google.com/pubsub/
        # docs/push).
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
        end
      end
      
      # Settings for Platform Logs produced by Pub/Sub.
      class PlatformLogsSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The minimum severity level of Platform Logs that will be written.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::PubsubV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Configuration for reading Cloud Storage data written via [Cloud Storage
      # subscriptions](https://cloud.google.com/pubsub/docs/cloudstorage). The data
      # and attributes fields of the originally exported Pub/Sub message will be
      # restored when publishing.
      class PubSubAvroFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for the Publish method.
      class PublishRequest
        include Google::Apis::Core::Hashable
      
        # Required. The messages to publish.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::PubsubV1::Message>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # Response for the `Publish` method.
      class PublishResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The server-assigned ID of each published message, in the same order
        # as the messages in the request. IDs are guaranteed to be unique within the
        # topic.
        # Corresponds to the JSON property `messageIds`
        # @return [Array<String>]
        attr_accessor :message_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_ids = args[:message_ids] if args.key?(:message_ids)
        end
      end
      
      # A message that is published by publishers and consumed by subscribers. The
      # message must contain either a non-empty data field or at least one attribute.
      # Note that client libraries represent this object differently depending on the
      # language. See the corresponding [client library documentation](https://cloud.
      # google.com/pubsub/docs/reference/libraries) for more information. See [quotas
      # and limits] (https://cloud.google.com/pubsub/quotas) for more information
      # about message limits.
      class Message
        include Google::Apis::Core::Hashable
      
        # Optional. Attributes for this message. If this field is empty, the message
        # must contain non-empty data. This can be used to filter messages on the
        # subscription.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Optional. The message data field. If this field is empty, the message must
        # contain at least one attribute.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # ID of this message, assigned by the server when the message is published.
        # Guaranteed to be unique within the topic. This value may be read by a
        # subscriber that receives a `PubsubMessage` via a `Pull` call or a push
        # delivery. It must not be populated by the publisher in a `Publish` call.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # Optional. If non-empty, identifies related messages for which publish order
        # should be respected. If a `Subscription` has `enable_message_ordering` set to `
        # true`, messages published with the same non-empty `ordering_key` value will be
        # delivered to subscribers in the order in which they are received by the Pub/
        # Sub system. All `PubsubMessage`s published in a given `PublishRequest` must
        # specify the same `ordering_key` value. For more information, see [ordering
        # messages](https://cloud.google.com/pubsub/docs/ordering).
        # Corresponds to the JSON property `orderingKey`
        # @return [String]
        attr_accessor :ordering_key
      
        # The time at which the message was published, populated by the server when it
        # receives the `Publish` call. It must not be populated by the publisher in a `
        # Publish` call.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @data = args[:data] if args.key?(:data)
          @message_id = args[:message_id] if args.key?(:message_id)
          @ordering_key = args[:ordering_key] if args.key?(:ordering_key)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
        end
      end
      
      # The payload to the push endpoint is in the form of the JSON representation of
      # a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.
      # pubsub.v1#pubsubmessage).
      class PubsubWrapper
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for the `Pull` method.
      class PullRequest
        include Google::Apis::Core::Hashable
      
        # Required. The maximum number of messages to return for this request. Must be a
        # positive integer. The Pub/Sub system may return fewer than the number
        # specified.
        # Corresponds to the JSON property `maxMessages`
        # @return [Fixnum]
        attr_accessor :max_messages
      
        # Optional. If this field set to true, the system will respond immediately even
        # if it there are no messages available to return in the `Pull` response.
        # Otherwise, the system may wait (for a bounded amount of time) until at least
        # one message is available, rather than returning no messages. Warning: setting
        # this field to `true` is discouraged because it adversely impacts the
        # performance of `Pull` operations. We recommend that users do not set this
        # field.
        # Corresponds to the JSON property `returnImmediately`
        # @return [Boolean]
        attr_accessor :return_immediately
        alias_method :return_immediately?, :return_immediately
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_messages = args[:max_messages] if args.key?(:max_messages)
          @return_immediately = args[:return_immediately] if args.key?(:return_immediately)
        end
      end
      
      # Response for the `Pull` method.
      class PullResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Received Pub/Sub messages. The list will be empty if there are no
        # more messages available in the backlog, or if no messages could be returned
        # before the request timeout. For JSON, the response can be entirely empty. The
        # Pub/Sub system may return fewer than the `maxMessages` requested even if there
        # are more messages available in the backlog.
        # Corresponds to the JSON property `receivedMessages`
        # @return [Array<Google::Apis::PubsubV1::ReceivedMessage>]
        attr_accessor :received_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @received_messages = args[:received_messages] if args.key?(:received_messages)
        end
      end
      
      # Configuration for a push delivery endpoint.
      class PushConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Endpoint configuration attributes that can be used to control
        # different aspects of the message delivery. The only currently supported
        # attribute is `x-goog-version`, which you can use to change the format of the
        # pushed message. This attribute indicates the version of the data expected by
        # the endpoint. This controls the shape of the pushed message (i.e., its fields
        # and metadata). If not present during the `CreateSubscription` call, it will
        # default to the version of the Pub/Sub API used to make such call. If not
        # present in a `ModifyPushConfig` call, its value will not be changed. `
        # GetSubscription` calls will always return a valid version, even if the
        # subscription was created without this attribute. The only supported values for
        # the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined
        # in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined
        # in the v1 Pub/Sub API. For example: `attributes ` "x-goog-version": "v1" ``
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Sets the `data` field as the HTTP body for delivery.
        # Corresponds to the JSON property `noWrapper`
        # @return [Google::Apis::PubsubV1::NoWrapper]
        attr_accessor :no_wrapper
      
        # Contains information needed for generating an [OpenID Connect token](https://
        # developers.google.com/identity/protocols/OpenIDConnect).
        # Corresponds to the JSON property `oidcToken`
        # @return [Google::Apis::PubsubV1::OidcToken]
        attr_accessor :oidc_token
      
        # The payload to the push endpoint is in the form of the JSON representation of
        # a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.
        # pubsub.v1#pubsubmessage).
        # Corresponds to the JSON property `pubsubWrapper`
        # @return [Google::Apis::PubsubV1::PubsubWrapper]
        attr_accessor :pubsub_wrapper
      
        # Optional. A URL locating the endpoint to which messages should be pushed. For
        # example, a Webhook endpoint might use `https://example.com/push`.
        # Corresponds to the JSON property `pushEndpoint`
        # @return [String]
        attr_accessor :push_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @no_wrapper = args[:no_wrapper] if args.key?(:no_wrapper)
          @oidc_token = args[:oidc_token] if args.key?(:oidc_token)
          @pubsub_wrapper = args[:pubsub_wrapper] if args.key?(:pubsub_wrapper)
          @push_endpoint = args[:push_endpoint] if args.key?(:push_endpoint)
        end
      end
      
      # A message and its corresponding acknowledgment ID.
      class ReceivedMessage
        include Google::Apis::Core::Hashable
      
        # Optional. This ID can be used to acknowledge the received message.
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        # Optional. The approximate number of times that Pub/Sub has attempted to
        # deliver the associated message to a subscriber. More precisely, this is 1 + (
        # number of NACKs) + (number of ack_deadline exceeds) for this message. A NACK
        # is any call to ModifyAckDeadline with a 0 deadline. An ack_deadline exceeds
        # event is whenever a message is not acknowledged within ack_deadline. Note that
        # ack_deadline is initially Subscription.ackDeadlineSeconds, but may get
        # extended automatically by the client library. Upon the first delivery of a
        # given message, `delivery_attempt` will have a value of 1. The value is
        # calculated at best effort and is approximate. If a DeadLetterPolicy is not set
        # on the subscription, this will be 0.
        # Corresponds to the JSON property `deliveryAttempt`
        # @return [Fixnum]
        attr_accessor :delivery_attempt
      
        # A message that is published by publishers and consumed by subscribers. The
        # message must contain either a non-empty data field or at least one attribute.
        # Note that client libraries represent this object differently depending on the
        # language. See the corresponding [client library documentation](https://cloud.
        # google.com/pubsub/docs/reference/libraries) for more information. See [quotas
        # and limits] (https://cloud.google.com/pubsub/quotas) for more information
        # about message limits.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::PubsubV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_id = args[:ack_id] if args.key?(:ack_id)
          @delivery_attempt = args[:delivery_attempt] if args.key?(:delivery_attempt)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A policy that specifies how Pub/Sub retries message delivery. Retry delay will
      # be exponential based on provided minimum and maximum backoffs. https://en.
      # wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs
      # or acknowledgment deadline exceeded events for a given message. Retry Policy
      # is implemented on a best effort basis. At times, the delay between consecutive
      # deliveries may not match the configuration. That is, delay can be more or less
      # than configured backoff.
      class RetryPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum delay between consecutive deliveries of a given message.
        # Value should be between 0 and 600 seconds. Defaults to 600 seconds.
        # Corresponds to the JSON property `maximumBackoff`
        # @return [String]
        attr_accessor :maximum_backoff
      
        # Optional. The minimum delay between consecutive deliveries of a given message.
        # Value should be between 0 and 600 seconds. Defaults to 10 seconds.
        # Corresponds to the JSON property `minimumBackoff`
        # @return [String]
        attr_accessor :minimum_backoff
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maximum_backoff = args[:maximum_backoff] if args.key?(:maximum_backoff)
          @minimum_backoff = args[:minimum_backoff] if args.key?(:minimum_backoff)
        end
      end
      
      # Request for the `RollbackSchema` method.
      class RollbackSchemaRequest
        include Google::Apis::Core::Hashable
      
        # Required. The revision ID to roll back to. It must be a revision of the same
        # schema. Example: c7cfa2a8
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # A schema resource.
      class Schema
        include Google::Apis::Core::Hashable
      
        # The definition of the schema. This should contain a string representing the
        # full definition of the schema that is a valid schema definition of the type
        # specified in `type`.
        # Corresponds to the JSON property `definition`
        # @return [String]
        attr_accessor :definition
      
        # Required. Name of the schema. Format is `projects/`project`/schemas/`schema``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp that the revision was created.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Output only. Immutable. The revision ID of the schema.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # The type of the schema definition.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @definition = args[:definition] if args.key?(:definition)
          @name = args[:name] if args.key?(:name)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Settings for validating messages published against a schema.
      class SchemaSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The encoding of messages validated against `schema`.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. The minimum (inclusive) revision allowed for validating messages. If
        # empty or not present, allow any revision to be validated against last_revision
        # or any revision created before.
        # Corresponds to the JSON property `firstRevisionId`
        # @return [String]
        attr_accessor :first_revision_id
      
        # Optional. The maximum (inclusive) revision allowed for validating messages. If
        # empty or not present, allow any revision to be validated against
        # first_revision or any revision created after.
        # Corresponds to the JSON property `lastRevisionId`
        # @return [String]
        attr_accessor :last_revision_id
      
        # Required. The name of the schema that messages published should be validated
        # against. Format is `projects/`project`/schemas/`schema``. The value of this
        # field will be `_deleted-schema_` if the schema has been deleted.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
          @first_revision_id = args[:first_revision_id] if args.key?(:first_revision_id)
          @last_revision_id = args[:last_revision_id] if args.key?(:last_revision_id)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # Request for the `Seek` method.
      class SeekRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The snapshot to seek to. The snapshot's topic must be the same as
        # that of the provided subscription. Format is `projects/`project`/snapshots/`
        # snap``.
        # Corresponds to the JSON property `snapshot`
        # @return [String]
        attr_accessor :snapshot
      
        # Optional. The time to seek to. Messages retained in the subscription that were
        # published before this time are marked as acknowledged, and messages retained
        # in the subscription that were published after this time are marked as
        # unacknowledged. Note that this operation affects only those messages retained
        # in the subscription (configured by the combination of `
        # message_retention_duration` and `retain_acked_messages`). For example, if `
        # time` corresponds to a point before the message retention window (or to a
        # point before the system's notion of the subscription creation time), only
        # retained messages will be marked as unacknowledged, and already-expunged
        # messages will not be restored.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Response for the `Seek` method (this response is empty).
      class SeekResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PubsubV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # A snapshot resource. Snapshots are used in [Seek](https://cloud.google.com/
      # pubsub/docs/replay-overview) operations, which allow you to manage message
      # acknowledgments in bulk. That is, you can set the acknowledgment state of
      # messages in an existing subscription to the state captured by a snapshot.
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # Optional. The snapshot is guaranteed to exist up until this time. A newly-
        # created snapshot expires no later than 7 days from the time of its creation.
        # Its exact lifetime is determined at creation by the existing backlog in the
        # source subscription. Specifically, the lifetime of the snapshot is `7 days - (
        # age of oldest unacked message in the subscription)`. For example, consider a
        # subscription whose oldest unacked message is 3 days old. If a snapshot is
        # created from this subscription, the snapshot -- which will always capture this
        # 3-day-old backlog as long as the snapshot exists -- will expire in 4 days. The
        # service will refuse to create a snapshot that would expire in less than 1 hour
        # after creation.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/
        # docs/labels).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The name of the snapshot.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The name of the topic from which this snapshot is retaining messages.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # A subscription resource. If none of `push_config`, `bigquery_config`, or `
      # cloud_storage_config` is set, then the subscriber will pull and ack messages
      # using API methods. At most one of these fields may be set.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # Optional. The approximate amount of time (on a best-effort basis) Pub/Sub
        # waits for the subscriber to acknowledge receipt before resending the message.
        # In the interval after the message is delivered and before it is acknowledged,
        # it is considered to be _outstanding_. During that time period, the message
        # will not be redelivered (on a best-effort basis). For pull subscriptions, this
        # value is used as the initial value for the ack deadline. To override this
        # value for a given message, call `ModifyAckDeadline` with the corresponding `
        # ack_id` if using non-streaming pull or send the `ack_id` in a `
        # StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom
        # deadline you can specify is 10 seconds. The maximum custom deadline you can
        # specify is 600 seconds (10 minutes). If this parameter is 0, a default value
        # of 10 seconds is used. For push delivery, this value is also used to set the
        # request timeout for the call to the push endpoint. If the subscriber never
        # acknowledges the message, the Pub/Sub system will eventually redeliver the
        # message.
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # Information about an associated [Analytics Hub subscription](https://cloud.
        # google.com/bigquery/docs/analytics-hub-manage-subscriptions).
        # Corresponds to the JSON property `analyticsHubSubscriptionInfo`
        # @return [Google::Apis::PubsubV1::AnalyticsHubSubscriptionInfo]
        attr_accessor :analytics_hub_subscription_info
      
        # Configuration for a BigQuery subscription.
        # Corresponds to the JSON property `bigqueryConfig`
        # @return [Google::Apis::PubsubV1::BigQueryConfig]
        attr_accessor :bigquery_config
      
        # Configuration for a Cloud Storage subscription.
        # Corresponds to the JSON property `cloudStorageConfig`
        # @return [Google::Apis::PubsubV1::CloudStorageConfig]
        attr_accessor :cloud_storage_config
      
        # Dead lettering is done on a best effort basis. The same message might be dead
        # lettered multiple times. If validation on any of the fields fails at
        # subscription creation/updation, the create/update subscription request will
        # fail.
        # Corresponds to the JSON property `deadLetterPolicy`
        # @return [Google::Apis::PubsubV1::DeadLetterPolicy]
        attr_accessor :dead_letter_policy
      
        # Optional. Indicates whether the subscription is detached from its topic.
        # Detached subscriptions don't receive messages from their topic and don't
        # retain any backlog. `Pull` and `StreamingPull` requests will return
        # FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the
        # endpoint will not be made.
        # Corresponds to the JSON property `detached`
        # @return [Boolean]
        attr_accessor :detached
        alias_method :detached?, :detached
      
        # Optional. If true, Pub/Sub provides the following guarantees for the delivery
        # of a message with a given value of `message_id` on this subscription: * The
        # message sent to a subscriber is guaranteed not to be resent before the message'
        # s acknowledgment deadline expires. * An acknowledged message will not be
        # resent to a subscriber. Note that subscribers may still receive multiple
        # copies of a message when `enable_exactly_once_delivery` is true if the message
        # was published multiple times by a publisher client. These copies are
        # considered distinct by Pub/Sub and have distinct `message_id` values.
        # Corresponds to the JSON property `enableExactlyOnceDelivery`
        # @return [Boolean]
        attr_accessor :enable_exactly_once_delivery
        alias_method :enable_exactly_once_delivery?, :enable_exactly_once_delivery
      
        # Optional. If true, messages published with the same `ordering_key` in `
        # PubsubMessage` will be delivered to the subscribers in the order in which they
        # are received by the Pub/Sub system. Otherwise, they may be delivered in any
        # order.
        # Corresponds to the JSON property `enableMessageOrdering`
        # @return [Boolean]
        attr_accessor :enable_message_ordering
        alias_method :enable_message_ordering?, :enable_message_ordering
      
        # A policy that specifies the conditions for resource expiration (i.e.,
        # automatic resource deletion).
        # Corresponds to the JSON property `expirationPolicy`
        # @return [Google::Apis::PubsubV1::ExpirationPolicy]
        attr_accessor :expiration_policy
      
        # Optional. An expression written in the Pub/Sub [filter language](https://cloud.
        # google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s
        # whose `attributes` field matches the filter are delivered on this subscription.
        # If empty, then no messages are filtered out.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/
        # docs/labels).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. How long to retain unacknowledged messages in the subscription's
        # backlog, from the moment a message is published. If `retain_acked_messages` is
        # true, then this also configures the retention of acknowledged messages, and
        # thus configures how far back in time a `Seek` can be done. Defaults to 7 days.
        # Cannot be more than 31 days or less than 10 minutes.
        # Corresponds to the JSON property `messageRetentionDuration`
        # @return [String]
        attr_accessor :message_retention_duration
      
        # Optional. Transforms to be applied to messages before they are delivered to
        # subscribers. Transforms are applied in the order specified.
        # Corresponds to the JSON property `messageTransforms`
        # @return [Array<Google::Apis::PubsubV1::MessageTransform>]
        attr_accessor :message_transforms
      
        # Required. The name of the subscription. It must have the format `"projects/`
        # project`/subscriptions/`subscription`"`. ``subscription`` must start with a
        # letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
        # underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`
        # %`). It must be between 3 and 255 characters in length, and it must not start
        # with `"goog"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1::PushConfig]
        attr_accessor :push_config
      
        # Optional. Indicates whether to retain acknowledged messages. If true, then
        # messages are not expunged from the subscription's backlog, even if they are
        # acknowledged, until they fall out of the `message_retention_duration` window.
        # This must be true if you would like to [`Seek` to a timestamp] (https://cloud.
        # google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay
        # previously-acknowledged messages.
        # Corresponds to the JSON property `retainAckedMessages`
        # @return [Boolean]
        attr_accessor :retain_acked_messages
        alias_method :retain_acked_messages?, :retain_acked_messages
      
        # A policy that specifies how Pub/Sub retries message delivery. Retry delay will
        # be exponential based on provided minimum and maximum backoffs. https://en.
        # wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs
        # or acknowledgment deadline exceeded events for a given message. Retry Policy
        # is implemented on a best effort basis. At times, the delay between consecutive
        # deliveries may not match the configuration. That is, delay can be more or less
        # than configured backoff.
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::PubsubV1::RetryPolicy]
        attr_accessor :retry_policy
      
        # Output only. An output-only field indicating whether or not the subscription
        # can receive messages.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The name of the topic from which this subscription is receiving
        # messages. Format is `projects/`project`/topics/`topic``. The value of this
        # field will be `_deleted-topic_` if the topic has been deleted.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        # Output only. Indicates the minimum duration for which a message is retained
        # after it is published to the subscription's topic. If this field is set,
        # messages published to the subscription's topic in the last `
        # topic_message_retention_duration` are always available to subscribers. See the
        # `message_retention_duration` field in `Topic`. This field is set only in
        # responses from the server; it is ignored if it is set in any requests.
        # Corresponds to the JSON property `topicMessageRetentionDuration`
        # @return [String]
        attr_accessor :topic_message_retention_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] if args.key?(:ack_deadline_seconds)
          @analytics_hub_subscription_info = args[:analytics_hub_subscription_info] if args.key?(:analytics_hub_subscription_info)
          @bigquery_config = args[:bigquery_config] if args.key?(:bigquery_config)
          @cloud_storage_config = args[:cloud_storage_config] if args.key?(:cloud_storage_config)
          @dead_letter_policy = args[:dead_letter_policy] if args.key?(:dead_letter_policy)
          @detached = args[:detached] if args.key?(:detached)
          @enable_exactly_once_delivery = args[:enable_exactly_once_delivery] if args.key?(:enable_exactly_once_delivery)
          @enable_message_ordering = args[:enable_message_ordering] if args.key?(:enable_message_ordering)
          @expiration_policy = args[:expiration_policy] if args.key?(:expiration_policy)
          @filter = args[:filter] if args.key?(:filter)
          @labels = args[:labels] if args.key?(:labels)
          @message_retention_duration = args[:message_retention_duration] if args.key?(:message_retention_duration)
          @message_transforms = args[:message_transforms] if args.key?(:message_transforms)
          @name = args[:name] if args.key?(:name)
          @push_config = args[:push_config] if args.key?(:push_config)
          @retain_acked_messages = args[:retain_acked_messages] if args.key?(:retain_acked_messages)
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
          @state = args[:state] if args.key?(:state)
          @topic = args[:topic] if args.key?(:topic)
          @topic_message_retention_duration = args[:topic_message_retention_duration] if args.key?(:topic_message_retention_duration)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Configuration for writing message data in text format. Message payloads will
      # be written to files as raw text, separated by a newline.
      class TextConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration for reading Cloud Storage data in text format. Each line of text
      # as specified by the delimiter will be set to the `data` field of a Pub/Sub
      # message.
      class TextFormat
        include Google::Apis::Core::Hashable
      
        # Optional. When unset, '\n' is used.
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
        end
      end
      
      # A topic resource.
      class Topic
        include Google::Apis::Core::Hashable
      
        # Settings for an ingestion data source on a topic.
        # Corresponds to the JSON property `ingestionDataSourceSettings`
        # @return [Google::Apis::PubsubV1::IngestionDataSourceSettings]
        attr_accessor :ingestion_data_source_settings
      
        # Optional. The resource name of the Cloud KMS CryptoKey to be used to protect
        # access to messages published on this topic. The expected format is `projects/*/
        # locations/*/keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/
        # docs/labels).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Indicates the minimum duration to retain a message after it is
        # published to the topic. If this field is set, messages published to the topic
        # in the last `message_retention_duration` are always available to subscribers.
        # For instance, it allows any attached subscription to [seek to a timestamp](
        # https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) that is
        # up to `message_retention_duration` in the past. If this field is not set,
        # message retention is controlled by settings on individual subscriptions.
        # Cannot be more than 31 days or less than 10 minutes.
        # Corresponds to the JSON property `messageRetentionDuration`
        # @return [String]
        attr_accessor :message_retention_duration
      
        # A policy constraining the storage of messages published to the topic.
        # Corresponds to the JSON property `messageStoragePolicy`
        # @return [Google::Apis::PubsubV1::MessageStoragePolicy]
        attr_accessor :message_storage_policy
      
        # Optional. Transforms to be applied to messages published to the topic.
        # Transforms are applied in the order specified.
        # Corresponds to the JSON property `messageTransforms`
        # @return [Array<Google::Apis::PubsubV1::MessageTransform>]
        attr_accessor :message_transforms
      
        # Required. The name of the topic. It must have the format `"projects/`project`/
        # topics/`topic`"`. ``topic`` must start with a letter, and contain only letters
        # (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`)
        # , tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and
        # 255 characters in length, and it must not start with `"goog"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Reserved for future use. This field is set only in responses from
        # the server; it is ignored if it is set in any requests.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Settings for validating messages published against a schema.
        # Corresponds to the JSON property `schemaSettings`
        # @return [Google::Apis::PubsubV1::SchemaSettings]
        attr_accessor :schema_settings
      
        # Output only. An output-only field indicating the state of the topic.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingestion_data_source_settings = args[:ingestion_data_source_settings] if args.key?(:ingestion_data_source_settings)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @labels = args[:labels] if args.key?(:labels)
          @message_retention_duration = args[:message_retention_duration] if args.key?(:message_retention_duration)
          @message_storage_policy = args[:message_storage_policy] if args.key?(:message_storage_policy)
          @message_transforms = args[:message_transforms] if args.key?(:message_transforms)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @schema_settings = args[:schema_settings] if args.key?(:schema_settings)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Request for the UpdateSnapshot method.
      class UpdateSnapshotRequest
        include Google::Apis::Core::Hashable
      
        # A snapshot resource. Snapshots are used in [Seek](https://cloud.google.com/
        # pubsub/docs/replay-overview) operations, which allow you to manage message
        # acknowledgments in bulk. That is, you can set the acknowledgment state of
        # messages in an existing subscription to the state captured by a snapshot.
        # Corresponds to the JSON property `snapshot`
        # @return [Google::Apis::PubsubV1::Snapshot]
        attr_accessor :snapshot
      
        # Required. Indicates which fields in the provided snapshot to update. Must be
        # specified and non-empty.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for the UpdateSubscription method.
      class UpdateSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        # A subscription resource. If none of `push_config`, `bigquery_config`, or `
        # cloud_storage_config` is set, then the subscriber will pull and ack messages
        # using API methods. At most one of these fields may be set.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PubsubV1::Subscription]
        attr_accessor :subscription
      
        # Required. Indicates which fields in the provided subscription to update. Must
        # be specified and non-empty.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for the UpdateTopic method.
      class UpdateTopicRequest
        include Google::Apis::Core::Hashable
      
        # A topic resource.
        # Corresponds to the JSON property `topic`
        # @return [Google::Apis::PubsubV1::Topic]
        attr_accessor :topic
      
        # Required. Indicates which fields in the provided topic to update. Must be
        # specified and non-empty. Note that if `update_mask` contains "
        # message_storage_policy" but the `message_storage_policy` is not set in the `
        # topic` provided above, then the updated value is determined by the policy
        # configured at the project or organization level.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for the `ValidateMessage` method.
      class ValidateMessageRequest
        include Google::Apis::Core::Hashable
      
        # The encoding expected for messages
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Message to validate against the provided `schema_spec`.
        # Corresponds to the JSON property `message`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :message
      
        # Name of the schema against which to validate. Format is `projects/`project`/
        # schemas/`schema``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A schema resource.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::PubsubV1::Schema]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # Response for the `ValidateMessage` method. Empty for now.
      class ValidateMessageResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for the `ValidateSchema` method.
      class ValidateSchemaRequest
        include Google::Apis::Core::Hashable
      
        # A schema resource.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::PubsubV1::Schema]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # Response for the `ValidateSchema` method. Empty for now.
      class ValidateSchemaResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
