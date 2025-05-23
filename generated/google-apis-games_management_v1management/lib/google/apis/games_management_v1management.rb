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

require 'google/apis/games_management_v1management/service.rb'
require 'google/apis/games_management_v1management/classes.rb'
require 'google/apis/games_management_v1management/representations.rb'
require 'google/apis/games_management_v1management/gem_version.rb'

module Google
  module Apis
    # Google Play Games Services Management API
    #
    # The Google Play Games Management API allows developers to manage resources
    # from the Google Play Game service.
    #
    # @see https://developers.google.com/games/
    module GamesManagementV1management
      # Version of the Google Play Games Services Management API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1management'

      # Create, edit, and delete your Google Play Games activity
      AUTH_GAMES = 'https://www.googleapis.com/auth/games'
    end
  end
end
