# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/kms/v1/version"

require "google/cloud/kms/v1/key_management_service/credentials"
require "google/cloud/kms/v1/key_management_service/paths"
require "google/cloud/kms/v1/key_management_service/client"

module Google
  module Cloud
    module Kms
      module V1
        ##
        # Google Cloud Key Management Service
        #
        # Manages cryptographic keys and operations using those keys. Implements a REST
        # model with the following objects:
        #
        # * {::Google::Cloud::Kms::V1::KeyRing KeyRing}
        # * {::Google::Cloud::Kms::V1::CryptoKey CryptoKey}
        # * {::Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}
        # * {::Google::Cloud::Kms::V1::ImportJob ImportJob}
        #
        # If you are using manual gRPC libraries, see
        # [Using gRPC with Cloud KMS](https://cloud.google.com/kms/docs/grpc).
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/kms/v1/key_management_service"
        #     client = ::Google::Cloud::Kms::V1::KeyManagementService::Client.new
        #
        module KeyManagementService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "key_management_service", "helpers.rb"
require "google/cloud/kms/v1/key_management_service/helpers" if ::File.file? helper_path
