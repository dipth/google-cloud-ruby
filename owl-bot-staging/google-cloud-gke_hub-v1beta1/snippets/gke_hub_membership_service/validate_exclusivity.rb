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

# [START gkehub_v1beta1_generated_GkeHubMembershipService_ValidateExclusivity_sync]
require "google/cloud/gke_hub/v1beta1"

##
# Example demonstrating basic usage of
# Google::Cloud::GkeHub::V1beta1::GkeHubMembershipService::Client#validate_exclusivity
#
def validate_exclusivity
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::GkeHub::V1beta1::GkeHubMembershipService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::GkeHub::V1beta1::ValidateExclusivityRequest.new

  # Call the validate_exclusivity method.
  result = client.validate_exclusivity request

  # The returned object is of type Google::Cloud::GkeHub::V1beta1::ValidateExclusivityResponse.
  p result
end
# [END gkehub_v1beta1_generated_GkeHubMembershipService_ValidateExclusivity_sync]
