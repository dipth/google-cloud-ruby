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

require "google/cloud/recommendation_engine/v1beta1/version"

require "google/cloud/recommendation_engine/v1beta1/prediction_api_key_registry/credentials"
require "google/cloud/recommendation_engine/v1beta1/prediction_api_key_registry/paths"
require "google/cloud/recommendation_engine/v1beta1/prediction_api_key_registry/client"

module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        ##
        # Service for registering API keys for use with the `predict` method. If you
        # use an API key to request predictions, you must first register the API key.
        # Otherwise, your prediction request is rejected. If you use OAuth to
        # authenticate your `predict` method call, you do not need to register an API
        # key. You can register up to 20 API keys per project.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/recommendation_engine/v1beta1/prediction_api_key_registry"
        #     client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::Client.new
        #
        module PredictionApiKeyRegistry
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "prediction_api_key_registry", "helpers.rb"
require "google/cloud/recommendation_engine/v1beta1/prediction_api_key_registry/helpers" if ::File.file? helper_path
