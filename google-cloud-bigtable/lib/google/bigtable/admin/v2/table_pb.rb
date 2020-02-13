# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/bigtable/admin/v2/table.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.bigtable.admin.v2.Table" do
    optional :name, :string, 1
    map :cluster_states, :string, :message, 2, "google.bigtable.admin.v2.Table.ClusterState"
    map :column_families, :string, :message, 3, "google.bigtable.admin.v2.ColumnFamily"
    optional :granularity, :enum, 4, "google.bigtable.admin.v2.Table.TimestampGranularity"
  end
  add_message "google.bigtable.admin.v2.Table.ClusterState" do
    optional :replication_state, :enum, 1, "google.bigtable.admin.v2.Table.ClusterState.ReplicationState"
  end
  add_enum "google.bigtable.admin.v2.Table.ClusterState.ReplicationState" do
    value :STATE_NOT_KNOWN, 0
    value :INITIALIZING, 1
    value :PLANNED_MAINTENANCE, 2
    value :UNPLANNED_MAINTENANCE, 3
    value :READY, 4
  end
  add_enum "google.bigtable.admin.v2.Table.TimestampGranularity" do
    value :TIMESTAMP_GRANULARITY_UNSPECIFIED, 0
    value :MILLIS, 1
  end
  add_enum "google.bigtable.admin.v2.Table.View" do
    value :VIEW_UNSPECIFIED, 0
    value :NAME_ONLY, 1
    value :SCHEMA_VIEW, 2
    value :REPLICATION_VIEW, 3
    value :FULL, 4
  end
  add_message "google.bigtable.admin.v2.ColumnFamily" do
    optional :gc_rule, :message, 1, "google.bigtable.admin.v2.GcRule"
  end
  add_message "google.bigtable.admin.v2.GcRule" do
    oneof :rule do
      optional :max_num_versions, :int32, 1
      optional :max_age, :message, 2, "google.protobuf.Duration"
      optional :intersection, :message, 3, "google.bigtable.admin.v2.GcRule.Intersection"
      optional :union, :message, 4, "google.bigtable.admin.v2.GcRule.Union"
    end
  end
  add_message "google.bigtable.admin.v2.GcRule.Intersection" do
    repeated :rules, :message, 1, "google.bigtable.admin.v2.GcRule"
  end
  add_message "google.bigtable.admin.v2.GcRule.Union" do
    repeated :rules, :message, 1, "google.bigtable.admin.v2.GcRule"
  end
  add_message "google.bigtable.admin.v2.Snapshot" do
    optional :name, :string, 1
    optional :source_table, :message, 2, "google.bigtable.admin.v2.Table"
    optional :data_size_bytes, :int64, 3
    optional :create_time, :message, 4, "google.protobuf.Timestamp"
    optional :delete_time, :message, 5, "google.protobuf.Timestamp"
    optional :state, :enum, 6, "google.bigtable.admin.v2.Snapshot.State"
    optional :description, :string, 7
  end
  add_enum "google.bigtable.admin.v2.Snapshot.State" do
    value :STATE_NOT_KNOWN, 0
    value :READY, 1
    value :CREATING, 2
  end
end

module Google
  module Bigtable
    module Admin
      module V2
        Table = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table").msgclass
        Table::ClusterState = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table.ClusterState").msgclass
        Table::ClusterState::ReplicationState = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table.ClusterState.ReplicationState").enummodule
        Table::TimestampGranularity = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table.TimestampGranularity").enummodule
        Table::View = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table.View").enummodule
        ColumnFamily = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ColumnFamily").msgclass
        GcRule = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GcRule").msgclass
        GcRule::Intersection = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GcRule.Intersection").msgclass
        GcRule::Union = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GcRule.Union").msgclass
        Snapshot = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Snapshot").msgclass
        Snapshot::State = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Snapshot.State").enummodule
      end
    end
  end
end
