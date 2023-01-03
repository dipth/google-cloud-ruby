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
    module Firestore
      module V1
        # A set of field paths on a document.
        # Used to restrict a get or update operation on a document to a subset of its
        # fields.
        # This is different from standard field masks, as this is always scoped to a
        # {::Google::Cloud::Firestore::V1::Document Document}, and takes in account the dynamic nature of {::Google::Cloud::Firestore::V1::Value Value}.
        # @!attribute [rw] field_paths
        #   @return [::Array<::String>]
        #     The list of field paths in the mask. See {::Google::Cloud::Firestore::V1::Document#fields Document.fields} for a field
        #     path syntax reference.
        class DocumentMask
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A precondition on a document, used for conditional operations.
        # @!attribute [rw] exists
        #   @return [::Boolean]
        #     When set to `true`, the target document must exist.
        #     When set to `false`, the target document must not exist.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     When set, the target document must exist and have been last updated at
        #     that time. Timestamp must be microsecond aligned.
        class Precondition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Options for creating a new transaction.
        # @!attribute [rw] read_only
        #   @return [::Google::Cloud::Firestore::V1::TransactionOptions::ReadOnly]
        #     The transaction can only be used for read operations.
        # @!attribute [rw] read_write
        #   @return [::Google::Cloud::Firestore::V1::TransactionOptions::ReadWrite]
        #     The transaction can be used for both read and write operations.
        class TransactionOptions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Options for a transaction that can be used to read and write documents.
          # @!attribute [rw] retry_transaction
          #   @return [::String]
          #     An optional transaction to retry.
          class ReadWrite
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Options for a transaction that can only be used to read documents.
          # @!attribute [rw] read_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Reads documents at the given time.
          #     This may not be older than 60 seconds.
          class ReadOnly
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
