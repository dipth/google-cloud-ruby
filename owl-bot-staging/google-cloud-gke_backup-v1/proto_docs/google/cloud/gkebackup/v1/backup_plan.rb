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
    module GkeBackup
      module V1
        # Defines the configuration and scheduling for a "line" of Backups.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The full name of the BackupPlan resource.
        #     Format: projects/*/locations/*/backupPlans/*
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server generated global unique identifier of
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this BackupPlan resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this BackupPlan resource was last
        #     updated.
        # @!attribute [rw] description
        #   @return [::String]
        #     User specified descriptive string for this BackupPlan.
        # @!attribute [rw] cluster
        #   @return [::String]
        #     Required. Immutable. The source cluster from which Backups will be created via
        #     this BackupPlan.
        #     Valid formats:
        #
        #     - projects/*/locations/*/clusters/*
        #     - projects/*/zones/*/clusters/*
        # @!attribute [rw] retention_policy
        #   @return [::Google::Cloud::GkeBackup::V1::BackupPlan::RetentionPolicy]
        #     RetentionPolicy governs lifecycle of Backups created under this plan.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A set of custom labels supplied by user.
        # @!attribute [rw] backup_schedule
        #   @return [::Google::Cloud::GkeBackup::V1::BackupPlan::Schedule]
        #     Defines a schedule for automatic Backup creation via this BackupPlan.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. `etag` is used for optimistic concurrency control as a way to help
        #     prevent simultaneous updates of a backup plan from overwriting each other.
        #     It is strongly suggested that systems make use of the 'etag' in the
        #     read-modify-write cycle to perform BackupPlan updates in order to avoid
        #     race conditions: An `etag` is returned in the response to `GetBackupPlan`,
        #     and systems are expected to put that etag in the request to
        #     `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change
        #     will be applied to the same version of the resource.
        # @!attribute [rw] deactivated
        #   @return [::Boolean]
        #     This flag indicates whether this BackupPlan has been deactivated.
        #     Setting this field to True locks the BackupPlan such that no further
        #     updates will be allowed (except deletes), including the deactivated field
        #     itself. It also prevents any new Backups from being created via this
        #     BackupPlan (including scheduled Backups).
        #
        #     Default: False
        # @!attribute [rw] backup_config
        #   @return [::Google::Cloud::GkeBackup::V1::BackupPlan::BackupConfig]
        #     Defines the configuration of Backups created via this BackupPlan.
        # @!attribute [r] protected_pod_count
        #   @return [::Integer]
        #     Output only. The number of Kubernetes Pods backed up in the
        #     last successful Backup created via this BackupPlan.
        class BackupPlan
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # RetentionPolicy defines a Backup retention policy for a BackupPlan.
          # @!attribute [rw] backup_delete_lock_days
          #   @return [::Integer]
          #     Minimum age for Backups created via this BackupPlan (in days).
          #     This field MUST be an integer value between 0-90 (inclusive).
          #     A Backup created under this BackupPlan will NOT be deletable until it
          #     reaches Backup's (create_time + backup_delete_lock_days).
          #     Updating this field of a BackupPlan does NOT affect existing Backups
          #     under it. Backups created AFTER a successful update will inherit
          #     the new value.
          #
          #     Default: 0 (no delete blocking)
          # @!attribute [rw] backup_retain_days
          #   @return [::Integer]
          #     The default maximum age of a Backup created via this BackupPlan.
          #     This field MUST be an integer value >= 0.
          #     If specified, a Backup created under this BackupPlan will be
          #     automatically deleted after its age reaches (create_time +
          #     backup_retain_days).
          #     If not specified, Backups created under this BackupPlan will NOT be
          #     subject to automatic deletion.
          #     Updating this field does NOT affect existing Backups under it. Backups
          #     created AFTER a successful update will automatically pick up the new
          #     value.
          #     NOTE: backup_retain_days must be >= {::Google::Cloud::GkeBackup::V1::BackupPlan::RetentionPolicy#backup_delete_lock_days backup_delete_lock_days}.
          #
          #     Default: 0 (no automatic deletion)
          # @!attribute [rw] locked
          #   @return [::Boolean]
          #     This flag denotes whether the retention policy of this BackupPlan is
          #     locked.  If set to True, no further update is allowed on this policy,
          #     including the `locked` field itself.
          #
          #     Default: False
          class RetentionPolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Schedule defines scheduling parameters for automatically creating Backups
          # via this BackupPlan.
          # @!attribute [rw] cron_schedule
          #   @return [::String]
          #     A standard [cron](https://wikipedia.com/wiki/cron) string that defines a
          #     repeating schedule for creating Backups via this BackupPlan.
          #
          #     Default (empty): no automatic backup creation will occur.
          # @!attribute [rw] paused
          #   @return [::Boolean]
          #     This flag denotes whether automatic Backup creation is paused for this
          #     BackupPlan.
          #
          #     Default: False
          class Schedule
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # BackupConfig defines the configuration of Backups created via this
          # BackupPlan.
          # @!attribute [rw] all_namespaces
          #   @return [::Boolean]
          #     If True, include all namespaced resources
          # @!attribute [rw] selected_namespaces
          #   @return [::Google::Cloud::GkeBackup::V1::Namespaces]
          #     If set, include just the resources in the listed namespaces.
          # @!attribute [rw] selected_applications
          #   @return [::Google::Cloud::GkeBackup::V1::NamespacedNames]
          #     If set, include just the resources referenced by the listed
          #     ProtectedApplications.
          # @!attribute [rw] include_volume_data
          #   @return [::Boolean]
          #     This flag specifies whether volume data should be backed up when
          #     PVCs are included in the scope of a Backup.
          #
          #     Default: False
          # @!attribute [rw] include_secrets
          #   @return [::Boolean]
          #     This flag specifies whether Kubernetes Secret resources should be
          #     included when they fall into the scope of Backups.
          #
          #     Default: False
          # @!attribute [rw] encryption_key
          #   @return [::Google::Cloud::GkeBackup::V1::EncryptionKey]
          #     This defines a customer managed encryption key that will be used to
          #     encrypt the "config" portion (the Kubernetes resources) of Backups
          #     created via this plan.
          #
          #     Default (empty): Config backup artifacts will not be encrypted.
          class BackupConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
