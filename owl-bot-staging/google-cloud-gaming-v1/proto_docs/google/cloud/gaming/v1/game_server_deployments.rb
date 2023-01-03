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
    module Gaming
      module V1
        # Request message for GameServerDeploymentsService.ListGameServerDeployments.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name, in the following form:
        #     `projects/{project}/locations/{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return.  If unspecified, the server
        #     will pick an appropriate default. The server may return fewer items than
        #     requested. A caller should only rely on response's
        #     {::Google::Cloud::Gaming::V1::ListGameServerDeploymentsResponse#next_page_token next_page_token} to
        #     determine if there are more GameServerDeployments left to be queried.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous List request,
        #     if any.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The filter to apply to list results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Specifies the ordering of results following syntax at
        #     https://cloud.google.com/apis/design/design_patterns#sorting_order.
        class ListGameServerDeploymentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for GameServerDeploymentsService.ListGameServerDeployments.
        # @!attribute [rw] game_server_deployments
        #   @return [::Array<::Google::Cloud::Gaming::V1::GameServerDeployment>]
        #     The list of game server deployments.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     List of locations that could not be reached.
        class ListGameServerDeploymentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerDeploymentsService.GetGameServerDeployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the game server delpoyment to retrieve, in the following form:
        #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}`.
        class GetGameServerDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # GameServerDeploymentsService.GetGameServerDeploymentRollout.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the game server delpoyment to retrieve, in the following form:
        #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}/rollout`.
        class GetGameServerDeploymentRolloutRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerDeploymentsService.CreateGameServerDeployment.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name, in the following form:
        #     `projects/{project}/locations/{location}`.
        # @!attribute [rw] deployment_id
        #   @return [::String]
        #     Required. The ID of the game server delpoyment resource to be created.
        # @!attribute [rw] game_server_deployment
        #   @return [::Google::Cloud::Gaming::V1::GameServerDeployment]
        #     Required. The game server delpoyment resource to be created.
        class CreateGameServerDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerDeploymentsService.DeleteGameServerDeployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the game server delpoyment to delete, in the following form:
        #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}`.
        class DeleteGameServerDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerDeploymentsService.UpdateGameServerDeployment.
        # Only allows updates for labels.
        # @!attribute [rw] game_server_deployment
        #   @return [::Google::Cloud::Gaming::V1::GameServerDeployment]
        #     Required. The game server delpoyment to be updated.
        #     Only fields specified in update_mask are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. For the `FieldMask` definition, see
        #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        class UpdateGameServerDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # GameServerDeploymentsService.UpdateGameServerRolloutDeployment.
        # @!attribute [rw] rollout
        #   @return [::Google::Cloud::Gaming::V1::GameServerDeploymentRollout]
        #     Required. The game server delpoyment rollout to be updated.
        #     Only fields specified in update_mask are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. For the `FieldMask` definition, see
        #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        class UpdateGameServerDeploymentRolloutRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerDeploymentsService.FetchDeploymentState.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the game server delpoyment, in the following form:
        #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}`.
        class FetchDeploymentStateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for GameServerDeploymentsService.FetchDeploymentState.
        # @!attribute [rw] cluster_state
        #   @return [::Array<::Google::Cloud::Gaming::V1::FetchDeploymentStateResponse::DeployedClusterState>]
        #     The state of the game server deployment in each game server cluster.
        # @!attribute [rw] unavailable
        #   @return [::Array<::String>]
        #     List of locations that could not be reached.
        class FetchDeploymentStateResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The game server cluster changes made by the game server deployment.
          # @!attribute [rw] cluster
          #   @return [::String]
          #     The name of the cluster.
          # @!attribute [rw] fleet_details
          #   @return [::Array<::Google::Cloud::Gaming::V1::DeployedFleetDetails>]
          #     The details about the Agones fleets and autoscalers created in the
          #     game server cluster.
          class DeployedClusterState
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A game server deployment resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the game server deployment, in the following form:
        #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}`.
        #     For example,
        #     `projects/my-project/locations/global/gameServerDeployments/my-deployment`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels associated with this game server deployment. Each label is a
        #     key-value pair.
        # @!attribute [rw] etag
        #   @return [::String]
        #     ETag of the resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Human readable description of the game server delpoyment.
        class GameServerDeployment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A game server config override.
        # @!attribute [rw] realms_selector
        #   @return [::Google::Cloud::Gaming::V1::RealmSelector]
        #     Selector for choosing applicable realms.
        # @!attribute [rw] config_version
        #   @return [::String]
        #     The game server config for this override.
        class GameServerConfigOverride
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The game server deployment rollout which represents the desired rollout
        # state.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the game server deployment rollout, in the following
        #     form:
        #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}/rollout`.
        #     For example,
        #     `projects/my-project/locations/global/gameServerDeployments/my-deployment/rollout`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [rw] default_game_server_config
        #   @return [::String]
        #     The default game server config is applied to all realms unless overridden
        #     in the rollout. For example,
        #     `projects/my-project/locations/global/gameServerDeployments/my-game/configs/my-config`.
        # @!attribute [rw] game_server_config_overrides
        #   @return [::Array<::Google::Cloud::Gaming::V1::GameServerConfigOverride>]
        #     Contains the game server config rollout overrides. Overrides are processed
        #     in the order they are listed. Once a match is found for a realm, the rest
        #     of the list is not processed.
        # @!attribute [rw] etag
        #   @return [::String]
        #     ETag of the resource.
        class GameServerDeploymentRollout
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for PreviewGameServerDeploymentRollout.
        # @!attribute [rw] rollout
        #   @return [::Google::Cloud::Gaming::V1::GameServerDeploymentRollout]
        #     Required. The game server deployment rollout to be updated.
        #     Only fields specified in update_mask are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Mask of fields to update. At least one path must be supplied in
        #     this field. For the `FieldMask` definition, see
        #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        # @!attribute [rw] preview_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The target timestamp to compute the preview. Defaults to the immediately
        #     after the proposed rollout completes.
        class PreviewGameServerDeploymentRolloutRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for PreviewGameServerDeploymentRollout.
        # This has details about the Agones fleet and autoscaler to be actuated.
        # @!attribute [rw] unavailable
        #   @return [::Array<::String>]
        #     Locations that could not be reached on this request.
        # @!attribute [rw] etag
        #   @return [::String]
        #     ETag of the game server deployment.
        # @!attribute [rw] target_state
        #   @return [::Google::Cloud::Gaming::V1::TargetState]
        #     The target state.
        class PreviewGameServerDeploymentRolloutResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
