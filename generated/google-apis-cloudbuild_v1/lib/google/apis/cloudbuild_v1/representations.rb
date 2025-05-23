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
    module CloudbuildV1
      
      class ApprovalConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApprovalResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproveBuildRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Artifacts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateGitLabConnectedRepositoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateGitLabConnectedRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateGitLabConnectedRepositoriesResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketServerConnectedRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketServerRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketServerRepositoryId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketServerSecrets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketServerTriggerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildApproval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuiltImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelBuildRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectedRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBitbucketServerConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBitbucketServerConnectedRepositoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateGitHubEnterpriseConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateGitLabConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateGitLabConnectedRepositoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateWorkerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteBitbucketServerConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteGitHubEnterpriseConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteGitLabConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteWorkerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dependency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeveloperConnectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeveloperConnectEventConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitFileSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitHubEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitHubEnterpriseSecrets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitHubEventsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabConnectedRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabEventsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabRepositoryId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabSecrets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitRepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitSourceDependency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitSourceRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoModule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InlineSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBitbucketServerConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBitbucketServerRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBuildTriggersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBuildsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGitLabConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGitLabRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGithubEnterpriseConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkerPoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NpmPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoolOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivatePoolV1Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateServiceConnect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessAppManifestCallbackOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullRequestFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReceiveTriggerWebhookResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveBitbucketServerConnectedRepositoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveGitLabConnectedRepositoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepositoryEventConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Results
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryBuildRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunBuildTriggerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretManagerSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Secrets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageSourceManifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateBitbucketServerConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateGitHubEnterpriseConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateGitLabConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateWorkerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadedGoModule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadedMavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadedNpmPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadedPythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Warning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebhookConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApprovalConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_required, as: 'approvalRequired'
        end
      end
      
      class ApprovalResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_time, as: 'approvalTime'
          property :approver_account, as: 'approverAccount'
          property :comment, as: 'comment'
          property :decision, as: 'decision'
          property :url, as: 'url'
        end
      end
      
      class ApproveBuildRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_result, as: 'approvalResult', class: Google::Apis::CloudbuildV1::ApprovalResult, decorator: Google::Apis::CloudbuildV1::ApprovalResult::Representation
      
        end
      end
      
      class ArtifactObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          collection :paths, as: 'paths'
          property :timing, as: 'timing', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
        end
      end
      
      class ArtifactResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::CloudbuildV1::FileHashes, decorator: Google::Apis::CloudbuildV1::FileHashes::Representation
      
          property :location, as: 'location'
        end
      end
      
      class Artifacts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :go_modules, as: 'goModules', class: Google::Apis::CloudbuildV1::GoModule, decorator: Google::Apis::CloudbuildV1::GoModule::Representation
      
          collection :images, as: 'images'
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::CloudbuildV1::MavenArtifact, decorator: Google::Apis::CloudbuildV1::MavenArtifact::Representation
      
          collection :npm_packages, as: 'npmPackages', class: Google::Apis::CloudbuildV1::NpmPackage, decorator: Google::Apis::CloudbuildV1::NpmPackage::Representation
      
          property :objects, as: 'objects', class: Google::Apis::CloudbuildV1::ArtifactObjects, decorator: Google::Apis::CloudbuildV1::ArtifactObjects::Representation
      
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::CloudbuildV1::PythonPackage, decorator: Google::Apis::CloudbuildV1::PythonPackage::Representation
      
        end
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::CloudbuildV1::CreateBitbucketServerConnectedRepositoryRequest, decorator: Google::Apis::CloudbuildV1::CreateBitbucketServerConnectedRepositoryRequest::Representation
      
        end
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bitbucket_server_connected_repositories, as: 'bitbucketServerConnectedRepositories', class: Google::Apis::CloudbuildV1::BitbucketServerConnectedRepository, decorator: Google::Apis::CloudbuildV1::BitbucketServerConnectedRepository::Representation
      
        end
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :config, as: 'config'
          property :create_time, as: 'createTime'
        end
      end
      
      class BatchCreateGitLabConnectedRepositoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::CloudbuildV1::CreateGitLabConnectedRepositoryRequest, decorator: Google::Apis::CloudbuildV1::CreateGitLabConnectedRepositoryRequest::Representation
      
        end
      end
      
      class BatchCreateGitLabConnectedRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gitlab_connected_repositories, as: 'gitlabConnectedRepositories', class: Google::Apis::CloudbuildV1::GitLabConnectedRepository, decorator: Google::Apis::CloudbuildV1::GitLabConnectedRepository::Representation
      
        end
      end
      
      class BatchCreateGitLabConnectedRepositoriesResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :config, as: 'config'
          property :create_time, as: 'createTime'
        end
      end
      
      class BitbucketServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key, as: 'apiKey'
          collection :connected_repositories, as: 'connectedRepositories', class: Google::Apis::CloudbuildV1::BitbucketServerRepositoryId, decorator: Google::Apis::CloudbuildV1::BitbucketServerRepositoryId::Representation
      
          property :create_time, as: 'createTime'
          property :host_uri, as: 'hostUri'
          property :name, as: 'name'
          property :peered_network, as: 'peeredNetwork'
          property :peered_network_ip_range, as: 'peeredNetworkIpRange'
          property :secrets, as: 'secrets', class: Google::Apis::CloudbuildV1::BitbucketServerSecrets, decorator: Google::Apis::CloudbuildV1::BitbucketServerSecrets::Representation
      
          property :ssl_ca, as: 'sslCa'
          property :username, as: 'username'
          property :webhook_key, as: 'webhookKey'
        end
      end
      
      class BitbucketServerConnectedRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :repo, as: 'repo', class: Google::Apis::CloudbuildV1::BitbucketServerRepositoryId, decorator: Google::Apis::CloudbuildV1::BitbucketServerRepositoryId::Representation
      
          property :status, as: 'status', class: Google::Apis::CloudbuildV1::Status, decorator: Google::Apis::CloudbuildV1::Status::Representation
      
        end
      end
      
      class BitbucketServerRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :browse_uri, as: 'browseUri'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :repo_id, as: 'repoId', class: Google::Apis::CloudbuildV1::BitbucketServerRepositoryId, decorator: Google::Apis::CloudbuildV1::BitbucketServerRepositoryId::Representation
      
        end
      end
      
      class BitbucketServerRepositoryId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_key, as: 'projectKey'
          property :repo_slug, as: 'repoSlug'
          property :webhook_id, as: 'webhookId'
        end
      end
      
      class BitbucketServerSecrets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_access_token_version_name, as: 'adminAccessTokenVersionName'
          property :read_access_token_version_name, as: 'readAccessTokenVersionName'
          property :webhook_secret_version_name, as: 'webhookSecretVersionName'
        end
      end
      
      class BitbucketServerTriggerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig', class: Google::Apis::CloudbuildV1::BitbucketServerConfig, decorator: Google::Apis::CloudbuildV1::BitbucketServerConfig::Representation
      
          property :bitbucket_server_config_resource, as: 'bitbucketServerConfigResource'
          property :project_key, as: 'projectKey'
          property :pull_request, as: 'pullRequest', class: Google::Apis::CloudbuildV1::PullRequestFilter, decorator: Google::Apis::CloudbuildV1::PullRequestFilter::Representation
      
          property :push, as: 'push', class: Google::Apis::CloudbuildV1::PushFilter, decorator: Google::Apis::CloudbuildV1::PushFilter::Representation
      
          property :repo_slug, as: 'repoSlug'
        end
      end
      
      class Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval, as: 'approval', class: Google::Apis::CloudbuildV1::BuildApproval, decorator: Google::Apis::CloudbuildV1::BuildApproval::Representation
      
          property :artifacts, as: 'artifacts', class: Google::Apis::CloudbuildV1::Artifacts, decorator: Google::Apis::CloudbuildV1::Artifacts::Representation
      
          property :available_secrets, as: 'availableSecrets', class: Google::Apis::CloudbuildV1::Secrets, decorator: Google::Apis::CloudbuildV1::Secrets::Representation
      
          property :build_trigger_id, as: 'buildTriggerId'
          property :create_time, as: 'createTime'
          collection :dependencies, as: 'dependencies', class: Google::Apis::CloudbuildV1::Dependency, decorator: Google::Apis::CloudbuildV1::Dependency::Representation
      
          property :failure_info, as: 'failureInfo', class: Google::Apis::CloudbuildV1::FailureInfo, decorator: Google::Apis::CloudbuildV1::FailureInfo::Representation
      
          property :finish_time, as: 'finishTime'
          property :git_config, as: 'gitConfig', class: Google::Apis::CloudbuildV1::GitConfig, decorator: Google::Apis::CloudbuildV1::GitConfig::Representation
      
          property :id, as: 'id'
          collection :images, as: 'images'
          property :log_url, as: 'logUrl'
          property :logs_bucket, as: 'logsBucket'
          property :name, as: 'name'
          property :options, as: 'options', class: Google::Apis::CloudbuildV1::BuildOptions, decorator: Google::Apis::CloudbuildV1::BuildOptions::Representation
      
          property :project_id, as: 'projectId'
          property :queue_ttl, as: 'queueTtl'
          property :results, as: 'results', class: Google::Apis::CloudbuildV1::Results, decorator: Google::Apis::CloudbuildV1::Results::Representation
      
          collection :secrets, as: 'secrets', class: Google::Apis::CloudbuildV1::Secret, decorator: Google::Apis::CloudbuildV1::Secret::Representation
      
          property :service_account, as: 'serviceAccount'
          property :source, as: 'source', class: Google::Apis::CloudbuildV1::Source, decorator: Google::Apis::CloudbuildV1::Source::Representation
      
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::CloudbuildV1::SourceProvenance, decorator: Google::Apis::CloudbuildV1::SourceProvenance::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_detail, as: 'statusDetail'
          collection :steps, as: 'steps', class: Google::Apis::CloudbuildV1::BuildStep, decorator: Google::Apis::CloudbuildV1::BuildStep::Representation
      
          hash :substitutions, as: 'substitutions'
          collection :tags, as: 'tags'
          property :timeout, as: 'timeout'
          hash :timing, as: 'timing', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::CloudbuildV1::Warning, decorator: Google::Apis::CloudbuildV1::Warning::Representation
      
        end
      end
      
      class BuildApproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::CloudbuildV1::ApprovalConfig, decorator: Google::Apis::CloudbuildV1::ApprovalConfig::Representation
      
          property :result, as: 'result', class: Google::Apis::CloudbuildV1::ApprovalResult, decorator: Google::Apis::CloudbuildV1::ApprovalResult::Representation
      
          property :state, as: 'state'
        end
      end
      
      class BuildOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
        end
      end
      
      class BuildOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automap_substitutions, as: 'automapSubstitutions'
          property :default_logs_bucket_behavior, as: 'defaultLogsBucketBehavior'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :dynamic_substitutions, as: 'dynamicSubstitutions'
          property :enable_structured_logging, as: 'enableStructuredLogging'
          collection :env, as: 'env'
          property :log_streaming_option, as: 'logStreamingOption'
          property :logging, as: 'logging'
          property :machine_type, as: 'machineType'
          property :pool, as: 'pool', class: Google::Apis::CloudbuildV1::PoolOption, decorator: Google::Apis::CloudbuildV1::PoolOption::Representation
      
          property :pubsub_topic, as: 'pubsubTopic'
          property :requested_verify_option, as: 'requestedVerifyOption'
          collection :secret_env, as: 'secretEnv'
          collection :source_provenance_hash, as: 'sourceProvenanceHash'
          property :substitution_option, as: 'substitutionOption'
          collection :volumes, as: 'volumes', class: Google::Apis::CloudbuildV1::Volume, decorator: Google::Apis::CloudbuildV1::Volume::Representation
      
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_exit_codes, as: 'allowExitCodes'
          property :allow_failure, as: 'allowFailure'
          collection :args, as: 'args'
          property :automap_substitutions, as: 'automapSubstitutions'
          property :dir, as: 'dir'
          property :entrypoint, as: 'entrypoint'
          collection :env, as: 'env'
          property :exit_code, as: 'exitCode'
          property :id, as: 'id'
          property :name, as: 'name'
          property :pull_timing, as: 'pullTiming', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::CloudbuildV1::Volume, decorator: Google::Apis::CloudbuildV1::Volume::Representation
      
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class BuildTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_config, as: 'approvalConfig', class: Google::Apis::CloudbuildV1::ApprovalConfig, decorator: Google::Apis::CloudbuildV1::ApprovalConfig::Representation
      
          property :autodetect, as: 'autodetect'
          property :bitbucket_server_trigger_config, as: 'bitbucketServerTriggerConfig', class: Google::Apis::CloudbuildV1::BitbucketServerTriggerConfig, decorator: Google::Apis::CloudbuildV1::BitbucketServerTriggerConfig::Representation
      
          property :build, as: 'build', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :developer_connect_event_config, as: 'developerConnectEventConfig', class: Google::Apis::CloudbuildV1::DeveloperConnectEventConfig, decorator: Google::Apis::CloudbuildV1::DeveloperConnectEventConfig::Representation
      
          property :disabled, as: 'disabled'
          property :event_type, as: 'eventType'
          property :filename, as: 'filename'
          property :filter, as: 'filter'
          property :git_file_source, as: 'gitFileSource', class: Google::Apis::CloudbuildV1::GitFileSource, decorator: Google::Apis::CloudbuildV1::GitFileSource::Representation
      
          property :github, as: 'github', class: Google::Apis::CloudbuildV1::GitHubEventsConfig, decorator: Google::Apis::CloudbuildV1::GitHubEventsConfig::Representation
      
          property :gitlab_enterprise_events_config, as: 'gitlabEnterpriseEventsConfig', class: Google::Apis::CloudbuildV1::GitLabEventsConfig, decorator: Google::Apis::CloudbuildV1::GitLabEventsConfig::Representation
      
          property :id, as: 'id'
          collection :ignored_files, as: 'ignoredFiles'
          property :include_build_logs, as: 'includeBuildLogs'
          collection :included_files, as: 'includedFiles'
          property :name, as: 'name'
          property :pubsub_config, as: 'pubsubConfig', class: Google::Apis::CloudbuildV1::PubsubConfig, decorator: Google::Apis::CloudbuildV1::PubsubConfig::Representation
      
          property :repository_event_config, as: 'repositoryEventConfig', class: Google::Apis::CloudbuildV1::RepositoryEventConfig, decorator: Google::Apis::CloudbuildV1::RepositoryEventConfig::Representation
      
          property :resource_name, as: 'resourceName'
          property :service_account, as: 'serviceAccount'
          property :source_to_build, as: 'sourceToBuild', class: Google::Apis::CloudbuildV1::GitRepoSource, decorator: Google::Apis::CloudbuildV1::GitRepoSource::Representation
      
          hash :substitutions, as: 'substitutions'
          collection :tags, as: 'tags'
          property :trigger_template, as: 'triggerTemplate', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
          property :webhook_config, as: 'webhookConfig', class: Google::Apis::CloudbuildV1::WebhookConfig, decorator: Google::Apis::CloudbuildV1::WebhookConfig::Representation
      
        end
      end
      
      class BuiltImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :name, as: 'name'
          property :push_timing, as: 'pushTiming', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
        end
      end
      
      class CancelBuildRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConnectedRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dir, as: 'dir'
          property :repository, as: 'repository'
          property :revision, as: 'revision'
        end
      end
      
      class CreateBitbucketServerConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
        end
      end
      
      class CreateBitbucketServerConnectedRepositoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_connected_repository, as: 'bitbucketServerConnectedRepository', class: Google::Apis::CloudbuildV1::BitbucketServerConnectedRepository, decorator: Google::Apis::CloudbuildV1::BitbucketServerConnectedRepository::Representation
      
          property :parent, as: 'parent'
        end
      end
      
      class CreateGitHubEnterpriseConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
        end
      end
      
      class CreateGitLabConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :gitlab_config, as: 'gitlabConfig'
        end
      end
      
      class CreateGitLabConnectedRepositoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gitlab_connected_repository, as: 'gitlabConnectedRepository', class: Google::Apis::CloudbuildV1::GitLabConnectedRepository, decorator: Google::Apis::CloudbuildV1::GitLabConnectedRepository::Representation
      
          property :parent, as: 'parent'
        end
      end
      
      class CreateWorkerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class DefaultServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class DeleteBitbucketServerConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
        end
      end
      
      class DeleteGitHubEnterpriseConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
        end
      end
      
      class DeleteGitLabConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :gitlab_config, as: 'gitlabConfig'
        end
      end
      
      class DeleteWorkerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class Dependency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :empty, as: 'empty'
          property :git_source, as: 'gitSource', class: Google::Apis::CloudbuildV1::GitSourceDependency, decorator: Google::Apis::CloudbuildV1::GitSourceDependency::Representation
      
        end
      end
      
      class DeveloperConnectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dir, as: 'dir'
          property :git_repository_link, as: 'gitRepositoryLink'
          property :revision, as: 'revision'
        end
      end
      
      class DeveloperConnectEventConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :git_repository_link, as: 'gitRepositoryLink'
          property :git_repository_link_type, as: 'gitRepositoryLinkType'
          property :pull_request, as: 'pullRequest', class: Google::Apis::CloudbuildV1::PullRequestFilter, decorator: Google::Apis::CloudbuildV1::PullRequestFilter::Representation
      
          property :push, as: 'push', class: Google::Apis::CloudbuildV1::PushFilter, decorator: Google::Apis::CloudbuildV1::PushFilter::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :type, as: 'type'
        end
      end
      
      class FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::CloudbuildV1::HashProp, decorator: Google::Apis::CloudbuildV1::HashProp::Representation
      
        end
      end
      
      class GitConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http, as: 'http', class: Google::Apis::CloudbuildV1::HttpConfig, decorator: Google::Apis::CloudbuildV1::HttpConfig::Representation
      
        end
      end
      
      class GitFileSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
          property :path, as: 'path'
          property :repo_type, as: 'repoType'
          property :repository, as: 'repository'
          property :revision, as: 'revision'
          property :uri, as: 'uri'
        end
      end
      
      class GitHubEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, :numeric_string => true, as: 'appId'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :host_url, as: 'hostUrl'
          property :name, as: 'name'
          property :peered_network, as: 'peeredNetwork'
          property :secrets, as: 'secrets', class: Google::Apis::CloudbuildV1::GitHubEnterpriseSecrets, decorator: Google::Apis::CloudbuildV1::GitHubEnterpriseSecrets::Representation
      
          property :ssl_ca, as: 'sslCa'
          property :webhook_key, as: 'webhookKey'
        end
      end
      
      class GitHubEnterpriseSecrets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth_client_id_name, as: 'oauthClientIdName'
          property :oauth_client_id_version_name, as: 'oauthClientIdVersionName'
          property :oauth_secret_name, as: 'oauthSecretName'
          property :oauth_secret_version_name, as: 'oauthSecretVersionName'
          property :private_key_name, as: 'privateKeyName'
          property :private_key_version_name, as: 'privateKeyVersionName'
          property :webhook_secret_name, as: 'webhookSecretName'
          property :webhook_secret_version_name, as: 'webhookSecretVersionName'
        end
      end
      
      class GitHubEventsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enterprise_config_resource_name, as: 'enterpriseConfigResourceName'
          property :installation_id, :numeric_string => true, as: 'installationId'
          property :name, as: 'name'
          property :owner, as: 'owner'
          property :pull_request, as: 'pullRequest', class: Google::Apis::CloudbuildV1::PullRequestFilter, decorator: Google::Apis::CloudbuildV1::PullRequestFilter::Representation
      
          property :push, as: 'push', class: Google::Apis::CloudbuildV1::PushFilter, decorator: Google::Apis::CloudbuildV1::PushFilter::Representation
      
        end
      end
      
      class GitLabConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connected_repositories, as: 'connectedRepositories', class: Google::Apis::CloudbuildV1::GitLabRepositoryId, decorator: Google::Apis::CloudbuildV1::GitLabRepositoryId::Representation
      
          property :create_time, as: 'createTime'
          property :enterprise_config, as: 'enterpriseConfig', class: Google::Apis::CloudbuildV1::GitLabEnterpriseConfig, decorator: Google::Apis::CloudbuildV1::GitLabEnterpriseConfig::Representation
      
          property :name, as: 'name'
          property :secrets, as: 'secrets', class: Google::Apis::CloudbuildV1::GitLabSecrets, decorator: Google::Apis::CloudbuildV1::GitLabSecrets::Representation
      
          property :username, as: 'username'
          property :webhook_key, as: 'webhookKey'
        end
      end
      
      class GitLabConnectedRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :repo, as: 'repo', class: Google::Apis::CloudbuildV1::GitLabRepositoryId, decorator: Google::Apis::CloudbuildV1::GitLabRepositoryId::Representation
      
          property :status, as: 'status', class: Google::Apis::CloudbuildV1::Status, decorator: Google::Apis::CloudbuildV1::Status::Representation
      
        end
      end
      
      class GitLabEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_uri, as: 'hostUri'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::CloudbuildV1::ServiceDirectoryConfig, decorator: Google::Apis::CloudbuildV1::ServiceDirectoryConfig::Representation
      
          property :ssl_ca, as: 'sslCa'
        end
      end
      
      class GitLabEventsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gitlab_config, as: 'gitlabConfig', class: Google::Apis::CloudbuildV1::GitLabConfig, decorator: Google::Apis::CloudbuildV1::GitLabConfig::Representation
      
          property :gitlab_config_resource, as: 'gitlabConfigResource'
          property :project_namespace, as: 'projectNamespace'
          property :pull_request, as: 'pullRequest', class: Google::Apis::CloudbuildV1::PullRequestFilter, decorator: Google::Apis::CloudbuildV1::PullRequestFilter::Representation
      
          property :push, as: 'push', class: Google::Apis::CloudbuildV1::PushFilter, decorator: Google::Apis::CloudbuildV1::PushFilter::Representation
      
        end
      end
      
      class GitLabRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :browse_uri, as: 'browseUri'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :repository_id, as: 'repositoryId', class: Google::Apis::CloudbuildV1::GitLabRepositoryId, decorator: Google::Apis::CloudbuildV1::GitLabRepositoryId::Representation
      
        end
      end
      
      class GitLabRepositoryId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :webhook_id, as: 'webhookId'
        end
      end
      
      class GitLabSecrets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_access_token_version, as: 'apiAccessTokenVersion'
          property :api_key_version, as: 'apiKeyVersion'
          property :read_access_token_version, as: 'readAccessTokenVersion'
          property :webhook_secret_version, as: 'webhookSecretVersion'
        end
      end
      
      class GitRepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
          property :ref, as: 'ref'
          property :repo_type, as: 'repoType'
          property :repository, as: 'repository'
          property :uri, as: 'uri'
        end
      end
      
      class GitSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dir, as: 'dir'
          property :revision, as: 'revision'
          property :url, as: 'url'
        end
      end
      
      class GitSourceDependency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :depth, :numeric_string => true, as: 'depth'
          property :dest_path, as: 'destPath'
          property :recurse_submodules, as: 'recurseSubmodules'
          property :repository, as: 'repository', class: Google::Apis::CloudbuildV1::GitSourceRepository, decorator: Google::Apis::CloudbuildV1::GitSourceRepository::Representation
      
          property :revision, as: 'revision'
        end
      end
      
      class GitSourceRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :developer_connect, as: 'developerConnect'
          property :url, as: 'url'
        end
      end
      
      class GoModule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :module_path, as: 'modulePath'
          property :module_version, as: 'moduleVersion'
          property :repository_location, as: 'repositoryLocation'
          property :repository_name, as: 'repositoryName'
          property :repository_project_id, as: 'repositoryProjectId'
          property :source_path, as: 'sourcePath'
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class HttpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :proxy_secret_version_name, as: 'proxySecretVersionName'
        end
      end
      
      class InlineSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :env_map, as: 'envMap'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class ListBitbucketServerConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bitbucket_server_configs, as: 'bitbucketServerConfigs', class: Google::Apis::CloudbuildV1::BitbucketServerConfig, decorator: Google::Apis::CloudbuildV1::BitbucketServerConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBitbucketServerRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bitbucket_server_repositories, as: 'bitbucketServerRepositories', class: Google::Apis::CloudbuildV1::BitbucketServerRepository, decorator: Google::Apis::CloudbuildV1::BitbucketServerRepository::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBuildTriggersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :triggers, as: 'triggers', class: Google::Apis::CloudbuildV1::BuildTrigger, decorator: Google::Apis::CloudbuildV1::BuildTrigger::Representation
      
        end
      end
      
      class ListBuildsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :builds, as: 'builds', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGitLabConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gitlab_configs, as: 'gitlabConfigs', class: Google::Apis::CloudbuildV1::GitLabConfig, decorator: Google::Apis::CloudbuildV1::GitLabConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGitLabRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gitlab_repositories, as: 'gitlabRepositories', class: Google::Apis::CloudbuildV1::GitLabRepository, decorator: Google::Apis::CloudbuildV1::GitLabRepository::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGithubEnterpriseConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::CloudbuildV1::GitHubEnterpriseConfig, decorator: Google::Apis::CloudbuildV1::GitHubEnterpriseConfig::Representation
      
        end
      end
      
      class ListWorkerPoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :worker_pools, as: 'workerPools', class: Google::Apis::CloudbuildV1::WorkerPool, decorator: Google::Apis::CloudbuildV1::WorkerPool::Representation
      
        end
      end
      
      class MavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
          property :group_id, as: 'groupId'
          property :path, as: 'path'
          property :repository, as: 'repository'
          property :version, as: 'version'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :egress_option, as: 'egressOption'
          property :peered_network, as: 'peeredNetwork'
          property :peered_network_ip_range, as: 'peeredNetworkIpRange'
        end
      end
      
      class NpmPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_path, as: 'packagePath'
          property :repository, as: 'repository'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudbuildV1::Status, decorator: Google::Apis::CloudbuildV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PoolOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class PrivatePoolV1Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_config, as: 'networkConfig', class: Google::Apis::CloudbuildV1::NetworkConfig, decorator: Google::Apis::CloudbuildV1::NetworkConfig::Representation
      
          property :private_service_connect, as: 'privateServiceConnect', class: Google::Apis::CloudbuildV1::PrivateServiceConnect, decorator: Google::Apis::CloudbuildV1::PrivateServiceConnect::Representation
      
          property :worker_config, as: 'workerConfig', class: Google::Apis::CloudbuildV1::WorkerConfig, decorator: Google::Apis::CloudbuildV1::WorkerConfig::Representation
      
        end
      end
      
      class PrivateServiceConnect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_attachment, as: 'networkAttachment'
          property :public_ip_address_disabled, as: 'publicIpAddressDisabled'
          property :route_all_traffic, as: 'routeAllTraffic'
        end
      end
      
      class ProcessAppManifestCallbackOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
        end
      end
      
      class PubsubConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account_email, as: 'serviceAccountEmail'
          property :state, as: 'state'
          property :subscription, as: 'subscription'
          property :topic, as: 'topic'
        end
      end
      
      class PullRequestFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :comment_control, as: 'commentControl'
          property :invert_regex, as: 'invertRegex'
        end
      end
      
      class PushFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :invert_regex, as: 'invertRegex'
          property :tag, as: 'tag'
        end
      end
      
      class PythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths'
          property :repository, as: 'repository'
        end
      end
      
      class ReceiveTriggerWebhookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RemoveBitbucketServerConnectedRepositoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connected_repository, as: 'connectedRepository', class: Google::Apis::CloudbuildV1::BitbucketServerRepositoryId, decorator: Google::Apis::CloudbuildV1::BitbucketServerRepositoryId::Representation
      
        end
      end
      
      class RemoveGitLabConnectedRepositoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connected_repository, as: 'connectedRepository', class: Google::Apis::CloudbuildV1::GitLabRepositoryId, decorator: Google::Apis::CloudbuildV1::GitLabRepositoryId::Representation
      
        end
      end
      
      class RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_name, as: 'branchName'
          property :commit_sha, as: 'commitSha'
          property :dir, as: 'dir'
          property :invert_regex, as: 'invertRegex'
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
          hash :substitutions, as: 'substitutions'
          property :tag_name, as: 'tagName'
        end
      end
      
      class RepositoryEventConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pull_request, as: 'pullRequest', class: Google::Apis::CloudbuildV1::PullRequestFilter, decorator: Google::Apis::CloudbuildV1::PullRequestFilter::Representation
      
          property :push, as: 'push', class: Google::Apis::CloudbuildV1::PushFilter, decorator: Google::Apis::CloudbuildV1::PushFilter::Representation
      
          property :repository, as: 'repository'
          property :repository_type, as: 'repositoryType'
        end
      end
      
      class Results
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_manifest, as: 'artifactManifest'
          property :artifact_timing, as: 'artifactTiming', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
          collection :build_step_images, as: 'buildStepImages'
          collection :build_step_outputs, as: 'buildStepOutputs'
          collection :go_modules, as: 'goModules', class: Google::Apis::CloudbuildV1::UploadedGoModule, decorator: Google::Apis::CloudbuildV1::UploadedGoModule::Representation
      
          collection :images, as: 'images', class: Google::Apis::CloudbuildV1::BuiltImage, decorator: Google::Apis::CloudbuildV1::BuiltImage::Representation
      
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::CloudbuildV1::UploadedMavenArtifact, decorator: Google::Apis::CloudbuildV1::UploadedMavenArtifact::Representation
      
          collection :npm_packages, as: 'npmPackages', class: Google::Apis::CloudbuildV1::UploadedNpmPackage, decorator: Google::Apis::CloudbuildV1::UploadedNpmPackage::Representation
      
          property :num_artifacts, :numeric_string => true, as: 'numArtifacts'
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::CloudbuildV1::UploadedPythonPackage, decorator: Google::Apis::CloudbuildV1::UploadedPythonPackage::Representation
      
        end
      end
      
      class RetryBuildRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
        end
      end
      
      class RunBuildTriggerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :source, as: 'source', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
          property :trigger_id, as: 'triggerId'
        end
      end
      
      class Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          hash :secret_env, as: 'secretEnv'
        end
      end
      
      class SecretManagerSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :env, as: 'env'
          property :version_name, as: 'versionName'
        end
      end
      
      class Secrets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inline, as: 'inline', class: Google::Apis::CloudbuildV1::InlineSecret, decorator: Google::Apis::CloudbuildV1::InlineSecret::Representation
      
          collection :secret_manager, as: 'secretManager', class: Google::Apis::CloudbuildV1::SecretManagerSecret, decorator: Google::Apis::CloudbuildV1::SecretManagerSecret::Representation
      
        end
      end
      
      class ServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connected_repository, as: 'connectedRepository', class: Google::Apis::CloudbuildV1::ConnectedRepository, decorator: Google::Apis::CloudbuildV1::ConnectedRepository::Representation
      
          property :developer_connect_config, as: 'developerConnectConfig', class: Google::Apis::CloudbuildV1::DeveloperConnectConfig, decorator: Google::Apis::CloudbuildV1::DeveloperConnectConfig::Representation
      
          property :git_source, as: 'gitSource', class: Google::Apis::CloudbuildV1::GitSource, decorator: Google::Apis::CloudbuildV1::GitSource::Representation
      
          property :repo_source, as: 'repoSource', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
          property :storage_source, as: 'storageSource', class: Google::Apis::CloudbuildV1::StorageSource, decorator: Google::Apis::CloudbuildV1::StorageSource::Representation
      
          property :storage_source_manifest, as: 'storageSourceManifest', class: Google::Apis::CloudbuildV1::StorageSourceManifest, decorator: Google::Apis::CloudbuildV1::StorageSourceManifest::Representation
      
        end
      end
      
      class SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1::FileHashes, decorator: Google::Apis::CloudbuildV1::FileHashes::Representation
      
          property :resolved_connected_repository, as: 'resolvedConnectedRepository', class: Google::Apis::CloudbuildV1::ConnectedRepository, decorator: Google::Apis::CloudbuildV1::ConnectedRepository::Representation
      
          property :resolved_git_source, as: 'resolvedGitSource', class: Google::Apis::CloudbuildV1::GitSource, decorator: Google::Apis::CloudbuildV1::GitSource::Representation
      
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::CloudbuildV1::StorageSource, decorator: Google::Apis::CloudbuildV1::StorageSource::Representation
      
          property :resolved_storage_source_manifest, as: 'resolvedStorageSourceManifest', class: Google::Apis::CloudbuildV1::StorageSourceManifest, decorator: Google::Apis::CloudbuildV1::StorageSourceManifest::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
          property :source_fetcher, as: 'sourceFetcher'
        end
      end
      
      class StorageSourceManifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateBitbucketServerConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
        end
      end
      
      class UpdateGitHubEnterpriseConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
        end
      end
      
      class UpdateGitLabConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :gitlab_config, as: 'gitlabConfig'
        end
      end
      
      class UpdateWorkerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class UploadedGoModule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1::FileHashes, decorator: Google::Apis::CloudbuildV1::FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class UploadedMavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1::FileHashes, decorator: Google::Apis::CloudbuildV1::FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class UploadedNpmPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1::FileHashes, decorator: Google::Apis::CloudbuildV1::FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class UploadedPythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1::FileHashes, decorator: Google::Apis::CloudbuildV1::FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::CloudbuildV1::TimeSpan, decorator: Google::Apis::CloudbuildV1::TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class Warning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
          property :text, as: 'text'
        end
      end
      
      class WebhookConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret, as: 'secret'
          property :state, as: 'state'
        end
      end
      
      class WorkerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :machine_type, as: 'machineType'
        end
      end
      
      class WorkerPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :private_pool_v1_config, as: 'privatePoolV1Config', class: Google::Apis::CloudbuildV1::PrivatePoolV1Config, decorator: Google::Apis::CloudbuildV1::PrivatePoolV1Config::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
