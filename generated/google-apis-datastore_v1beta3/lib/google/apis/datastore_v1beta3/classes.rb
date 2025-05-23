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
    module DatastoreV1beta3
      
      # Defines an aggregation that produces a single result.
      class Aggregation
        include Google::Apis::Core::Hashable
      
        # Optional. Optional name of the property to store the result of the aggregation.
        # If not provided, Datastore will pick a default name following the format `
        # property_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1,
        # COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) OVER ( ... ); ```
        # becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2) AS
        # property_1, COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) AS property_2 OVER ( ...
        # ); ``` Requires: * Must be unique across all aggregation aliases. * Conform to
        # entity property name limitations.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Average of the values of the requested property. * Only numeric values will be
        # aggregated. All non-numeric values including `NULL` are skipped. * If the
        # aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754
        # standards. * If the aggregated value set is empty, returns `NULL`. * Always
        # returns the result as a double.
        # Corresponds to the JSON property `avg`
        # @return [Google::Apis::DatastoreV1beta3::Avg]
        attr_accessor :avg
      
        # Count of entities that match the query. The `COUNT(*)` aggregation function
        # operates on the entire entity so it does not require a field reference.
        # Corresponds to the JSON property `count`
        # @return [Google::Apis::DatastoreV1beta3::Count]
        attr_accessor :count
      
        # Sum of the values of the requested property. * Only numeric values will be
        # aggregated. All non-numeric values including `NULL` are skipped. * If the
        # aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754
        # standards. * If the aggregated value set is empty, returns 0. * Returns a 64-
        # bit integer if all aggregated numbers are integers and the sum result does not
        # overflow. Otherwise, the result is returned as a double. Note that even if all
        # the aggregated values are integers, the result is returned as a double if it
        # cannot fit within a 64-bit signed integer. When this occurs, the returned
        # value will lose precision. * When underflow occurs, floating-point aggregation
        # is non-deterministic. This means that running the same query repeatedly
        # without any changes to the underlying values could produce slightly different
        # results each time. In those cases, values should be stored as integers over
        # floating-point numbers.
        # Corresponds to the JSON property `sum`
        # @return [Google::Apis::DatastoreV1beta3::Sum]
        attr_accessor :sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @avg = args[:avg] if args.key?(:avg)
          @count = args[:count] if args.key?(:count)
          @sum = args[:sum] if args.key?(:sum)
        end
      end
      
      # Datastore query for running an aggregation over a Query.
      class AggregationQuery
        include Google::Apis::Core::Hashable
      
        # Optional. Series of aggregations to apply over the results of the `
        # nested_query`. Requires: * A minimum of one and maximum of five aggregations
        # per query.
        # Corresponds to the JSON property `aggregations`
        # @return [Array<Google::Apis::DatastoreV1beta3::Aggregation>]
        attr_accessor :aggregations
      
        # A query for entities. The query stages are executed in the following order: 1.
        # kind 2. filter 3. projection 4. order + start_cursor + end_cursor 5. offset 6.
        # limit 7. find_nearest
        # Corresponds to the JSON property `nestedQuery`
        # @return [Google::Apis::DatastoreV1beta3::Query]
        attr_accessor :nested_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregations = args[:aggregations] if args.key?(:aggregations)
          @nested_query = args[:nested_query] if args.key?(:nested_query)
        end
      end
      
      # The result of a single bucket from a Datastore aggregation query. The keys of `
      # aggregate_properties` are the same for all results in an aggregation query,
      # unlike entity queries which can have different fields present for each result.
      class AggregationResult
        include Google::Apis::Core::Hashable
      
        # The result of the aggregation functions, ex: `COUNT(*) AS total_entities`. The
        # key is the alias assigned to the aggregation function on input and the size of
        # this map equals the number of aggregation functions in the query.
        # Corresponds to the JSON property `aggregateProperties`
        # @return [Hash<String,Google::Apis::DatastoreV1beta3::Value>]
        attr_accessor :aggregate_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregate_properties = args[:aggregate_properties] if args.key?(:aggregate_properties)
        end
      end
      
      # A batch of aggregation results produced by an aggregation query.
      class AggregationResultBatch
        include Google::Apis::Core::Hashable
      
        # The aggregation results for this batch.
        # Corresponds to the JSON property `aggregationResults`
        # @return [Array<Google::Apis::DatastoreV1beta3::AggregationResult>]
        attr_accessor :aggregation_results
      
        # The state of the query after the current batch. Only COUNT(*) aggregations are
        # supported in the initial launch. Therefore, expected result type is limited to
        # `NO_MORE_RESULTS`.
        # Corresponds to the JSON property `moreResults`
        # @return [String]
        attr_accessor :more_results
      
        # Read timestamp this batch was returned from. In a single transaction,
        # subsequent query result batches for the same query can have a greater
        # timestamp. Each batch's read timestamp is valid for all preceding batches.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_results = args[:aggregation_results] if args.key?(:aggregation_results)
          @more_results = args[:more_results] if args.key?(:more_results)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # The request for Datastore.AllocateIds.
      class AllocateIdsRequest
        include Google::Apis::Core::Hashable
      
        # Required. A list of keys with incomplete key paths for which to allocate IDs.
        # No key may be reserved/read-only.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::DatastoreV1beta3::Key>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # The response for Datastore.AllocateIds.
      class AllocateIdsResponse
        include Google::Apis::Core::Hashable
      
        # The keys specified in the request (in the same order), each with its key path
        # completed with a newly allocated ID.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::DatastoreV1beta3::Key>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # An array value.
      class ArrayValue
        include Google::Apis::Core::Hashable
      
        # Values in the array. The order of values in an array is preserved as long as
        # all values have identical settings for 'exclude_from_indexes'.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::DatastoreV1beta3::Value>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Average of the values of the requested property. * Only numeric values will be
      # aggregated. All non-numeric values including `NULL` are skipped. * If the
      # aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754
      # standards. * If the aggregated value set is empty, returns `NULL`. * Always
      # returns the result as a double.
      class Avg
        include Google::Apis::Core::Hashable
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DatastoreV1beta3::PropertyReference]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # The request for Datastore.BeginTransaction.
      class BeginTransactionRequest
        include Google::Apis::Core::Hashable
      
        # Options for beginning a new transaction. Transactions can be created
        # explicitly with calls to Datastore.BeginTransaction or implicitly by setting
        # ReadOptions.new_transaction in read requests.
        # Corresponds to the JSON property `transactionOptions`
        # @return [Google::Apis::DatastoreV1beta3::TransactionOptions]
        attr_accessor :transaction_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction_options = args[:transaction_options] if args.key?(:transaction_options)
        end
      end
      
      # The response for Datastore.BeginTransaction.
      class BeginTransactionResponse
        include Google::Apis::Core::Hashable
      
        # The transaction identifier (always present).
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The request for Datastore.Commit.
      class CommitRequest
        include Google::Apis::Core::Hashable
      
        # The type of commit to perform. Defaults to `TRANSACTIONAL`.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # The mutations to perform. When mode is `TRANSACTIONAL`, mutations affecting a
        # single entity are applied in order. The following sequences of mutations
        # affecting a single entity are not permitted in a single `Commit` request: - `
        # insert` followed by `insert` - `update` followed by `insert` - `upsert`
        # followed by `insert` - `delete` followed by `update` When mode is `
        # NON_TRANSACTIONAL`, no two mutations may affect a single entity.
        # Corresponds to the JSON property `mutations`
        # @return [Array<Google::Apis::DatastoreV1beta3::Mutation>]
        attr_accessor :mutations
      
        # The identifier of the transaction associated with the commit. A transaction
        # identifier is returned by a call to Datastore.BeginTransaction.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @mutations = args[:mutations] if args.key?(:mutations)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The response for Datastore.Commit.
      class CommitResponse
        include Google::Apis::Core::Hashable
      
        # The transaction commit timestamp. Not set for non-transactional commits.
        # Corresponds to the JSON property `commitTime`
        # @return [String]
        attr_accessor :commit_time
      
        # The number of index entries updated during the commit, or zero if none were
        # updated.
        # Corresponds to the JSON property `indexUpdates`
        # @return [Fixnum]
        attr_accessor :index_updates
      
        # The result of performing the mutations. The i-th mutation result corresponds
        # to the i-th mutation in the request.
        # Corresponds to the JSON property `mutationResults`
        # @return [Array<Google::Apis::DatastoreV1beta3::MutationResult>]
        attr_accessor :mutation_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_time = args[:commit_time] if args.key?(:commit_time)
          @index_updates = args[:index_updates] if args.key?(:index_updates)
          @mutation_results = args[:mutation_results] if args.key?(:mutation_results)
        end
      end
      
      # A filter that merges multiple other filters using the given operator.
      class CompositeFilter
        include Google::Apis::Core::Hashable
      
        # The list of filters to combine. Requires: * At least one filter is present.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::DatastoreV1beta3::Filter>]
        attr_accessor :filters
      
        # The operator for combining multiple filters.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @op = args[:op] if args.key?(:op)
        end
      end
      
      # Count of entities that match the query. The `COUNT(*)` aggregation function
      # operates on the entire entity so it does not require a field reference.
      class Count
        include Google::Apis::Core::Hashable
      
        # Optional. Optional constraint on the maximum number of entities to count. This
        # provides a way to set an upper bound on the number of entities to scan,
        # limiting latency, and cost. Unspecified is interpreted as no bound. If a zero
        # value is provided, a count result of zero should always be expected. High-
        # Level Example: ``` AGGREGATE COUNT_UP_TO(1000) OVER ( SELECT * FROM k ); ```
        # Requires: * Must be non-negative when present.
        # Corresponds to the JSON property `upTo`
        # @return [Fixnum]
        attr_accessor :up_to
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @up_to = args[:up_to] if args.key?(:up_to)
        end
      end
      
      # A Datastore data object. Must not exceed 1 MiB - 4 bytes.
      class Entity
        include Google::Apis::Core::Hashable
      
        # A unique identifier for an entity. If a key's partition ID or any of its path
        # kinds or names are reserved/read-only, the key is reserved/read-only. A
        # reserved/read-only key is forbidden in certain documented contexts.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::DatastoreV1beta3::Key]
        attr_accessor :key
      
        # The entity's properties. The map's keys are property names. A property name
        # matching regex `__.*__` is reserved. A reserved property name is forbidden in
        # certain documented contexts. The map keys, represented as UTF-8, must not
        # exceed 1,500 bytes and cannot be empty.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::DatastoreV1beta3::Value>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # The result of fetching an entity from Datastore.
      class EntityResult
        include Google::Apis::Core::Hashable
      
        # The time at which the entity was created. This field is set for `FULL` entity
        # results. If this entity is missing, this field will not be set.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A cursor that points to the position after the result entity. Set only when
        # the `EntityResult` is part of a `QueryResultBatch` message.
        # Corresponds to the JSON property `cursor`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cursor
      
        # A Datastore data object. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::DatastoreV1beta3::Entity]
        attr_accessor :entity
      
        # The time at which the entity was last changed. This field is set for `FULL`
        # entity results. If this entity is missing, this field will not be set.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The version of the entity, a strictly positive number that monotonically
        # increases with changes to the entity. This field is set for `FULL` entity
        # results. For missing entities in `LookupResponse`, this is the version of the
        # snapshot that was used to look up the entity, and it is always set except for
        # eventually consistent reads.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @cursor = args[:cursor] if args.key?(:cursor)
          @entity = args[:entity] if args.key?(:entity)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Execution statistics for the query.
      class ExecutionStats
        include Google::Apis::Core::Hashable
      
        # Debugging statistics from the execution of the query. Note that the debugging
        # stats are subject to change as Firestore evolves. It could include: ` "
        # indexes_entries_scanned": "1000", "documents_scanned": "20", "billing_details"
        # : ` "documents_billable": "20", "index_entries_billable": "1000", "
        # min_query_cost": "0" ` `
        # Corresponds to the JSON property `debugStats`
        # @return [Hash<String,Object>]
        attr_accessor :debug_stats
      
        # Total time to execute the query in the backend.
        # Corresponds to the JSON property `executionDuration`
        # @return [String]
        attr_accessor :execution_duration
      
        # Total billable read operations.
        # Corresponds to the JSON property `readOperations`
        # @return [Fixnum]
        attr_accessor :read_operations
      
        # Total number of results returned, including documents, projections,
        # aggregation results, keys.
        # Corresponds to the JSON property `resultsReturned`
        # @return [Fixnum]
        attr_accessor :results_returned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_stats = args[:debug_stats] if args.key?(:debug_stats)
          @execution_duration = args[:execution_duration] if args.key?(:execution_duration)
          @read_operations = args[:read_operations] if args.key?(:read_operations)
          @results_returned = args[:results_returned] if args.key?(:results_returned)
        end
      end
      
      # Explain metrics for the query.
      class ExplainMetrics
        include Google::Apis::Core::Hashable
      
        # Execution statistics for the query.
        # Corresponds to the JSON property `executionStats`
        # @return [Google::Apis::DatastoreV1beta3::ExecutionStats]
        attr_accessor :execution_stats
      
        # Planning phase information for the query.
        # Corresponds to the JSON property `planSummary`
        # @return [Google::Apis::DatastoreV1beta3::PlanSummary]
        attr_accessor :plan_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_stats = args[:execution_stats] if args.key?(:execution_stats)
          @plan_summary = args[:plan_summary] if args.key?(:plan_summary)
        end
      end
      
      # Explain options for the query.
      class ExplainOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to execute this query. When false (the default), the query
        # will be planned, returning only metrics from the planning stages. When true,
        # the query will be planned and executed, returning the full query results along
        # with both planning and execution stage metrics.
        # Corresponds to the JSON property `analyze`
        # @return [Boolean]
        attr_accessor :analyze
        alias_method :analyze?, :analyze
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyze = args[:analyze] if args.key?(:analyze)
        end
      end
      
      # A holder for any type of filter.
      class Filter
        include Google::Apis::Core::Hashable
      
        # A filter that merges multiple other filters using the given operator.
        # Corresponds to the JSON property `compositeFilter`
        # @return [Google::Apis::DatastoreV1beta3::CompositeFilter]
        attr_accessor :composite_filter
      
        # A filter on a specific property.
        # Corresponds to the JSON property `propertyFilter`
        # @return [Google::Apis::DatastoreV1beta3::PropertyFilter]
        attr_accessor :property_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_filter = args[:composite_filter] if args.key?(:composite_filter)
          @property_filter = args[:property_filter] if args.key?(:property_filter)
        end
      end
      
      # Nearest Neighbors search config. The ordering provided by FindNearest
      # supersedes the order_by stage. If multiple documents have the same vector
      # distance, the returned document order is not guaranteed to be stable between
      # queries.
      class FindNearest
        include Google::Apis::Core::Hashable
      
        # Required. The Distance Measure to use, required.
        # Corresponds to the JSON property `distanceMeasure`
        # @return [String]
        attr_accessor :distance_measure
      
        # Optional. Optional name of the field to output the result of the vector
        # distance calculation. Must conform to entity property limitations.
        # Corresponds to the JSON property `distanceResultProperty`
        # @return [String]
        attr_accessor :distance_result_property
      
        # Optional. Option to specify a threshold for which no less similar documents
        # will be returned. The behavior of the specified `distance_measure` will affect
        # the meaning of the distance threshold. Since DOT_PRODUCT distances increase
        # when the vectors are more similar, the comparison is inverted. * For EUCLIDEAN,
        # COSINE: WHERE distance <= distance_threshold * For DOT_PRODUCT: WHERE
        # distance >= distance_threshold
        # Corresponds to the JSON property `distanceThreshold`
        # @return [Float]
        attr_accessor :distance_threshold
      
        # Required. The number of nearest neighbors to return. Must be a positive
        # integer of no more than 100.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # A message that can hold any of the supported value types and associated
        # metadata.
        # Corresponds to the JSON property `queryVector`
        # @return [Google::Apis::DatastoreV1beta3::Value]
        attr_accessor :query_vector
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `vectorProperty`
        # @return [Google::Apis::DatastoreV1beta3::PropertyReference]
        attr_accessor :vector_property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distance_measure = args[:distance_measure] if args.key?(:distance_measure)
          @distance_result_property = args[:distance_result_property] if args.key?(:distance_result_property)
          @distance_threshold = args[:distance_threshold] if args.key?(:distance_threshold)
          @limit = args[:limit] if args.key?(:limit)
          @query_vector = args[:query_vector] if args.key?(:query_vector)
          @vector_property = args[:vector_property] if args.key?(:vector_property)
        end
      end
      
      # Metadata common to all Datastore Admin operations.
      class GoogleDatastoreAdminV1CommonMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation ended, either successfully or otherwise.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The client-assigned labels which were provided when the operation was created.
        # May also include additional labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The type of the operation. Can be used as a filter in ListOperationsRequest.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The time that work began on the operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current state of the Operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @labels = args[:labels] if args.key?(:labels)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for Datastore to Firestore migration operations. The
      # DatastoreFirestoreMigration operation is not started by the end-user via an
      # explicit "creation" method. This is an intentional deviation from the LRO
      # design pattern. This singleton resource can be accessed at: "projects/`
      # project_id`/operations/datastore-firestore-migration"
      class GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
        include Google::Apis::Core::Hashable
      
        # The current state of migration from Cloud Datastore to Cloud Firestore in
        # Datastore mode.
        # Corresponds to the JSON property `migrationState`
        # @return [String]
        attr_accessor :migration_state
      
        # The current step of migration from Cloud Datastore to Cloud Firestore in
        # Datastore mode.
        # Corresponds to the JSON property `migrationStep`
        # @return [String]
        attr_accessor :migration_step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_state = args[:migration_state] if args.key?(:migration_state)
          @migration_step = args[:migration_step] if args.key?(:migration_step)
        end
      end
      
      # Identifies a subset of entities in a project. This is specified as
      # combinations of kinds and namespaces (either or both of which may be all, as
      # described in the following examples). Example usage: Entire project: kinds=[],
      # namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'],
      # namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo',
      # 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz
      # namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz
      # namespace: kinds=[], namespace_ids=['Baz']
      class GoogleDatastoreAdminV1EntityFilter
        include Google::Apis::Core::Hashable
      
        # If empty, then this represents all kinds.
        # Corresponds to the JSON property `kinds`
        # @return [Array<String>]
        attr_accessor :kinds
      
        # An empty list represents all namespaces. This is the preferred usage for
        # projects that don't use namespaces. An empty string element represents the
        # default namespace. This should be used if the project has data in non-default
        # namespaces, but doesn't want to include them. Each namespace in this list must
        # be unique.
        # Corresponds to the JSON property `namespaceIds`
        # @return [Array<String>]
        attr_accessor :namespace_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kinds = args[:kinds] if args.key?(:kinds)
          @namespace_ids = args[:namespace_ids] if args.key?(:namespace_ids)
        end
      end
      
      # Metadata for ExportEntities operations.
      class GoogleDatastoreAdminV1ExportEntitiesMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata common to all Datastore Admin operations.
        # Corresponds to the JSON property `common`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1CommonMetadata]
        attr_accessor :common
      
        # Identifies a subset of entities in a project. This is specified as
        # combinations of kinds and namespaces (either or both of which may be all, as
        # described in the following examples). Example usage: Entire project: kinds=[],
        # namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'],
        # namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo',
        # 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz
        # namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz
        # namespace: kinds=[], namespace_ids=['Baz']
        # Corresponds to the JSON property `entityFilter`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1EntityFilter]
        attr_accessor :entity_filter
      
        # Location for the export metadata and data files. This will be the same value
        # as the google.datastore.admin.v1.ExportEntitiesRequest.output_url_prefix field.
        # The final output location is provided in google.datastore.admin.v1.
        # ExportEntitiesResponse.output_url.
        # Corresponds to the JSON property `outputUrlPrefix`
        # @return [String]
        attr_accessor :output_url_prefix
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1Progress]
        attr_accessor :progress_bytes
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressEntities`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1Progress]
        attr_accessor :progress_entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common = args[:common] if args.key?(:common)
          @entity_filter = args[:entity_filter] if args.key?(:entity_filter)
          @output_url_prefix = args[:output_url_prefix] if args.key?(:output_url_prefix)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_entities = args[:progress_entities] if args.key?(:progress_entities)
        end
      end
      
      # The response for google.datastore.admin.v1.DatastoreAdmin.ExportEntities.
      class GoogleDatastoreAdminV1ExportEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # Location of the output metadata file. This can be used to begin an import into
        # Cloud Datastore (this project or another project). See google.datastore.admin.
        # v1.ImportEntitiesRequest.input_url. Only present if the operation completed
        # successfully.
        # Corresponds to the JSON property `outputUrl`
        # @return [String]
        attr_accessor :output_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_url = args[:output_url] if args.key?(:output_url)
        end
      end
      
      # Metadata for ImportEntities operations.
      class GoogleDatastoreAdminV1ImportEntitiesMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata common to all Datastore Admin operations.
        # Corresponds to the JSON property `common`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1CommonMetadata]
        attr_accessor :common
      
        # Identifies a subset of entities in a project. This is specified as
        # combinations of kinds and namespaces (either or both of which may be all, as
        # described in the following examples). Example usage: Entire project: kinds=[],
        # namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'],
        # namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo',
        # 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz
        # namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz
        # namespace: kinds=[], namespace_ids=['Baz']
        # Corresponds to the JSON property `entityFilter`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1EntityFilter]
        attr_accessor :entity_filter
      
        # The location of the import metadata file. This will be the same value as the
        # google.datastore.admin.v1.ExportEntitiesResponse.output_url field.
        # Corresponds to the JSON property `inputUrl`
        # @return [String]
        attr_accessor :input_url
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1Progress]
        attr_accessor :progress_bytes
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressEntities`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1Progress]
        attr_accessor :progress_entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common = args[:common] if args.key?(:common)
          @entity_filter = args[:entity_filter] if args.key?(:entity_filter)
          @input_url = args[:input_url] if args.key?(:input_url)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_entities = args[:progress_entities] if args.key?(:progress_entities)
        end
      end
      
      # Metadata for Index operations.
      class GoogleDatastoreAdminV1IndexOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata common to all Datastore Admin operations.
        # Corresponds to the JSON property `common`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1CommonMetadata]
        attr_accessor :common
      
        # The index resource ID that this operation is acting on.
        # Corresponds to the JSON property `indexId`
        # @return [String]
        attr_accessor :index_id
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressEntities`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1Progress]
        attr_accessor :progress_entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common = args[:common] if args.key?(:common)
          @index_id = args[:index_id] if args.key?(:index_id)
          @progress_entities = args[:progress_entities] if args.key?(:progress_entities)
        end
      end
      
      # An event signifying the start of a new step in a [migration from Cloud
      # Datastore to Cloud Firestore in Datastore mode](https://cloud.google.com/
      # datastore/docs/upgrade-to-firestore).
      class GoogleDatastoreAdminV1MigrationProgressEvent
        include Google::Apis::Core::Hashable
      
        # Details for the `PREPARE` step.
        # Corresponds to the JSON property `prepareStepDetails`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1PrepareStepDetails]
        attr_accessor :prepare_step_details
      
        # Details for the `REDIRECT_WRITES` step.
        # Corresponds to the JSON property `redirectWritesStepDetails`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1RedirectWritesStepDetails]
        attr_accessor :redirect_writes_step_details
      
        # The step that is starting. An event with step set to `START` indicates that
        # the migration has been reverted back to the initial pre-migration state.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prepare_step_details = args[:prepare_step_details] if args.key?(:prepare_step_details)
          @redirect_writes_step_details = args[:redirect_writes_step_details] if args.key?(:redirect_writes_step_details)
          @step = args[:step] if args.key?(:step)
        end
      end
      
      # An event signifying a change in state of a [migration from Cloud Datastore to
      # Cloud Firestore in Datastore mode](https://cloud.google.com/datastore/docs/
      # upgrade-to-firestore).
      class GoogleDatastoreAdminV1MigrationStateEvent
        include Google::Apis::Core::Hashable
      
        # The new state of the migration.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Details for the `PREPARE` step.
      class GoogleDatastoreAdminV1PrepareStepDetails
        include Google::Apis::Core::Hashable
      
        # The concurrency mode this database will use when it reaches the `
        # REDIRECT_WRITES` step.
        # Corresponds to the JSON property `concurrencyMode`
        # @return [String]
        attr_accessor :concurrency_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concurrency_mode = args[:concurrency_mode] if args.key?(:concurrency_mode)
        end
      end
      
      # Measures the progress of a particular metric.
      class GoogleDatastoreAdminV1Progress
        include Google::Apis::Core::Hashable
      
        # The amount of work that has been completed. Note that this may be greater than
        # work_estimated.
        # Corresponds to the JSON property `workCompleted`
        # @return [Fixnum]
        attr_accessor :work_completed
      
        # An estimate of how much work needs to be performed. May be zero if the work
        # estimate is unavailable.
        # Corresponds to the JSON property `workEstimated`
        # @return [Fixnum]
        attr_accessor :work_estimated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @work_completed = args[:work_completed] if args.key?(:work_completed)
          @work_estimated = args[:work_estimated] if args.key?(:work_estimated)
        end
      end
      
      # Details for the `REDIRECT_WRITES` step.
      class GoogleDatastoreAdminV1RedirectWritesStepDetails
        include Google::Apis::Core::Hashable
      
        # The concurrency mode for this database.
        # Corresponds to the JSON property `concurrencyMode`
        # @return [String]
        attr_accessor :concurrency_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concurrency_mode = args[:concurrency_mode] if args.key?(:concurrency_mode)
        end
      end
      
      # Metadata common to all Datastore Admin operations.
      class GoogleDatastoreAdminV1beta1CommonMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation ended, either successfully or otherwise.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The client-assigned labels which were provided when the operation was created.
        # May also include additional labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The type of the operation. Can be used as a filter in ListOperationsRequest.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The time that work began on the operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current state of the Operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @labels = args[:labels] if args.key?(:labels)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Identifies a subset of entities in a project. This is specified as
      # combinations of kinds and namespaces (either or both of which may be all, as
      # described in the following examples). Example usage: Entire project: kinds=[],
      # namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'],
      # namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo',
      # 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz
      # namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz
      # namespace: kinds=[], namespace_ids=['Baz']
      class GoogleDatastoreAdminV1beta1EntityFilter
        include Google::Apis::Core::Hashable
      
        # If empty, then this represents all kinds.
        # Corresponds to the JSON property `kinds`
        # @return [Array<String>]
        attr_accessor :kinds
      
        # An empty list represents all namespaces. This is the preferred usage for
        # projects that don't use namespaces. An empty string element represents the
        # default namespace. This should be used if the project has data in non-default
        # namespaces, but doesn't want to include them. Each namespace in this list must
        # be unique.
        # Corresponds to the JSON property `namespaceIds`
        # @return [Array<String>]
        attr_accessor :namespace_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kinds = args[:kinds] if args.key?(:kinds)
          @namespace_ids = args[:namespace_ids] if args.key?(:namespace_ids)
        end
      end
      
      # Metadata for ExportEntities operations.
      class GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata common to all Datastore Admin operations.
        # Corresponds to the JSON property `common`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1beta1CommonMetadata]
        attr_accessor :common
      
        # Identifies a subset of entities in a project. This is specified as
        # combinations of kinds and namespaces (either or both of which may be all, as
        # described in the following examples). Example usage: Entire project: kinds=[],
        # namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'],
        # namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo',
        # 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz
        # namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz
        # namespace: kinds=[], namespace_ids=['Baz']
        # Corresponds to the JSON property `entityFilter`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1beta1EntityFilter]
        attr_accessor :entity_filter
      
        # Location for the export metadata and data files. This will be the same value
        # as the google.datastore.admin.v1beta1.ExportEntitiesRequest.output_url_prefix
        # field. The final output location is provided in google.datastore.admin.v1beta1.
        # ExportEntitiesResponse.output_url.
        # Corresponds to the JSON property `outputUrlPrefix`
        # @return [String]
        attr_accessor :output_url_prefix
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1beta1Progress]
        attr_accessor :progress_bytes
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressEntities`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1beta1Progress]
        attr_accessor :progress_entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common = args[:common] if args.key?(:common)
          @entity_filter = args[:entity_filter] if args.key?(:entity_filter)
          @output_url_prefix = args[:output_url_prefix] if args.key?(:output_url_prefix)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_entities = args[:progress_entities] if args.key?(:progress_entities)
        end
      end
      
      # The response for google.datastore.admin.v1beta1.DatastoreAdmin.ExportEntities.
      class GoogleDatastoreAdminV1beta1ExportEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # Location of the output metadata file. This can be used to begin an import into
        # Cloud Datastore (this project or another project). See google.datastore.admin.
        # v1beta1.ImportEntitiesRequest.input_url. Only present if the operation
        # completed successfully.
        # Corresponds to the JSON property `outputUrl`
        # @return [String]
        attr_accessor :output_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_url = args[:output_url] if args.key?(:output_url)
        end
      end
      
      # Metadata for ImportEntities operations.
      class GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata common to all Datastore Admin operations.
        # Corresponds to the JSON property `common`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1beta1CommonMetadata]
        attr_accessor :common
      
        # Identifies a subset of entities in a project. This is specified as
        # combinations of kinds and namespaces (either or both of which may be all, as
        # described in the following examples). Example usage: Entire project: kinds=[],
        # namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'],
        # namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo',
        # 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz
        # namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz
        # namespace: kinds=[], namespace_ids=['Baz']
        # Corresponds to the JSON property `entityFilter`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1beta1EntityFilter]
        attr_accessor :entity_filter
      
        # The location of the import metadata file. This will be the same value as the
        # google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url field.
        # Corresponds to the JSON property `inputUrl`
        # @return [String]
        attr_accessor :input_url
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1beta1Progress]
        attr_accessor :progress_bytes
      
        # Measures the progress of a particular metric.
        # Corresponds to the JSON property `progressEntities`
        # @return [Google::Apis::DatastoreV1beta3::GoogleDatastoreAdminV1beta1Progress]
        attr_accessor :progress_entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common = args[:common] if args.key?(:common)
          @entity_filter = args[:entity_filter] if args.key?(:entity_filter)
          @input_url = args[:input_url] if args.key?(:input_url)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_entities = args[:progress_entities] if args.key?(:progress_entities)
        end
      end
      
      # Measures the progress of a particular metric.
      class GoogleDatastoreAdminV1beta1Progress
        include Google::Apis::Core::Hashable
      
        # The amount of work that has been completed. Note that this may be greater than
        # work_estimated.
        # Corresponds to the JSON property `workCompleted`
        # @return [Fixnum]
        attr_accessor :work_completed
      
        # An estimate of how much work needs to be performed. May be zero if the work
        # estimate is unavailable.
        # Corresponds to the JSON property `workEstimated`
        # @return [Fixnum]
        attr_accessor :work_estimated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @work_completed = args[:work_completed] if args.key?(:work_completed)
          @work_estimated = args[:work_estimated] if args.key?(:work_estimated)
        end
      end
      
      # A [GQL query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
      class GqlQuery
        include Google::Apis::Core::Hashable
      
        # When false, the query string must not contain any literals and instead must
        # bind all values. For example, `SELECT * FROM Kind WHERE a = 'string literal'`
        # is not allowed, while `SELECT * FROM Kind WHERE a = @value` is.
        # Corresponds to the JSON property `allowLiterals`
        # @return [Boolean]
        attr_accessor :allow_literals
        alias_method :allow_literals?, :allow_literals
      
        # For each non-reserved named binding site in the query string, there must be a
        # named parameter with that name, but not necessarily the inverse. Key must
        # match regex `A-Za-z_$*`, must not match regex `__.*__`, and must not be `""`.
        # Corresponds to the JSON property `namedBindings`
        # @return [Hash<String,Google::Apis::DatastoreV1beta3::GqlQueryParameter>]
        attr_accessor :named_bindings
      
        # Numbered binding site @1 references the first numbered parameter, effectively
        # using 1-based indexing, rather than the usual 0. For each binding site
        # numbered i in `query_string`, there must be an i-th numbered parameter. The
        # inverse must also be true.
        # Corresponds to the JSON property `positionalBindings`
        # @return [Array<Google::Apis::DatastoreV1beta3::GqlQueryParameter>]
        attr_accessor :positional_bindings
      
        # A string of the format described [here](https://cloud.google.com/datastore/
        # docs/apis/gql/gql_reference).
        # Corresponds to the JSON property `queryString`
        # @return [String]
        attr_accessor :query_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_literals = args[:allow_literals] if args.key?(:allow_literals)
          @named_bindings = args[:named_bindings] if args.key?(:named_bindings)
          @positional_bindings = args[:positional_bindings] if args.key?(:positional_bindings)
          @query_string = args[:query_string] if args.key?(:query_string)
        end
      end
      
      # A binding parameter for a GQL query.
      class GqlQueryParameter
        include Google::Apis::Core::Hashable
      
        # A query cursor. Query cursors are returned in query result batches.
        # Corresponds to the JSON property `cursor`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cursor
      
        # A message that can hold any of the supported value types and associated
        # metadata.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DatastoreV1beta3::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cursor = args[:cursor] if args.key?(:cursor)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A unique identifier for an entity. If a key's partition ID or any of its path
      # kinds or names are reserved/read-only, the key is reserved/read-only. A
      # reserved/read-only key is forbidden in certain documented contexts.
      class Key
        include Google::Apis::Core::Hashable
      
        # A partition ID identifies a grouping of entities. The grouping is always by
        # project and namespace, however the namespace ID may be empty. A partition ID
        # contains several dimensions: project ID and namespace ID. Partition dimensions:
        # - May be `""`. - Must be valid UTF-8 bytes. - Must have values that match
        # regex `[A-Za-z\d\.\-_]`1,100`` If the value of any dimension matches regex `__.
        # *__`, the partition is reserved/read-only. A reserved/read-only partition ID
        # is forbidden in certain documented contexts. Foreign partition IDs (in which
        # the project ID does not match the context project ID ) are discouraged. Reads
        # and writes of foreign partition IDs may fail if the project is not in an
        # active state.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DatastoreV1beta3::PartitionId]
        attr_accessor :partition_id
      
        # The entity path. An entity path consists of one or more elements composed of a
        # kind and a string or numerical identifier, which identify entities. The first
        # element identifies a _root entity_, the second element identifies a _child_ of
        # the root entity, the third element identifies a child of the second entity,
        # and so forth. The entities identified by all prefixes of the path are called
        # the element's _ancestors_. An entity path is always fully complete: *all* of
        # the entity's ancestors are required to be in the path along with the entity
        # identifier itself. The only exception is that in some documented cases, the
        # identifier in the last path element (for the entity) itself may be omitted.
        # For example, the last path element of the key of `Mutation.insert` may have no
        # identifier. A path can never be empty, and a path can have at most 100
        # elements.
        # Corresponds to the JSON property `path`
        # @return [Array<Google::Apis::DatastoreV1beta3::PathElement>]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A representation of a kind.
      class KindExpression
        include Google::Apis::Core::Hashable
      
        # The name of the kind.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # The request for Datastore.Lookup.
      class LookupRequest
        include Google::Apis::Core::Hashable
      
        # Required. Keys of entities to look up.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::DatastoreV1beta3::Key>]
        attr_accessor :keys
      
        # The set of arbitrarily nested property paths used to restrict an operation to
        # only a subset of properties in an entity.
        # Corresponds to the JSON property `propertyMask`
        # @return [Google::Apis::DatastoreV1beta3::PropertyMask]
        attr_accessor :property_mask
      
        # The options shared by read requests.
        # Corresponds to the JSON property `readOptions`
        # @return [Google::Apis::DatastoreV1beta3::ReadOptions]
        attr_accessor :read_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
          @property_mask = args[:property_mask] if args.key?(:property_mask)
          @read_options = args[:read_options] if args.key?(:read_options)
        end
      end
      
      # The response for Datastore.Lookup.
      class LookupResponse
        include Google::Apis::Core::Hashable
      
        # A list of keys that were not looked up due to resource constraints. The order
        # of results in this field is undefined and has no relation to the order of the
        # keys in the input.
        # Corresponds to the JSON property `deferred`
        # @return [Array<Google::Apis::DatastoreV1beta3::Key>]
        attr_accessor :deferred
      
        # Entities found as `ResultType.FULL` entities. The order of results in this
        # field is undefined and has no relation to the order of the keys in the input.
        # Corresponds to the JSON property `found`
        # @return [Array<Google::Apis::DatastoreV1beta3::EntityResult>]
        attr_accessor :found
      
        # Entities not found as `ResultType.KEY_ONLY` entities. The order of results in
        # this field is undefined and has no relation to the order of the keys in the
        # input.
        # Corresponds to the JSON property `missing`
        # @return [Array<Google::Apis::DatastoreV1beta3::EntityResult>]
        attr_accessor :missing
      
        # The time at which these entities were read or found missing.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deferred = args[:deferred] if args.key?(:deferred)
          @found = args[:found] if args.key?(:found)
          @missing = args[:missing] if args.key?(:missing)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # A mutation to apply to an entity.
      class Mutation
        include Google::Apis::Core::Hashable
      
        # The version of the entity that this mutation is being applied to. If this does
        # not match the current version on the server, the mutation conflicts.
        # Corresponds to the JSON property `baseVersion`
        # @return [Fixnum]
        attr_accessor :base_version
      
        # The strategy to use when a conflict is detected. Defaults to `SERVER_VALUE`.
        # If this is set, then `conflict_detection_strategy` must also be set.
        # Corresponds to the JSON property `conflictResolutionStrategy`
        # @return [String]
        attr_accessor :conflict_resolution_strategy
      
        # A unique identifier for an entity. If a key's partition ID or any of its path
        # kinds or names are reserved/read-only, the key is reserved/read-only. A
        # reserved/read-only key is forbidden in certain documented contexts.
        # Corresponds to the JSON property `delete`
        # @return [Google::Apis::DatastoreV1beta3::Key]
        attr_accessor :delete
      
        # A Datastore data object. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `insert`
        # @return [Google::Apis::DatastoreV1beta3::Entity]
        attr_accessor :insert
      
        # The set of arbitrarily nested property paths used to restrict an operation to
        # only a subset of properties in an entity.
        # Corresponds to the JSON property `propertyMask`
        # @return [Google::Apis::DatastoreV1beta3::PropertyMask]
        attr_accessor :property_mask
      
        # Optional. The transforms to perform on the entity. This field can be set only
        # when the operation is `insert`, `update`, or `upsert`. If present, the
        # transforms are be applied to the entity regardless of the property mask, in
        # order, after the operation.
        # Corresponds to the JSON property `propertyTransforms`
        # @return [Array<Google::Apis::DatastoreV1beta3::PropertyTransform>]
        attr_accessor :property_transforms
      
        # A Datastore data object. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::DatastoreV1beta3::Entity]
        attr_accessor :update
      
        # The update time of the entity that this mutation is being applied to. If this
        # does not match the current update time on the server, the mutation conflicts.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A Datastore data object. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `upsert`
        # @return [Google::Apis::DatastoreV1beta3::Entity]
        attr_accessor :upsert
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_version = args[:base_version] if args.key?(:base_version)
          @conflict_resolution_strategy = args[:conflict_resolution_strategy] if args.key?(:conflict_resolution_strategy)
          @delete = args[:delete] if args.key?(:delete)
          @insert = args[:insert] if args.key?(:insert)
          @property_mask = args[:property_mask] if args.key?(:property_mask)
          @property_transforms = args[:property_transforms] if args.key?(:property_transforms)
          @update = args[:update] if args.key?(:update)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upsert = args[:upsert] if args.key?(:upsert)
        end
      end
      
      # The result of applying a mutation.
      class MutationResult
        include Google::Apis::Core::Hashable
      
        # Whether a conflict was detected for this mutation. Always false when a
        # conflict detection strategy field is not set in the mutation.
        # Corresponds to the JSON property `conflictDetected`
        # @return [Boolean]
        attr_accessor :conflict_detected
        alias_method :conflict_detected?, :conflict_detected
      
        # The create time of the entity. This field will not be set after a 'delete'.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A unique identifier for an entity. If a key's partition ID or any of its path
        # kinds or names are reserved/read-only, the key is reserved/read-only. A
        # reserved/read-only key is forbidden in certain documented contexts.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::DatastoreV1beta3::Key]
        attr_accessor :key
      
        # The results of applying each PropertyTransform, in the same order of the
        # request.
        # Corresponds to the JSON property `transformResults`
        # @return [Array<Google::Apis::DatastoreV1beta3::Value>]
        attr_accessor :transform_results
      
        # The update time of the entity on the server after processing the mutation. If
        # the mutation doesn't change anything on the server, then the timestamp will be
        # the update timestamp of the current entity. This field will not be set after a
        # 'delete'.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The version of the entity on the server after processing the mutation. If the
        # mutation doesn't change anything on the server, then the version will be the
        # version of the current entity or, if no entity is present, a version that is
        # strictly greater than the version of any previous entity and less than the
        # version of any possible future entity.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflict_detected = args[:conflict_detected] if args.key?(:conflict_detected)
          @create_time = args[:create_time] if args.key?(:create_time)
          @key = args[:key] if args.key?(:key)
          @transform_results = args[:transform_results] if args.key?(:transform_results)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A partition ID identifies a grouping of entities. The grouping is always by
      # project and namespace, however the namespace ID may be empty. A partition ID
      # contains several dimensions: project ID and namespace ID. Partition dimensions:
      # - May be `""`. - Must be valid UTF-8 bytes. - Must have values that match
      # regex `[A-Za-z\d\.\-_]`1,100`` If the value of any dimension matches regex `__.
      # *__`, the partition is reserved/read-only. A reserved/read-only partition ID
      # is forbidden in certain documented contexts. Foreign partition IDs (in which
      # the project ID does not match the context project ID ) are discouraged. Reads
      # and writes of foreign partition IDs may fail if the project is not in an
      # active state.
      class PartitionId
        include Google::Apis::Core::Hashable
      
        # If not empty, the ID of the namespace to which the entities belong.
        # Corresponds to the JSON property `namespaceId`
        # @return [String]
        attr_accessor :namespace_id
      
        # The ID of the project to which the entities belong.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespace_id = args[:namespace_id] if args.key?(:namespace_id)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # A (kind, ID/name) pair used to construct a key path. If either name or ID is
      # set, the element is complete. If neither is set, the element is incomplete.
      class PathElement
        include Google::Apis::Core::Hashable
      
        # The auto-allocated ID of the entity. Never equal to zero. Values less than
        # zero are discouraged and may not be supported in the future.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The kind of the entity. A kind matching regex `__.*__` is reserved/read-only.
        # A kind must not contain more than 1500 bytes when UTF-8 encoded. Cannot be `""`
        # . Must be valid UTF-8 bytes. Legacy values that are not valid UTF-8 are
        # encoded as `__bytes__` where `` is the base-64 encoding of the bytes.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the entity. A name matching regex `__.*__` is reserved/read-only.
        # A name must not be more than 1500 bytes when UTF-8 encoded. Cannot be `""`.
        # Must be valid UTF-8 bytes. Legacy values that are not valid UTF-8 are encoded
        # as `__bytes__` where `` is the base-64 encoding of the bytes.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Planning phase information for the query.
      class PlanSummary
        include Google::Apis::Core::Hashable
      
        # The indexes selected for the query. For example: [ `"query_scope": "Collection"
        # , "properties": "(foo ASC, __name__ ASC)"`, `"query_scope": "Collection", "
        # properties": "(bar ASC, __name__ ASC)"` ]
        # Corresponds to the JSON property `indexesUsed`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :indexes_used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @indexes_used = args[:indexes_used] if args.key?(:indexes_used)
        end
      end
      
      # A representation of a property in a projection.
      class Projection
        include Google::Apis::Core::Hashable
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DatastoreV1beta3::PropertyReference]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A filter on a specific property.
      class PropertyFilter
        include Google::Apis::Core::Hashable
      
        # The operator to filter by.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DatastoreV1beta3::PropertyReference]
        attr_accessor :property
      
        # A message that can hold any of the supported value types and associated
        # metadata.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DatastoreV1beta3::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @op = args[:op] if args.key?(:op)
          @property = args[:property] if args.key?(:property)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The set of arbitrarily nested property paths used to restrict an operation to
      # only a subset of properties in an entity.
      class PropertyMask
        include Google::Apis::Core::Hashable
      
        # The paths to the properties covered by this mask. A path is a list of property
        # names separated by dots (`.`), for example `foo.bar` means the property `bar`
        # inside the entity property `foo` inside the entity associated with this path.
        # If a property name contains a dot `.` or a backslash `\`, then that name must
        # be escaped. A path must not be empty, and may not reference a value inside an
        # array value.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paths = args[:paths] if args.key?(:paths)
        end
      end
      
      # The desired order for a specific property.
      class PropertyOrder
        include Google::Apis::Core::Hashable
      
        # The direction to order by. Defaults to `ASCENDING`.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DatastoreV1beta3::PropertyReference]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direction = args[:direction] if args.key?(:direction)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A reference to a property relative to the kind expressions.
      class PropertyReference
        include Google::Apis::Core::Hashable
      
        # A reference to a property. Requires: * MUST be a dot-delimited (`.`) string of
        # segments, where each segment conforms to entity property name limitations.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A transformation of an entity property.
      class PropertyTransform
        include Google::Apis::Core::Hashable
      
        # An array value.
        # Corresponds to the JSON property `appendMissingElements`
        # @return [Google::Apis::DatastoreV1beta3::ArrayValue]
        attr_accessor :append_missing_elements
      
        # A message that can hold any of the supported value types and associated
        # metadata.
        # Corresponds to the JSON property `increment`
        # @return [Google::Apis::DatastoreV1beta3::Value]
        attr_accessor :increment
      
        # A message that can hold any of the supported value types and associated
        # metadata.
        # Corresponds to the JSON property `maximum`
        # @return [Google::Apis::DatastoreV1beta3::Value]
        attr_accessor :maximum
      
        # A message that can hold any of the supported value types and associated
        # metadata.
        # Corresponds to the JSON property `minimum`
        # @return [Google::Apis::DatastoreV1beta3::Value]
        attr_accessor :minimum
      
        # Optional. The name of the property. Property paths (a list of property names
        # separated by dots (`.`)) may be used to refer to properties inside entity
        # values. For example `foo.bar` means the property `bar` inside the entity
        # property `foo`. If a property name contains a dot `.` or a backlslash `\`,
        # then that name must be escaped.
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # An array value.
        # Corresponds to the JSON property `removeAllFromArray`
        # @return [Google::Apis::DatastoreV1beta3::ArrayValue]
        attr_accessor :remove_all_from_array
      
        # Sets the property to the given server value.
        # Corresponds to the JSON property `setToServerValue`
        # @return [String]
        attr_accessor :set_to_server_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @append_missing_elements = args[:append_missing_elements] if args.key?(:append_missing_elements)
          @increment = args[:increment] if args.key?(:increment)
          @maximum = args[:maximum] if args.key?(:maximum)
          @minimum = args[:minimum] if args.key?(:minimum)
          @property = args[:property] if args.key?(:property)
          @remove_all_from_array = args[:remove_all_from_array] if args.key?(:remove_all_from_array)
          @set_to_server_value = args[:set_to_server_value] if args.key?(:set_to_server_value)
        end
      end
      
      # A query for entities. The query stages are executed in the following order: 1.
      # kind 2. filter 3. projection 4. order + start_cursor + end_cursor 5. offset 6.
      # limit 7. find_nearest
      class Query
        include Google::Apis::Core::Hashable
      
        # The properties to make distinct. The query results will contain the first
        # result for each distinct combination of values for the given properties (if
        # empty, all results are returned). Requires: * If `order` is specified, the set
        # of distinct on properties must appear before the non-distinct on properties in
        # `order`.
        # Corresponds to the JSON property `distinctOn`
        # @return [Array<Google::Apis::DatastoreV1beta3::PropertyReference>]
        attr_accessor :distinct_on
      
        # An ending point for the query results. Query cursors are returned in query
        # result batches and [can only be used to limit the same query](https://cloud.
        # google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
        # Corresponds to the JSON property `endCursor`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :end_cursor
      
        # A holder for any type of filter.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::DatastoreV1beta3::Filter]
        attr_accessor :filter
      
        # Nearest Neighbors search config. The ordering provided by FindNearest
        # supersedes the order_by stage. If multiple documents have the same vector
        # distance, the returned document order is not guaranteed to be stable between
        # queries.
        # Corresponds to the JSON property `findNearest`
        # @return [Google::Apis::DatastoreV1beta3::FindNearest]
        attr_accessor :find_nearest
      
        # The kinds to query (if empty, returns entities of all kinds). Currently at
        # most 1 kind may be specified.
        # Corresponds to the JSON property `kind`
        # @return [Array<Google::Apis::DatastoreV1beta3::KindExpression>]
        attr_accessor :kind
      
        # The maximum number of results to return. Applies after all other constraints.
        # Optional. Unspecified is interpreted as no limit. Must be >= 0 if specified.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # The number of results to skip. Applies before limit, but after all other
        # constraints. Optional. Must be >= 0 if specified.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order to apply to the query results (if empty, order is unspecified).
        # Corresponds to the JSON property `order`
        # @return [Array<Google::Apis::DatastoreV1beta3::PropertyOrder>]
        attr_accessor :order
      
        # The projection to return. Defaults to returning all properties.
        # Corresponds to the JSON property `projection`
        # @return [Array<Google::Apis::DatastoreV1beta3::Projection>]
        attr_accessor :projection
      
        # A starting point for the query results. Query cursors are returned in query
        # result batches and [can only be used to continue the same query](https://cloud.
        # google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
        # Corresponds to the JSON property `startCursor`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :start_cursor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distinct_on = args[:distinct_on] if args.key?(:distinct_on)
          @end_cursor = args[:end_cursor] if args.key?(:end_cursor)
          @filter = args[:filter] if args.key?(:filter)
          @find_nearest = args[:find_nearest] if args.key?(:find_nearest)
          @kind = args[:kind] if args.key?(:kind)
          @limit = args[:limit] if args.key?(:limit)
          @offset = args[:offset] if args.key?(:offset)
          @order = args[:order] if args.key?(:order)
          @projection = args[:projection] if args.key?(:projection)
          @start_cursor = args[:start_cursor] if args.key?(:start_cursor)
        end
      end
      
      # A batch of results produced by a query.
      class QueryResultBatch
        include Google::Apis::Core::Hashable
      
        # A cursor that points to the position after the last result in the batch.
        # Corresponds to the JSON property `endCursor`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :end_cursor
      
        # The result type for every entity in `entity_results`.
        # Corresponds to the JSON property `entityResultType`
        # @return [String]
        attr_accessor :entity_result_type
      
        # The results for this batch.
        # Corresponds to the JSON property `entityResults`
        # @return [Array<Google::Apis::DatastoreV1beta3::EntityResult>]
        attr_accessor :entity_results
      
        # The state of the query after the current batch.
        # Corresponds to the JSON property `moreResults`
        # @return [String]
        attr_accessor :more_results
      
        # Read timestamp this batch was returned from. This applies to the range of
        # results from the query's `start_cursor` (or the beginning of the query if no
        # cursor was given) to this batch's `end_cursor` (not the query's `end_cursor`).
        # In a single transaction, subsequent query result batches for the same query
        # can have a greater timestamp. Each batch's read timestamp is valid for all
        # preceding batches. This value will not be set for eventually consistent
        # queries in Cloud Datastore.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A cursor that points to the position after the last skipped result. Will be
        # set when `skipped_results` != 0.
        # Corresponds to the JSON property `skippedCursor`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :skipped_cursor
      
        # The number of results skipped, typically because of an offset.
        # Corresponds to the JSON property `skippedResults`
        # @return [Fixnum]
        attr_accessor :skipped_results
      
        # The version number of the snapshot this batch was returned from. This applies
        # to the range of results from the query's `start_cursor` (or the beginning of
        # the query if no cursor was given) to this batch's `end_cursor` (not the query'
        # s `end_cursor`). In a single transaction, subsequent query result batches for
        # the same query can have a greater snapshot version number. Each batch's
        # snapshot version is valid for all preceding batches. The value will be zero
        # for eventually consistent queries.
        # Corresponds to the JSON property `snapshotVersion`
        # @return [Fixnum]
        attr_accessor :snapshot_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_cursor = args[:end_cursor] if args.key?(:end_cursor)
          @entity_result_type = args[:entity_result_type] if args.key?(:entity_result_type)
          @entity_results = args[:entity_results] if args.key?(:entity_results)
          @more_results = args[:more_results] if args.key?(:more_results)
          @read_time = args[:read_time] if args.key?(:read_time)
          @skipped_cursor = args[:skipped_cursor] if args.key?(:skipped_cursor)
          @skipped_results = args[:skipped_results] if args.key?(:skipped_results)
          @snapshot_version = args[:snapshot_version] if args.key?(:snapshot_version)
        end
      end
      
      # Options specific to read-only transactions.
      class ReadOnly
        include Google::Apis::Core::Hashable
      
        # Reads entities at the given time. This must be a microsecond precision
        # timestamp within the past one hour, or if Point-in-Time Recovery is enabled,
        # can additionally be a whole minute timestamp within the past 7 days.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # The options shared by read requests.
      class ReadOptions
        include Google::Apis::Core::Hashable
      
        # The non-transactional read consistency to use.
        # Corresponds to the JSON property `readConsistency`
        # @return [String]
        attr_accessor :read_consistency
      
        # Reads entities as they were at the given time. This value is only supported
        # for Cloud Firestore in Datastore mode. This must be a microsecond precision
        # timestamp within the past one hour, or if Point-in-Time Recovery is enabled,
        # can additionally be a whole minute timestamp within the past 7 days.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The identifier of the transaction in which to read. A transaction identifier
        # is returned by a call to Datastore.BeginTransaction.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_consistency = args[:read_consistency] if args.key?(:read_consistency)
          @read_time = args[:read_time] if args.key?(:read_time)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # Options specific to read / write transactions.
      class ReadWrite
        include Google::Apis::Core::Hashable
      
        # The transaction identifier of the transaction being retried.
        # Corresponds to the JSON property `previousTransaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :previous_transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @previous_transaction = args[:previous_transaction] if args.key?(:previous_transaction)
        end
      end
      
      # The request for Datastore.ReserveIds.
      class ReserveIdsRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the database against which to make the request. '(default)' is not
        # allowed; please use empty string '' to refer the default database.
        # Corresponds to the JSON property `databaseId`
        # @return [String]
        attr_accessor :database_id
      
        # Required. A list of keys with complete key paths whose numeric IDs should not
        # be auto-allocated.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::DatastoreV1beta3::Key>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_id = args[:database_id] if args.key?(:database_id)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # The response for Datastore.ReserveIds.
      class ReserveIdsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request for Datastore.Rollback.
      class RollbackRequest
        include Google::Apis::Core::Hashable
      
        # Required. The transaction identifier, returned by a call to Datastore.
        # BeginTransaction.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The response for Datastore.Rollback. (an empty message).
      class RollbackResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request for Datastore.RunAggregationQuery.
      class RunAggregationQueryRequest
        include Google::Apis::Core::Hashable
      
        # Datastore query for running an aggregation over a Query.
        # Corresponds to the JSON property `aggregationQuery`
        # @return [Google::Apis::DatastoreV1beta3::AggregationQuery]
        attr_accessor :aggregation_query
      
        # Explain options for the query.
        # Corresponds to the JSON property `explainOptions`
        # @return [Google::Apis::DatastoreV1beta3::ExplainOptions]
        attr_accessor :explain_options
      
        # A [GQL query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
        # Corresponds to the JSON property `gqlQuery`
        # @return [Google::Apis::DatastoreV1beta3::GqlQuery]
        attr_accessor :gql_query
      
        # A partition ID identifies a grouping of entities. The grouping is always by
        # project and namespace, however the namespace ID may be empty. A partition ID
        # contains several dimensions: project ID and namespace ID. Partition dimensions:
        # - May be `""`. - Must be valid UTF-8 bytes. - Must have values that match
        # regex `[A-Za-z\d\.\-_]`1,100`` If the value of any dimension matches regex `__.
        # *__`, the partition is reserved/read-only. A reserved/read-only partition ID
        # is forbidden in certain documented contexts. Foreign partition IDs (in which
        # the project ID does not match the context project ID ) are discouraged. Reads
        # and writes of foreign partition IDs may fail if the project is not in an
        # active state.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DatastoreV1beta3::PartitionId]
        attr_accessor :partition_id
      
        # The options shared by read requests.
        # Corresponds to the JSON property `readOptions`
        # @return [Google::Apis::DatastoreV1beta3::ReadOptions]
        attr_accessor :read_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_query = args[:aggregation_query] if args.key?(:aggregation_query)
          @explain_options = args[:explain_options] if args.key?(:explain_options)
          @gql_query = args[:gql_query] if args.key?(:gql_query)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @read_options = args[:read_options] if args.key?(:read_options)
        end
      end
      
      # The response for Datastore.RunAggregationQuery.
      class RunAggregationQueryResponse
        include Google::Apis::Core::Hashable
      
        # A batch of aggregation results produced by an aggregation query.
        # Corresponds to the JSON property `batch`
        # @return [Google::Apis::DatastoreV1beta3::AggregationResultBatch]
        attr_accessor :batch
      
        # Explain metrics for the query.
        # Corresponds to the JSON property `explainMetrics`
        # @return [Google::Apis::DatastoreV1beta3::ExplainMetrics]
        attr_accessor :explain_metrics
      
        # Datastore query for running an aggregation over a Query.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::DatastoreV1beta3::AggregationQuery]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch = args[:batch] if args.key?(:batch)
          @explain_metrics = args[:explain_metrics] if args.key?(:explain_metrics)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # The request for Datastore.RunQuery.
      class RunQueryRequest
        include Google::Apis::Core::Hashable
      
        # Explain options for the query.
        # Corresponds to the JSON property `explainOptions`
        # @return [Google::Apis::DatastoreV1beta3::ExplainOptions]
        attr_accessor :explain_options
      
        # A [GQL query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
        # Corresponds to the JSON property `gqlQuery`
        # @return [Google::Apis::DatastoreV1beta3::GqlQuery]
        attr_accessor :gql_query
      
        # A partition ID identifies a grouping of entities. The grouping is always by
        # project and namespace, however the namespace ID may be empty. A partition ID
        # contains several dimensions: project ID and namespace ID. Partition dimensions:
        # - May be `""`. - Must be valid UTF-8 bytes. - Must have values that match
        # regex `[A-Za-z\d\.\-_]`1,100`` If the value of any dimension matches regex `__.
        # *__`, the partition is reserved/read-only. A reserved/read-only partition ID
        # is forbidden in certain documented contexts. Foreign partition IDs (in which
        # the project ID does not match the context project ID ) are discouraged. Reads
        # and writes of foreign partition IDs may fail if the project is not in an
        # active state.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DatastoreV1beta3::PartitionId]
        attr_accessor :partition_id
      
        # The set of arbitrarily nested property paths used to restrict an operation to
        # only a subset of properties in an entity.
        # Corresponds to the JSON property `propertyMask`
        # @return [Google::Apis::DatastoreV1beta3::PropertyMask]
        attr_accessor :property_mask
      
        # A query for entities. The query stages are executed in the following order: 1.
        # kind 2. filter 3. projection 4. order + start_cursor + end_cursor 5. offset 6.
        # limit 7. find_nearest
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::DatastoreV1beta3::Query]
        attr_accessor :query
      
        # The options shared by read requests.
        # Corresponds to the JSON property `readOptions`
        # @return [Google::Apis::DatastoreV1beta3::ReadOptions]
        attr_accessor :read_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explain_options = args[:explain_options] if args.key?(:explain_options)
          @gql_query = args[:gql_query] if args.key?(:gql_query)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @property_mask = args[:property_mask] if args.key?(:property_mask)
          @query = args[:query] if args.key?(:query)
          @read_options = args[:read_options] if args.key?(:read_options)
        end
      end
      
      # The response for Datastore.RunQuery.
      class RunQueryResponse
        include Google::Apis::Core::Hashable
      
        # A batch of results produced by a query.
        # Corresponds to the JSON property `batch`
        # @return [Google::Apis::DatastoreV1beta3::QueryResultBatch]
        attr_accessor :batch
      
        # Explain metrics for the query.
        # Corresponds to the JSON property `explainMetrics`
        # @return [Google::Apis::DatastoreV1beta3::ExplainMetrics]
        attr_accessor :explain_metrics
      
        # A query for entities. The query stages are executed in the following order: 1.
        # kind 2. filter 3. projection 4. order + start_cursor + end_cursor 5. offset 6.
        # limit 7. find_nearest
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::DatastoreV1beta3::Query]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch = args[:batch] if args.key?(:batch)
          @explain_metrics = args[:explain_metrics] if args.key?(:explain_metrics)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Sum of the values of the requested property. * Only numeric values will be
      # aggregated. All non-numeric values including `NULL` are skipped. * If the
      # aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754
      # standards. * If the aggregated value set is empty, returns 0. * Returns a 64-
      # bit integer if all aggregated numbers are integers and the sum result does not
      # overflow. Otherwise, the result is returned as a double. Note that even if all
      # the aggregated values are integers, the result is returned as a double if it
      # cannot fit within a 64-bit signed integer. When this occurs, the returned
      # value will lose precision. * When underflow occurs, floating-point aggregation
      # is non-deterministic. This means that running the same query repeatedly
      # without any changes to the underlying values could produce slightly different
      # results each time. In those cases, values should be stored as integers over
      # floating-point numbers.
      class Sum
        include Google::Apis::Core::Hashable
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DatastoreV1beta3::PropertyReference]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # Options for beginning a new transaction. Transactions can be created
      # explicitly with calls to Datastore.BeginTransaction or implicitly by setting
      # ReadOptions.new_transaction in read requests.
      class TransactionOptions
        include Google::Apis::Core::Hashable
      
        # Options specific to read-only transactions.
        # Corresponds to the JSON property `readOnly`
        # @return [Google::Apis::DatastoreV1beta3::ReadOnly]
        attr_accessor :read_only
      
        # Options specific to read / write transactions.
        # Corresponds to the JSON property `readWrite`
        # @return [Google::Apis::DatastoreV1beta3::ReadWrite]
        attr_accessor :read_write
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_only = args[:read_only] if args.key?(:read_only)
          @read_write = args[:read_write] if args.key?(:read_write)
        end
      end
      
      # A message that can hold any of the supported value types and associated
      # metadata.
      class Value
        include Google::Apis::Core::Hashable
      
        # An array value.
        # Corresponds to the JSON property `arrayValue`
        # @return [Google::Apis::DatastoreV1beta3::ArrayValue]
        attr_accessor :array_value
      
        # A blob value. May have at most 1,000,000 bytes. When `exclude_from_indexes` is
        # false, may have at most 1500 bytes. In JSON requests, must be base64-encoded.
        # Corresponds to the JSON property `blobValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_value
      
        # A boolean value.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # A double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # A Datastore data object. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `entityValue`
        # @return [Google::Apis::DatastoreV1beta3::Entity]
        attr_accessor :entity_value
      
        # If the value should be excluded from all indexes including those defined
        # explicitly.
        # Corresponds to the JSON property `excludeFromIndexes`
        # @return [Boolean]
        attr_accessor :exclude_from_indexes
        alias_method :exclude_from_indexes?, :exclude_from_indexes
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `geoPointValue`
        # @return [Google::Apis::DatastoreV1beta3::LatLng]
        attr_accessor :geo_point_value
      
        # An integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # A unique identifier for an entity. If a key's partition ID or any of its path
        # kinds or names are reserved/read-only, the key is reserved/read-only. A
        # reserved/read-only key is forbidden in certain documented contexts.
        # Corresponds to the JSON property `keyValue`
        # @return [Google::Apis::DatastoreV1beta3::Key]
        attr_accessor :key_value
      
        # The `meaning` field should only be populated for backwards compatibility.
        # Corresponds to the JSON property `meaning`
        # @return [Fixnum]
        attr_accessor :meaning
      
        # A null value.
        # Corresponds to the JSON property `nullValue`
        # @return [String]
        attr_accessor :null_value
      
        # A UTF-8 encoded string value. When `exclude_from_indexes` is false (it is
        # indexed) , may have at most 1500 bytes. Otherwise, may be set to at most 1,000,
        # 000 bytes.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # A timestamp value. When stored in the Datastore, precise only to microseconds;
        # any additional precision is rounded down.
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_value = args[:array_value] if args.key?(:array_value)
          @blob_value = args[:blob_value] if args.key?(:blob_value)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @entity_value = args[:entity_value] if args.key?(:entity_value)
          @exclude_from_indexes = args[:exclude_from_indexes] if args.key?(:exclude_from_indexes)
          @geo_point_value = args[:geo_point_value] if args.key?(:geo_point_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @key_value = args[:key_value] if args.key?(:key_value)
          @meaning = args[:meaning] if args.key?(:meaning)
          @null_value = args[:null_value] if args.key?(:null_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
    end
  end
end
