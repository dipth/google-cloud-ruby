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

require "google/cloud/bigquery/data_transfer/v1/version"

require "google/cloud/bigquery/data_transfer/v1/data_transfer_service/credentials"
require "google/cloud/bigquery/data_transfer/v1/data_transfer_service/paths"
require "google/cloud/bigquery/data_transfer/v1/data_transfer_service/client"

module Google
  module Cloud
    module Bigquery
      module DataTransfer
        module V1
          ##
          # This API allows users to manage their data transfers into BigQuery.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/bigquery/data_transfer/v1/data_transfer_service"
          #     client = ::Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::Client.new
          #
          module DataTransferService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "data_transfer_service", "helpers.rb"
require "google/cloud/bigquery/data_transfer/v1/data_transfer_service/helpers" if ::File.file? helper_path
