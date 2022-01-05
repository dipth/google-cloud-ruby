# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/cx/v3/flows"

class ::Google::Cloud::Dialogflow::CX::V3::Flows::ClientPathsTest < Minitest::Test
  def test_agent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.agent_path project: "value0", location: "value1", agent: "value2"
      assert_equal "projects/value0/locations/value1/agents/value2", path
    end
  end

  def test_flow_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.flow_path project: "value0", location: "value1", agent: "value2", flow: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3", path
    end
  end

  def test_flow_validation_result_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.flow_validation_result_path project: "value0", location: "value1", agent: "value2", flow: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3/validationResult", path
    end
  end

  def test_intent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.intent_path project: "value0", location: "value1", agent: "value2", intent: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/intents/value3", path
    end
  end

  def test_page_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.page_path project: "value0", location: "value1", agent: "value2", flow: "value3", page: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3/pages/value4", path
    end
  end

  def test_transition_route_group_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.transition_route_group_path project: "value0", location: "value1", agent: "value2", flow: "value3", transition_route_group: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3/transitionRouteGroups/value4", path
    end
  end

  def test_webhook_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.webhook_path project: "value0", location: "value1", agent: "value2", webhook: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/webhooks/value3", path
    end
  end
end
