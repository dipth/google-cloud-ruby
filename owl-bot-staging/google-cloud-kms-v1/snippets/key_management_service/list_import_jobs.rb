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

# [START cloudkms_v1_generated_KeyManagementService_ListImportJobs_sync]
require "google/cloud/kms/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::Kms::V1::KeyManagementService::Client#list_import_jobs
#
def list_import_jobs
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Kms::V1::KeyManagementService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Kms::V1::ListImportJobsRequest.new

  # Call the list_import_jobs method.
  result = client.list_import_jobs request

  # The returned object is of type Gapic::PagedEnumerable. You can
  # iterate over all elements by calling #each, and the enumerable
  # will lazily make API calls to fetch subsequent pages. Other
  # methods are also available for managing paging directly.
  result.each do |response|
    # Each element is of type ::Google::Cloud::Kms::V1::ImportJob.
    p response
  end
end
# [END cloudkms_v1_generated_KeyManagementService_ListImportJobs_sync]
