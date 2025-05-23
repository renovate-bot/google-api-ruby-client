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
    module ArtifactregistryV1beta2
      
      # A detailed representation of an Apt artifact. Information in the record is
      # derived from the archive's control file. See https://www.debian.org/doc/debian-
      # policy/ch-controlfields.html
      class AptArtifact
        include Google::Apis::Core::Hashable
      
        # Output only. Operating system architecture of the artifact.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Output only. Repository component of the artifact.
        # Corresponds to the JSON property `component`
        # @return [String]
        attr_accessor :component
      
        # Output only. Contents of the artifact's control metadata file.
        # Corresponds to the JSON property `controlFile`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :control_file
      
        # Output only. The Artifact Registry resource name of the artifact.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The Apt package name of the artifact.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Output only. An artifact is a binary or source package.
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @component = args[:component] if args.key?(:component)
          @control_file = args[:control_file] if args.key?(:control_file)
          @name = args[:name] if args.key?(:name)
          @package_name = args[:package_name] if args.key?(:package_name)
          @package_type = args[:package_type] if args.key?(:package_type)
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
        # @return [Google::Apis::ArtifactregistryV1beta2::Expr]
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
      
      # The response to download a file.
      class DownloadFileResponse
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
      
      # Files store content that is potentially associated with Packages or Versions.
      class GoogleDevtoolsArtifactregistryV1beta2File
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the File was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The hashes of the file content.
        # Corresponds to the JSON property `hashes`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::HashProp>]
        attr_accessor :hashes
      
        # The name of the file, for example: `projects/p1/locations/us-central1/
        # repositories/repo1/files/a%2Fb%2Fc.txt`. If the file ID part contains slashes,
        # they are escaped.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the Package or Version that owns this file, if any.
        # Corresponds to the JSON property `owner`
        # @return [String]
        attr_accessor :owner
      
        # The size of the File in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. The time when the File was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hashes = args[:hashes] if args.key?(:hashes)
          @name = args[:name] if args.key?(:name)
          @owner = args[:owner] if args.key?(:owner)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A hash of file content.
      class HashProp
        include Google::Apis::Core::Hashable
      
        # The algorithm used to compute the hash value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The hash value.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Error information explaining why a package was not imported.
      class ImportAptArtifactsErrorInfo
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ArtifactregistryV1beta2::Status]
        attr_accessor :error
      
        # Google Cloud Storage location where the artifacts currently reside.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsGcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # Google Cloud Storage location where the artifacts currently reside.
      class ImportAptArtifactsGcsSource
        include Google::Apis::Core::Hashable
      
        # Cloud Storage paths URI (e.g., gs://my_bucket//my_object).
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        # Supports URI wildcards for matching multiple objects from a single URI.
        # Corresponds to the JSON property `useWildcards`
        # @return [Boolean]
        attr_accessor :use_wildcards
        alias_method :use_wildcards?, :use_wildcards
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uris = args[:uris] if args.key?(:uris)
          @use_wildcards = args[:use_wildcards] if args.key?(:use_wildcards)
        end
      end
      
      # The operation metadata for importing artifacts.
      class ImportAptArtifactsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request to import new apt artifacts.
      class ImportAptArtifactsRequest
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage location where the artifacts currently reside.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsGcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # The response message from importing APT artifacts.
      class ImportAptArtifactsResponse
        include Google::Apis::Core::Hashable
      
        # The Apt artifacts imported.
        # Corresponds to the JSON property `aptArtifacts`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::AptArtifact>]
        attr_accessor :apt_artifacts
      
        # Detailed error info for packages that were not imported.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsErrorInfo>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt_artifacts = args[:apt_artifacts] if args.key?(:apt_artifacts)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # Error information explaining why a package was not imported.
      class ImportYumArtifactsErrorInfo
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ArtifactregistryV1beta2::Status]
        attr_accessor :error
      
        # Google Cloud Storage location where the artifacts currently reside.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsGcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # Google Cloud Storage location where the artifacts currently reside.
      class ImportYumArtifactsGcsSource
        include Google::Apis::Core::Hashable
      
        # Cloud Storage paths URI (e.g., gs://my_bucket//my_object).
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        # Supports URI wildcards for matching multiple objects from a single URI.
        # Corresponds to the JSON property `useWildcards`
        # @return [Boolean]
        attr_accessor :use_wildcards
        alias_method :use_wildcards?, :use_wildcards
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uris = args[:uris] if args.key?(:uris)
          @use_wildcards = args[:use_wildcards] if args.key?(:use_wildcards)
        end
      end
      
      # The operation metadata for importing artifacts.
      class ImportYumArtifactsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request to import new yum artifacts.
      class ImportYumArtifactsRequest
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage location where the artifacts currently reside.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsGcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # The response message from importing YUM artifacts.
      class ImportYumArtifactsResponse
        include Google::Apis::Core::Hashable
      
        # Detailed error info for packages that were not imported.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsErrorInfo>]
        attr_accessor :errors
      
        # The yum artifacts imported.
        # Corresponds to the JSON property `yumArtifacts`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::YumArtifact>]
        attr_accessor :yum_artifacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @yum_artifacts = args[:yum_artifacts] if args.key?(:yum_artifacts)
        end
      end
      
      # The response from listing files.
      class ListFilesResponse
        include Google::Apis::Core::Hashable
      
        # The files returned.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::GoogleDevtoolsArtifactregistryV1beta2File>]
        attr_accessor :files
      
        # The token to retrieve the next page of files, or empty if there are no more
        # files to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response from listing packages.
      class ListPackagesResponse
        include Google::Apis::Core::Hashable
      
        # The token to retrieve the next page of packages, or empty if there are no more
        # packages to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The packages returned.
        # Corresponds to the JSON property `packages`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::Package>]
        attr_accessor :packages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @packages = args[:packages] if args.key?(:packages)
        end
      end
      
      # The response from listing repositories.
      class ListRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # The token to retrieve the next page of repositories, or empty if there are no
        # more repositories to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The repositories returned.
        # Corresponds to the JSON property `repositories`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::Repository>]
        attr_accessor :repositories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @repositories = args[:repositories] if args.key?(:repositories)
        end
      end
      
      # The response from listing tags.
      class ListTagsResponse
        include Google::Apis::Core::Hashable
      
        # The token to retrieve the next page of tags, or empty if there are no more
        # tags to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The tags returned.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # The response from listing versions.
      class ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The token to retrieve the next page of versions, or empty if there are no more
        # versions to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The versions returned.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::Version>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # MavenRepositoryConfig is maven related repository details. Provides additional
      # configuration details for repositories of the maven format type.
      class MavenRepositoryConfig
        include Google::Apis::Core::Hashable
      
        # The repository with this flag will allow publishing the same snapshot versions.
        # Corresponds to the JSON property `allowSnapshotOverwrites`
        # @return [Boolean]
        attr_accessor :allow_snapshot_overwrites
        alias_method :allow_snapshot_overwrites?, :allow_snapshot_overwrites
      
        # Version policy defines the versions that the registry will accept.
        # Corresponds to the JSON property `versionPolicy`
        # @return [String]
        attr_accessor :version_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_snapshot_overwrites = args[:allow_snapshot_overwrites] if args.key?(:allow_snapshot_overwrites)
          @version_policy = args[:version_policy] if args.key?(:version_policy)
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
        # @return [Google::Apis::ArtifactregistryV1beta2::Status]
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
      
      # Metadata type for longrunning-operations, currently empty.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Packages are named collections of versions.
      class Package
        include Google::Apis::Core::Hashable
      
        # Optional. Client specified annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # The time when the package was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The display name of the package.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The name of the package, for example: `projects/p1/locations/us-central1/
        # repositories/repo1/packages/pkg1`. If the package ID part contains slashes,
        # the slashes are escaped.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time when the package was last updated. This includes publishing a new
        # version of the package.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
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
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::Binding>]
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
      
      # The Artifact Registry settings that apply to a Project.
      class ProjectSettings
        include Google::Apis::Core::Hashable
      
        # The redirection state of the legacy repositories in this project.
        # Corresponds to the JSON property `legacyRedirectionState`
        # @return [String]
        attr_accessor :legacy_redirection_state
      
        # The name of the project's settings. Always of the form: projects/`project-id`/
        # projectSettings In update request: never set In response: always set
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The percentage of pull traffic to redirect from GCR to AR when using partial
        # redirection.
        # Corresponds to the JSON property `pullPercent`
        # @return [Fixnum]
        attr_accessor :pull_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @legacy_redirection_state = args[:legacy_redirection_state] if args.key?(:legacy_redirection_state)
          @name = args[:name] if args.key?(:name)
          @pull_percent = args[:pull_percent] if args.key?(:pull_percent)
        end
      end
      
      # A Repository for storing artifacts with a specific format.
      class Repository
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the repository was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The user-provided description of the repository.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The format of packages that are stored in the repository.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The Cloud KMS resource name of the customer managed encryption key that's used
        # to encrypt the contents of the Repository. Has the form: `projects/my-project/
        # locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be
        # changed after the Repository has been created.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Labels with user-defined metadata. This field may contain up to 64 entries.
        # Label keys and values may be no longer than 63 characters. Label keys must
        # begin with a lowercase letter and may only contain lowercase letters, numeric
        # characters, underscores, and dashes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # MavenRepositoryConfig is maven related repository details. Provides additional
        # configuration details for repositories of the maven format type.
        # Corresponds to the JSON property `mavenConfig`
        # @return [Google::Apis::ArtifactregistryV1beta2::MavenRepositoryConfig]
        attr_accessor :maven_config
      
        # The name of the repository, for example: `projects/p1/locations/us-central1/
        # repositories/repo1`. For each location in a project, repository names must be
        # unique.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Whether or not this repository satisfies PZI.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Whether or not this repository satisfies PZS.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The size, in bytes, of all artifact storage in this repository.
        # Repositories that are generally available or in public preview use this to
        # calculate storage costs.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. The time when the repository was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @format = args[:format] if args.key?(:format)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @labels = args[:labels] if args.key?(:labels)
          @maven_config = args[:maven_config] if args.key?(:maven_config)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @update_time = args[:update_time] if args.key?(:update_time)
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
        # @return [Google::Apis::ArtifactregistryV1beta2::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
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
      
      # Tags point to a version and represent an alternative name that can be used to
      # access the version.
      class Tag
        include Google::Apis::Core::Hashable
      
        # The name of the tag, for example: "projects/p1/locations/us-central1/
        # repositories/repo1/packages/pkg1/tags/tag1". If the package part contains
        # slashes, the slashes are escaped. The tag part can only have characters in [a-
        # zA-Z0-9\-._~:@], anything else must be URL encoded.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the version the tag refers to, for example: `projects/p1/locations/
        # us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811` If the
        # package or version ID parts contain slashes, the slashes are escaped.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
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
      
      # The response to upload an artifact.
      class UploadAptArtifactMediaResponse
        include Google::Apis::Core::Hashable
      
        # This resource represents a long-running operation that is the result of a
        # network API call.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::ArtifactregistryV1beta2::Operation]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # The operation metadata for uploading artifacts.
      class UploadAptArtifactMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request to upload an artifact.
      class UploadAptArtifactRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response of the completed artifact upload operation. This response is
      # contained in the Operation and available to users.
      class UploadAptArtifactResponse
        include Google::Apis::Core::Hashable
      
        # The Apt artifacts updated.
        # Corresponds to the JSON property `aptArtifacts`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::AptArtifact>]
        attr_accessor :apt_artifacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt_artifacts = args[:apt_artifacts] if args.key?(:apt_artifacts)
        end
      end
      
      # The response to upload an artifact.
      class UploadYumArtifactMediaResponse
        include Google::Apis::Core::Hashable
      
        # This resource represents a long-running operation that is the result of a
        # network API call.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::ArtifactregistryV1beta2::Operation]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # The operation metadata for uploading artifacts.
      class UploadYumArtifactMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request to upload an artifact.
      class UploadYumArtifactRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response of the completed artifact upload operation. This response is
      # contained in the Operation and available to users.
      class UploadYumArtifactResponse
        include Google::Apis::Core::Hashable
      
        # The Yum artifacts updated.
        # Corresponds to the JSON property `yumArtifacts`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::YumArtifact>]
        attr_accessor :yum_artifacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @yum_artifacts = args[:yum_artifacts] if args.key?(:yum_artifacts)
        end
      end
      
      # The body of a version resource. A version resource represents a collection of
      # components, such as files and other data. This may correspond to a version in
      # many package management schemes.
      class Version
        include Google::Apis::Core::Hashable
      
        # The time when the version was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the version, as specified in its metadata.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Repository-specific Metadata stored against this version. The
        # fields returned are defined by the underlying repository-specific resource.
        # Currently, the resources could be: DockerImage MavenArtifact
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The name of the version, for example: `projects/p1/locations/us-central1/
        # repositories/repo1/packages/pkg1/versions/art1`. If the package or version ID
        # parts contain slashes, the slashes are escaped.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A list of related tags. Will contain up to 100 tags that
        # reference this version.
        # Corresponds to the JSON property `relatedTags`
        # @return [Array<Google::Apis::ArtifactregistryV1beta2::Tag>]
        attr_accessor :related_tags
      
        # The time when the version was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @related_tags = args[:related_tags] if args.key?(:related_tags)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A detailed representation of a Yum artifact.
      class YumArtifact
        include Google::Apis::Core::Hashable
      
        # Output only. Operating system architecture of the artifact.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Output only. The Artifact Registry resource name of the artifact.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The yum package name of the artifact.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Output only. An artifact is a binary or source package.
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @name = args[:name] if args.key?(:name)
          @package_name = args[:package_name] if args.key?(:package_name)
          @package_type = args[:package_type] if args.key?(:package_type)
        end
      end
    end
  end
end
