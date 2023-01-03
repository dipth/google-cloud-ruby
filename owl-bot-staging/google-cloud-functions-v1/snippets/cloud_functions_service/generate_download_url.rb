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

# [START cloudfunctions_v1_generated_CloudFunctionsService_GenerateDownloadUrl_sync]
require "google/cloud/functions/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::Functions::V1::CloudFunctionsService::Client#generate_download_url
#
def generate_download_url
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Functions::V1::CloudFunctionsService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Functions::V1::GenerateDownloadUrlRequest.new

  # Call the generate_download_url method.
  result = client.generate_download_url request

  # The returned object is of type Google::Cloud::Functions::V1::GenerateDownloadUrlResponse.
  p result
end
# [END cloudfunctions_v1_generated_CloudFunctionsService_GenerateDownloadUrl_sync]
