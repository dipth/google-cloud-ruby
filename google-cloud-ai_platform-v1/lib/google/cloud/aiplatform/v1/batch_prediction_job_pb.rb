# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/batch_prediction_job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/completion_stats_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/cloud/aiplatform/v1/io_pb'
require 'google/cloud/aiplatform/v1/job_state_pb'
require 'google/cloud/aiplatform/v1/machine_resources_pb'
require 'google/cloud/aiplatform/v1/manual_batch_tuning_parameters_pb'
require 'google/cloud/aiplatform/v1/unmanaged_container_model_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/batch_prediction_job.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.BatchPredictionJob" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :model, :string, 3
      optional :model_version_id, :string, 30
      optional :unmanaged_container_model, :message, 28, "google.cloud.aiplatform.v1.UnmanagedContainerModel"
      optional :input_config, :message, 4, "google.cloud.aiplatform.v1.BatchPredictionJob.InputConfig"
      optional :instance_config, :message, 27, "google.cloud.aiplatform.v1.BatchPredictionJob.InstanceConfig"
      optional :model_parameters, :message, 5, "google.protobuf.Value"
      optional :output_config, :message, 6, "google.cloud.aiplatform.v1.BatchPredictionJob.OutputConfig"
      optional :dedicated_resources, :message, 7, "google.cloud.aiplatform.v1.BatchDedicatedResources"
      optional :service_account, :string, 29
      optional :manual_batch_tuning_parameters, :message, 8, "google.cloud.aiplatform.v1.ManualBatchTuningParameters"
      optional :generate_explanation, :bool, 23
      optional :explanation_spec, :message, 25, "google.cloud.aiplatform.v1.ExplanationSpec"
      optional :output_info, :message, 9, "google.cloud.aiplatform.v1.BatchPredictionJob.OutputInfo"
      optional :state, :enum, 10, "google.cloud.aiplatform.v1.JobState"
      optional :error, :message, 11, "google.rpc.Status"
      repeated :partial_failures, :message, 12, "google.rpc.Status"
      optional :resources_consumed, :message, 13, "google.cloud.aiplatform.v1.ResourcesConsumed"
      optional :completion_stats, :message, 14, "google.cloud.aiplatform.v1.CompletionStats"
      optional :create_time, :message, 15, "google.protobuf.Timestamp"
      optional :start_time, :message, 16, "google.protobuf.Timestamp"
      optional :end_time, :message, 17, "google.protobuf.Timestamp"
      optional :update_time, :message, 18, "google.protobuf.Timestamp"
      map :labels, :string, :string, 19
      optional :encryption_spec, :message, 24, "google.cloud.aiplatform.v1.EncryptionSpec"
    end
    add_message "google.cloud.aiplatform.v1.BatchPredictionJob.InputConfig" do
      optional :instances_format, :string, 1
      oneof :source do
        optional :gcs_source, :message, 2, "google.cloud.aiplatform.v1.GcsSource"
        optional :bigquery_source, :message, 3, "google.cloud.aiplatform.v1.BigQuerySource"
      end
    end
    add_message "google.cloud.aiplatform.v1.BatchPredictionJob.InstanceConfig" do
      optional :instance_type, :string, 1
      optional :key_field, :string, 2
      repeated :included_fields, :string, 3
      repeated :excluded_fields, :string, 4
    end
    add_message "google.cloud.aiplatform.v1.BatchPredictionJob.OutputConfig" do
      optional :predictions_format, :string, 1
      oneof :destination do
        optional :gcs_destination, :message, 2, "google.cloud.aiplatform.v1.GcsDestination"
        optional :bigquery_destination, :message, 3, "google.cloud.aiplatform.v1.BigQueryDestination"
      end
    end
    add_message "google.cloud.aiplatform.v1.BatchPredictionJob.OutputInfo" do
      optional :bigquery_output_table, :string, 4
      oneof :output_location do
        optional :gcs_output_directory, :string, 1
        optional :bigquery_output_dataset, :string, 2
      end
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        BatchPredictionJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob").msgclass
        BatchPredictionJob::InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob.InputConfig").msgclass
        BatchPredictionJob::InstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob.InstanceConfig").msgclass
        BatchPredictionJob::OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob.OutputConfig").msgclass
        BatchPredictionJob::OutputInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob.OutputInfo").msgclass
      end
    end
  end
end
