# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/spanner/admin/database/v1/version"

require "google/cloud/spanner/admin/database/v1/database_admin/credentials"
require "google/cloud/spanner/admin/database/v1/database_admin/paths"
require "google/cloud/spanner/admin/database/v1/database_admin/operations"
require "google/cloud/spanner/admin/database/v1/database_admin/client"

module Google
  module Cloud
    module Spanner
      module Admin
        module Database
          module V1
            ##
            # Cloud Spanner Database Admin API
            #
            # The Cloud Spanner Database Admin API can be used to:
            #   * create, drop, and list databases
            #   * update the schema of pre-existing databases
            #   * create, delete and list backups for a database
            #   * restore a database from an existing backup
            #
            # To load this service and instantiate a client:
            #
            #     require "google/cloud/spanner/admin/database/v1/database_admin"
            #     client = ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client.new
            #
            module DatabaseAdmin
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "database_admin", "helpers.rb"
require "google/cloud/spanner/admin/database/v1/database_admin/helpers" if ::File.file? helper_path
