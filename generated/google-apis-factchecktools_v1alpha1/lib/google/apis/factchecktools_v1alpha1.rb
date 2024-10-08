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

require 'google/apis/factchecktools_v1alpha1/service.rb'
require 'google/apis/factchecktools_v1alpha1/classes.rb'
require 'google/apis/factchecktools_v1alpha1/representations.rb'
require 'google/apis/factchecktools_v1alpha1/gem_version.rb'

module Google
  module Apis
    # Fact Check Tools API
    #
    # 
    #
    # @see https://developers.google.com/fact-check/tools/api/
    module FactchecktoolsV1alpha1
      # Version of the Fact Check Tools API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1alpha1'

      # Read, create, update, and delete your ClaimReview data.
      AUTH_FACTCHECKTOOLS = 'https://www.googleapis.com/auth/factchecktools'
    end
  end
end
