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

require "gapic/grpc/service_stub"

require "google/cloud/gkemulticloud/v1/aws_service_pb"
require "google/cloud/gkemulticloud/v1/aws_service_services_pb"
require "google/cloud/gke_multi_cloud/v1/aws_clusters"

class ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_aws_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    aws_cluster = {}
    aws_cluster_id = "hello world"
    validate_only = true

    create_aws_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_aws_cluster, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::CreateAwsClusterRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GkeMultiCloud::V1::AwsCluster), request["aws_cluster"]
      assert_equal "hello world", request["aws_cluster_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_aws_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_aws_cluster({ parent: parent, aws_cluster: aws_cluster, aws_cluster_id: aws_cluster_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_aws_cluster parent: parent, aws_cluster: aws_cluster, aws_cluster_id: aws_cluster_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_aws_cluster ::Google::Cloud::GkeMultiCloud::V1::CreateAwsClusterRequest.new(parent: parent, aws_cluster: aws_cluster, aws_cluster_id: aws_cluster_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_aws_cluster({ parent: parent, aws_cluster: aws_cluster, aws_cluster_id: aws_cluster_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_aws_cluster(::Google::Cloud::GkeMultiCloud::V1::CreateAwsClusterRequest.new(parent: parent, aws_cluster: aws_cluster, aws_cluster_id: aws_cluster_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_aws_cluster_client_stub.call_rpc_count
    end
  end

  def test_update_aws_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    aws_cluster = {}
    validate_only = true
    update_mask = {}

    update_aws_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_aws_cluster, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::UpdateAwsClusterRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GkeMultiCloud::V1::AwsCluster), request["aws_cluster"]
      assert_equal true, request["validate_only"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_aws_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_aws_cluster({ aws_cluster: aws_cluster, validate_only: validate_only, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_aws_cluster aws_cluster: aws_cluster, validate_only: validate_only, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_aws_cluster ::Google::Cloud::GkeMultiCloud::V1::UpdateAwsClusterRequest.new(aws_cluster: aws_cluster, validate_only: validate_only, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_aws_cluster({ aws_cluster: aws_cluster, validate_only: validate_only, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_aws_cluster(::Google::Cloud::GkeMultiCloud::V1::UpdateAwsClusterRequest.new(aws_cluster: aws_cluster, validate_only: validate_only, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_aws_cluster_client_stub.call_rpc_count
    end
  end

  def test_get_aws_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeMultiCloud::V1::AwsCluster.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_aws_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_aws_cluster, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::GetAwsClusterRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_aws_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_aws_cluster({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_aws_cluster name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_aws_cluster ::Google::Cloud::GkeMultiCloud::V1::GetAwsClusterRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_aws_cluster({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_aws_cluster(::Google::Cloud::GkeMultiCloud::V1::GetAwsClusterRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_aws_cluster_client_stub.call_rpc_count
    end
  end

  def test_list_aws_clusters
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeMultiCloud::V1::ListAwsClustersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_aws_clusters_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_aws_clusters, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::ListAwsClustersRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_aws_clusters_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_aws_clusters({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_aws_clusters parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_aws_clusters ::Google::Cloud::GkeMultiCloud::V1::ListAwsClustersRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_aws_clusters({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_aws_clusters(::Google::Cloud::GkeMultiCloud::V1::ListAwsClustersRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_aws_clusters_client_stub.call_rpc_count
    end
  end

  def test_delete_aws_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    validate_only = true
    allow_missing = true
    etag = "hello world"

    delete_aws_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_aws_cluster, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::DeleteAwsClusterRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["validate_only"]
      assert_equal true, request["allow_missing"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_aws_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_aws_cluster({ name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_aws_cluster name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_aws_cluster ::Google::Cloud::GkeMultiCloud::V1::DeleteAwsClusterRequest.new(name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_aws_cluster({ name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_aws_cluster(::Google::Cloud::GkeMultiCloud::V1::DeleteAwsClusterRequest.new(name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_aws_cluster_client_stub.call_rpc_count
    end
  end

  def test_generate_aws_access_token
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeMultiCloud::V1::GenerateAwsAccessTokenResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    aws_cluster = "hello world"

    generate_aws_access_token_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :generate_aws_access_token, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::GenerateAwsAccessTokenRequest, request
      assert_equal "hello world", request["aws_cluster"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, generate_aws_access_token_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.generate_aws_access_token({ aws_cluster: aws_cluster }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.generate_aws_access_token aws_cluster: aws_cluster do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.generate_aws_access_token ::Google::Cloud::GkeMultiCloud::V1::GenerateAwsAccessTokenRequest.new(aws_cluster: aws_cluster) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.generate_aws_access_token({ aws_cluster: aws_cluster }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.generate_aws_access_token(::Google::Cloud::GkeMultiCloud::V1::GenerateAwsAccessTokenRequest.new(aws_cluster: aws_cluster), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, generate_aws_access_token_client_stub.call_rpc_count
    end
  end

  def test_create_aws_node_pool
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    aws_node_pool = {}
    aws_node_pool_id = "hello world"
    validate_only = true

    create_aws_node_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_aws_node_pool, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::CreateAwsNodePoolRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GkeMultiCloud::V1::AwsNodePool), request["aws_node_pool"]
      assert_equal "hello world", request["aws_node_pool_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_aws_node_pool_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_aws_node_pool({ parent: parent, aws_node_pool: aws_node_pool, aws_node_pool_id: aws_node_pool_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_aws_node_pool parent: parent, aws_node_pool: aws_node_pool, aws_node_pool_id: aws_node_pool_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_aws_node_pool ::Google::Cloud::GkeMultiCloud::V1::CreateAwsNodePoolRequest.new(parent: parent, aws_node_pool: aws_node_pool, aws_node_pool_id: aws_node_pool_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_aws_node_pool({ parent: parent, aws_node_pool: aws_node_pool, aws_node_pool_id: aws_node_pool_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_aws_node_pool(::Google::Cloud::GkeMultiCloud::V1::CreateAwsNodePoolRequest.new(parent: parent, aws_node_pool: aws_node_pool, aws_node_pool_id: aws_node_pool_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_aws_node_pool_client_stub.call_rpc_count
    end
  end

  def test_update_aws_node_pool
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    aws_node_pool = {}
    validate_only = true
    update_mask = {}

    update_aws_node_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_aws_node_pool, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::UpdateAwsNodePoolRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GkeMultiCloud::V1::AwsNodePool), request["aws_node_pool"]
      assert_equal true, request["validate_only"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_aws_node_pool_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_aws_node_pool({ aws_node_pool: aws_node_pool, validate_only: validate_only, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_aws_node_pool aws_node_pool: aws_node_pool, validate_only: validate_only, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_aws_node_pool ::Google::Cloud::GkeMultiCloud::V1::UpdateAwsNodePoolRequest.new(aws_node_pool: aws_node_pool, validate_only: validate_only, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_aws_node_pool({ aws_node_pool: aws_node_pool, validate_only: validate_only, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_aws_node_pool(::Google::Cloud::GkeMultiCloud::V1::UpdateAwsNodePoolRequest.new(aws_node_pool: aws_node_pool, validate_only: validate_only, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_aws_node_pool_client_stub.call_rpc_count
    end
  end

  def test_get_aws_node_pool
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeMultiCloud::V1::AwsNodePool.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_aws_node_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_aws_node_pool, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::GetAwsNodePoolRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_aws_node_pool_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_aws_node_pool({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_aws_node_pool name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_aws_node_pool ::Google::Cloud::GkeMultiCloud::V1::GetAwsNodePoolRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_aws_node_pool({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_aws_node_pool(::Google::Cloud::GkeMultiCloud::V1::GetAwsNodePoolRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_aws_node_pool_client_stub.call_rpc_count
    end
  end

  def test_list_aws_node_pools
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeMultiCloud::V1::ListAwsNodePoolsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_aws_node_pools_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_aws_node_pools, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::ListAwsNodePoolsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_aws_node_pools_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_aws_node_pools({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_aws_node_pools parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_aws_node_pools ::Google::Cloud::GkeMultiCloud::V1::ListAwsNodePoolsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_aws_node_pools({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_aws_node_pools(::Google::Cloud::GkeMultiCloud::V1::ListAwsNodePoolsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_aws_node_pools_client_stub.call_rpc_count
    end
  end

  def test_delete_aws_node_pool
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    validate_only = true
    allow_missing = true
    etag = "hello world"

    delete_aws_node_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_aws_node_pool, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::DeleteAwsNodePoolRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["validate_only"]
      assert_equal true, request["allow_missing"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_aws_node_pool_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_aws_node_pool({ name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_aws_node_pool name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_aws_node_pool ::Google::Cloud::GkeMultiCloud::V1::DeleteAwsNodePoolRequest.new(name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_aws_node_pool({ name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_aws_node_pool(::Google::Cloud::GkeMultiCloud::V1::DeleteAwsNodePoolRequest.new(name: name, validate_only: validate_only, allow_missing: allow_missing, etag: etag), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_aws_node_pool_client_stub.call_rpc_count
    end
  end

  def test_get_aws_server_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeMultiCloud::V1::AwsServerConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_aws_server_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_aws_server_config, name
      assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::GetAwsServerConfigRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_aws_server_config_client_stub do
      # Create client
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_aws_server_config({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_aws_server_config name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_aws_server_config ::Google::Cloud::GkeMultiCloud::V1::GetAwsServerConfigRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_aws_server_config({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_aws_server_config(::Google::Cloud::GkeMultiCloud::V1::GetAwsServerConfigRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_aws_server_config_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Operations, client.operations_client
  end
end
