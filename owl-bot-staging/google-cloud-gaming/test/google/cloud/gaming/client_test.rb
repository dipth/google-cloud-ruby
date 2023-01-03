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

require "helper"
require "google/cloud/gaming"
require "gapic/common"
require "gapic/grpc"

class Google::Cloud::Gaming::ClientConstructionMinitest < Minitest::Test
  def test_game_server_clusters_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Gaming.game_server_clusters_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Gaming::V1::GameServerClustersService::Client, client
    end
  end

  def test_game_server_configs_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Gaming.game_server_configs_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Gaming::V1::GameServerConfigsService::Client, client
    end
  end

  def test_game_server_deployments_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Gaming.game_server_deployments_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Gaming::V1::GameServerDeploymentsService::Client, client
    end
  end

  def test_realms_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Gaming.realms_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Gaming::V1::RealmsService::Client, client
    end
  end
end
