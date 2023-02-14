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

# [START datalineage_v1_generated_Lineage_DeleteProcess_sync]
require "google/cloud/data_catalog/lineage/v1"

##
# Snippet for the delete_process call in the Lineage service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::DataCatalog::Lineage::V1::Lineage::Client#delete_process. It
# may require modification in order to execute successfully.
#
def delete_process
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::DataCatalog::Lineage::V1::Lineage::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::DataCatalog::Lineage::V1::DeleteProcessRequest.new

  # Call the delete_process method.
  result = client.delete_process request

  # The returned object is of type Gapic::Operation. You can use it to
  # check the status of an operation, cancel it, or wait for results.
  # Here is how to wait for a response.
  result.wait_until_done! timeout: 60
  if result.response?
    p result.response
  else
    puts "No response received."
  end
end
# [END datalineage_v1_generated_Lineage_DeleteProcess_sync]
