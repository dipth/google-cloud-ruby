# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/datastream/v1alpha1/version"

require "google/cloud/datastream/v1alpha1/datastream/credentials"
require "google/cloud/datastream/v1alpha1/datastream/paths"
require "google/cloud/datastream/v1alpha1/datastream/operations"
require "google/cloud/datastream/v1alpha1/datastream/client"

module Google
  module Cloud
    module Datastream
      module V1alpha1
        ##
        # Datastream service
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/datastream/v1alpha1/datastream"
        #     client = ::Google::Cloud::Datastream::V1alpha1::Datastream::Client.new
        #
        module Datastream
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "datastream", "helpers.rb"
require "google/cloud/datastream/v1alpha1/datastream/helpers" if ::File.file? helper_path
