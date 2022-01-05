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


module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          # Represents an environment for an agent. You can create multiple versions
          # of your agent and publish them to separate environments. When you edit an
          # agent, you are editing the draft agent. At any point, you can save the draft
          # agent as an agent version, which is an immutable snapshot of your agent. When
          # you save the draft agent, it is published to the default environment. When
          # you create agent versions, you can publish them to custom environments. You
          # can create a variety of custom environments for testing, development,
          # production, etc.
          # @!attribute [rw] name
          #   @return [::String]
          #     The name of the environment.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>`.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Required. The human-readable name of the environment (unique in an agent). Limit of
          #     64 characters.
          # @!attribute [rw] description
          #   @return [::String]
          #     The human-readable description of the environment. The maximum length is
          #     500 characters. If exceeded, the request is rejected.
          # @!attribute [rw] version_configs
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Environment::VersionConfig>]
          #     Required. A list of configurations for flow versions. You should include version
          #     configs for all flows that are reachable from [`Start
          #     Flow`][Agent.start_flow] in the agent. Otherwise, an error will be
          #     returned.
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Update time of this environment.
          # @!attribute [rw] test_cases_config
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Environment::TestCasesConfig]
          #     The test cases config for continuous tests of this environment.
          class Environment
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Configuration for the version.
            # @!attribute [rw] version
            #   @return [::String]
            #     Required. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent
            #     ID>/flows/<Flow ID>/versions/<Version ID>.
            class VersionConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The configuration for continuous tests.
            # @!attribute [rw] test_cases
            #   @return [::Array<::String>]
            #     A list of test case names to run. They should be under the same agent.
            #     Format of each test case name: `projects/<Project ID>/locations/
            #     <Location ID>/agents/<AgentID>/testCases/<TestCase ID>`
            # @!attribute [rw] enable_continuous_run
            #   @return [::Boolean]
            #     Whether to run test cases in {::Google::Cloud::Dialogflow::CX::V3::Environment::TestCasesConfig#test_cases TestCasesConfig.test_cases} periodically.
            #     Default false. If set to ture, run once a day.
            # @!attribute [rw] enable_predeployment_run
            #   @return [::Boolean]
            #     Whether to run test cases in {::Google::Cloud::Dialogflow::CX::V3::Environment::TestCasesConfig#test_cases TestCasesConfig.test_cases} before
            #     deploying a flow version to the environment. Default false.
            class TestCasesConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#list_environments Environments.ListEnvironments}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Agent Agent} to list all environments for.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 20 and
          #     at most 100.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class ListEnvironmentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#list_environments Environments.ListEnvironments}.
          # @!attribute [rw] environments
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Environment>]
          #     The list of environments. There will be a maximum number of items
          #     returned based on the page_size field in the request. The list may in some
          #     cases be empty or contain fewer entries than page_size even if this isn't
          #     the last page.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class ListEnvironmentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#get_environment Environments.GetEnvironment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the {::Google::Cloud::Dialogflow::CX::V3::Environment Environment}.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>`.
          class GetEnvironmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#create_environment Environments.CreateEnvironment}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Agent Agent} to create an {::Google::Cloud::Dialogflow::CX::V3::Environment Environment} for.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] environment
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Environment]
          #     Required. The environment to create.
          class CreateEnvironmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#update_environment Environments.UpdateEnvironment}.
          # @!attribute [rw] environment
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Environment]
          #     Required. The environment to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The mask to control which fields get updated.
          class UpdateEnvironmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#delete_environment Environments.DeleteEnvironment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the {::Google::Cloud::Dialogflow::CX::V3::Environment Environment} to delete.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>`.
          class DeleteEnvironmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#lookup_environment_history Environments.LookupEnvironmentHistory}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the environment to look up the history for.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 100 and
          #     at most 1000.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class LookupEnvironmentHistoryRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#lookup_environment_history Environments.LookupEnvironmentHistory}.
          # @!attribute [rw] environments
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Environment>]
          #     Represents a list of snapshots for an environment. Time of the snapshots is
          #     stored in {::Google::Cloud::Dialogflow::CX::V3::Environment#update_time `update_time`}.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class LookupEnvironmentHistoryResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a result from running a test case in an agent environment.
          # @!attribute [rw] name
          #   @return [::String]
          #     The resource name for the continuous test result. Format:
          #     `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment
          #     ID>/continuousTestResults/<ContinuousTestResult ID>`.
          # @!attribute [rw] result
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ContinuousTestResult::AggregatedTestResult]
          #     The result of this continuous test run, i.e. whether all the tests in this
          #     continuous test run pass or not.
          # @!attribute [rw] test_case_results
          #   @return [::Array<::String>]
          #     A list of individual test case results names in this continuous test run.
          # @!attribute [rw] run_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Time when the continuous testing run starts.
          class ContinuousTestResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The overall result for a continuous test run in an agent environment.
            module AggregatedTestResult
              # Not specified. Should never be used.
              AGGREGATED_TEST_RESULT_UNSPECIFIED = 0

              # All the tests passed.
              PASSED = 1

              # At least one test did not pass.
              FAILED = 2
            end
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#run_continuous_test Environments.RunContinuousTest}.
          # @!attribute [rw] environment
          #   @return [::String]
          #     Required. Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>`.
          class RunContinuousTestRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#run_continuous_test Environments.RunContinuousTest}.
          # @!attribute [rw] continuous_test_result
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ContinuousTestResult]
          #     The result for a continuous test run.
          class RunContinuousTestResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata returned for the {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#run_continuous_test Environments.RunContinuousTest} long running
          # operation.
          # @!attribute [rw] errors
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::TestError>]
          #     The test errors.
          class RunContinuousTestMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#list_continuous_test_results Environments.ListContinuousTestResults}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The environment to list results for.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/
          #     environments/<Environment ID>`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 100 and
          #     at most 1000.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class ListContinuousTestResultsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for [Environments.ListTestCaseResults][].
          # @!attribute [rw] continuous_test_results
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::ContinuousTestResult>]
          #     The list of continuous test results.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class ListContinuousTestResultsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#deploy_flow Environments.DeployFlow}.
          # @!attribute [rw] environment
          #   @return [::String]
          #     Required. The environment to deploy the flow to.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/
          #     environments/<Environment ID>`.
          # @!attribute [rw] flow_version
          #   @return [::String]
          #     Required. The flow version to deploy.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/
          #     flows/<Flow ID>/versions/<Version ID>`.
          class DeployFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#deploy_flow Environments.DeployFlow}.
          # @!attribute [rw] environment
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Environment]
          #     The updated environment where the flow is deployed.
          # @!attribute [rw] deployment
          #   @return [::String]
          #     The name of the flow version {::Google::Cloud::Dialogflow::CX::V3::Deployment Deployment}.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/
          #     environments/<Environment ID>/deployments/<Deployment ID>`.
          class DeployFlowResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata returned for the {::Google::Cloud::Dialogflow::CX::V3::Environments::Client#deploy_flow Environments.DeployFlow} long running
          # operation.
          # @!attribute [rw] test_errors
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::TestError>]
          #     Errors of running deployment tests.
          class DeployFlowMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
