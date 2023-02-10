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


module Google
  module Cloud
    module Kms
      module V1
        module KeyManagementService
          # Path helper methods for the KeyManagementService API.
          module Paths
            ##
            # Create a fully-qualified CryptoKey resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`
            #
            # @param project [String]
            # @param location [String]
            # @param key_ring [String]
            # @param crypto_key [String]
            #
            # @return [::String]
            def crypto_key_path project:, location:, key_ring:, crypto_key:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "key_ring cannot contain /" if key_ring.to_s.include? "/"

              "projects/#{project}/locations/#{location}/keyRings/#{key_ring}/cryptoKeys/#{crypto_key}"
            end

            ##
            # Create a fully-qualified CryptoKeyVersion resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`
            #
            # @param project [String]
            # @param location [String]
            # @param key_ring [String]
            # @param crypto_key [String]
            # @param crypto_key_version [String]
            #
            # @return [::String]
            def crypto_key_version_path project:, location:, key_ring:, crypto_key:, crypto_key_version:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "key_ring cannot contain /" if key_ring.to_s.include? "/"
              raise ::ArgumentError, "crypto_key cannot contain /" if crypto_key.to_s.include? "/"

              "projects/#{project}/locations/#{location}/keyRings/#{key_ring}/cryptoKeys/#{crypto_key}/cryptoKeyVersions/#{crypto_key_version}"
            end

            ##
            # Create a fully-qualified ImportJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/keyRings/{key_ring}/importJobs/{import_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param key_ring [String]
            # @param import_job [String]
            #
            # @return [::String]
            def import_job_path project:, location:, key_ring:, import_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "key_ring cannot contain /" if key_ring.to_s.include? "/"

              "projects/#{project}/locations/#{location}/keyRings/#{key_ring}/importJobs/#{import_job}"
            end

            ##
            # Create a fully-qualified KeyRing resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/keyRings/{key_ring}`
            #
            # @param project [String]
            # @param location [String]
            # @param key_ring [String]
            #
            # @return [::String]
            def key_ring_path project:, location:, key_ring:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/keyRings/#{key_ring}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            extend self
          end
        end
      end
    end
  end
end
