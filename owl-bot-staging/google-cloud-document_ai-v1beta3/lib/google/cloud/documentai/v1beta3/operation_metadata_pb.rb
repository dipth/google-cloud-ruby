# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1beta3/operation_metadata.proto

require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/documentai/v1beta3/operation_metadata.proto", :syntax => :proto3) do
    add_message "google.cloud.documentai.v1beta3.CommonOperationMetadata" do
      optional :state, :enum, 1, "google.cloud.documentai.v1beta3.CommonOperationMetadata.State"
      optional :state_message, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.documentai.v1beta3.CommonOperationMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :CANCELLING, 2
      value :SUCCEEDED, 3
      value :FAILED, 4
      value :CANCELLED, 5
    end
  end
end

module Google
  module Cloud
    module DocumentAI
      module V1beta3
        CommonOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.CommonOperationMetadata").msgclass
        CommonOperationMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.CommonOperationMetadata.State").enummodule
      end
    end
  end
end
