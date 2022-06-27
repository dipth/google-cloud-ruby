# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Recommender
      module V1
        module Recommender
          # Path helper methods for the Recommender API.
          module Paths
            ##
            # Create a fully-qualified Insight resource string.
            #
            # @overload insight_path(project:, location:, insight_type:, insight:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/insightTypes/{insight_type}/insights/{insight}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param insight_type [String]
            #   @param insight [String]
            #
            # @overload insight_path(billing_account:, location:, insight_type:, insight:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/locations/{location}/insightTypes/{insight_type}/insights/{insight}`
            #
            #   @param billing_account [String]
            #   @param location [String]
            #   @param insight_type [String]
            #   @param insight [String]
            #
            # @overload insight_path(folder:, location:, insight_type:, insight:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/locations/{location}/insightTypes/{insight_type}/insights/{insight}`
            #
            #   @param folder [String]
            #   @param location [String]
            #   @param insight_type [String]
            #   @param insight [String]
            #
            # @overload insight_path(organization:, location:, insight_type:, insight:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/locations/{location}/insightTypes/{insight_type}/insights/{insight}`
            #
            #   @param organization [String]
            #   @param location [String]
            #   @param insight_type [String]
            #   @param insight [String]
            #
            # @return [::String]
            def insight_path **args
              resources = {
                "insight:insight_type:location:project" => (proc do |project:, location:, insight_type:, insight:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "insight_type cannot contain /" if insight_type.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/insightTypes/#{insight_type}/insights/#{insight}"
                end),
                "billing_account:insight:insight_type:location" => (proc do |billing_account:, location:, insight_type:, insight:|
                  raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "insight_type cannot contain /" if insight_type.to_s.include? "/"

                  "billingAccounts/#{billing_account}/locations/#{location}/insightTypes/#{insight_type}/insights/#{insight}"
                end),
                "folder:insight:insight_type:location" => (proc do |folder:, location:, insight_type:, insight:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "insight_type cannot contain /" if insight_type.to_s.include? "/"

                  "folders/#{folder}/locations/#{location}/insightTypes/#{insight_type}/insights/#{insight}"
                end),
                "insight:insight_type:location:organization" => (proc do |organization:, location:, insight_type:, insight:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "insight_type cannot contain /" if insight_type.to_s.include? "/"

                  "organizations/#{organization}/locations/#{location}/insightTypes/#{insight_type}/insights/#{insight}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified InsightType resource string.
            #
            # @overload insight_type_path(project:, location:, insight_type:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/insightTypes/{insight_type}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param insight_type [String]
            #
            # @overload insight_type_path(billing_account:, location:, insight_type:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/locations/{location}/insightTypes/{insight_type}`
            #
            #   @param billing_account [String]
            #   @param location [String]
            #   @param insight_type [String]
            #
            # @overload insight_type_path(folder:, location:, insight_type:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/locations/{location}/insightTypes/{insight_type}`
            #
            #   @param folder [String]
            #   @param location [String]
            #   @param insight_type [String]
            #
            # @overload insight_type_path(organization:, location:, insight_type:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/locations/{location}/insightTypes/{insight_type}`
            #
            #   @param organization [String]
            #   @param location [String]
            #   @param insight_type [String]
            #
            # @return [::String]
            def insight_type_path **args
              resources = {
                "insight_type:location:project" => (proc do |project:, location:, insight_type:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/insightTypes/#{insight_type}"
                end),
                "billing_account:insight_type:location" => (proc do |billing_account:, location:, insight_type:|
                  raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "billingAccounts/#{billing_account}/locations/#{location}/insightTypes/#{insight_type}"
                end),
                "folder:insight_type:location" => (proc do |folder:, location:, insight_type:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "folders/#{folder}/locations/#{location}/insightTypes/#{insight_type}"
                end),
                "insight_type:location:organization" => (proc do |organization:, location:, insight_type:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "organizations/#{organization}/locations/#{location}/insightTypes/#{insight_type}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified InsightTypeConfig resource string.
            #
            # @overload insight_type_config_path(project:, location:, insight_type:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/insightTypes/{insight_type}/config`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param insight_type [String]
            #
            # @overload insight_type_config_path(organization:, location:, insight_type:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/locations/{location}/insightTypes/{insight_type}/config`
            #
            #   @param organization [String]
            #   @param location [String]
            #   @param insight_type [String]
            #
            # @return [::String]
            def insight_type_config_path **args
              resources = {
                "insight_type:location:project" => (proc do |project:, location:, insight_type:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/insightTypes/#{insight_type}/config"
                end),
                "insight_type:location:organization" => (proc do |organization:, location:, insight_type:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "organizations/#{organization}/locations/#{location}/insightTypes/#{insight_type}/config"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Recommendation resource string.
            #
            # @overload recommendation_path(project:, location:, recommender:, recommendation:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/recommenders/{recommender}/recommendations/{recommendation}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param recommender [String]
            #   @param recommendation [String]
            #
            # @overload recommendation_path(billing_account:, location:, recommender:, recommendation:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/locations/{location}/recommenders/{recommender}/recommendations/{recommendation}`
            #
            #   @param billing_account [String]
            #   @param location [String]
            #   @param recommender [String]
            #   @param recommendation [String]
            #
            # @overload recommendation_path(folder:, location:, recommender:, recommendation:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/locations/{location}/recommenders/{recommender}/recommendations/{recommendation}`
            #
            #   @param folder [String]
            #   @param location [String]
            #   @param recommender [String]
            #   @param recommendation [String]
            #
            # @overload recommendation_path(organization:, location:, recommender:, recommendation:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/locations/{location}/recommenders/{recommender}/recommendations/{recommendation}`
            #
            #   @param organization [String]
            #   @param location [String]
            #   @param recommender [String]
            #   @param recommendation [String]
            #
            # @return [::String]
            def recommendation_path **args
              resources = {
                "location:project:recommendation:recommender" => (proc do |project:, location:, recommender:, recommendation:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "recommender cannot contain /" if recommender.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/recommenders/#{recommender}/recommendations/#{recommendation}"
                end),
                "billing_account:location:recommendation:recommender" => (proc do |billing_account:, location:, recommender:, recommendation:|
                  raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "recommender cannot contain /" if recommender.to_s.include? "/"

                  "billingAccounts/#{billing_account}/locations/#{location}/recommenders/#{recommender}/recommendations/#{recommendation}"
                end),
                "folder:location:recommendation:recommender" => (proc do |folder:, location:, recommender:, recommendation:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "recommender cannot contain /" if recommender.to_s.include? "/"

                  "folders/#{folder}/locations/#{location}/recommenders/#{recommender}/recommendations/#{recommendation}"
                end),
                "location:organization:recommendation:recommender" => (proc do |organization:, location:, recommender:, recommendation:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "recommender cannot contain /" if recommender.to_s.include? "/"

                  "organizations/#{organization}/locations/#{location}/recommenders/#{recommender}/recommendations/#{recommendation}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Recommender resource string.
            #
            # @overload recommender_path(project:, location:, recommender:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/recommenders/{recommender}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param recommender [String]
            #
            # @overload recommender_path(billing_account:, location:, recommender:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/locations/{location}/recommenders/{recommender}`
            #
            #   @param billing_account [String]
            #   @param location [String]
            #   @param recommender [String]
            #
            # @overload recommender_path(folder:, location:, recommender:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/locations/{location}/recommenders/{recommender}`
            #
            #   @param folder [String]
            #   @param location [String]
            #   @param recommender [String]
            #
            # @overload recommender_path(organization:, location:, recommender:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/locations/{location}/recommenders/{recommender}`
            #
            #   @param organization [String]
            #   @param location [String]
            #   @param recommender [String]
            #
            # @return [::String]
            def recommender_path **args
              resources = {
                "location:project:recommender" => (proc do |project:, location:, recommender:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/recommenders/#{recommender}"
                end),
                "billing_account:location:recommender" => (proc do |billing_account:, location:, recommender:|
                  raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "billingAccounts/#{billing_account}/locations/#{location}/recommenders/#{recommender}"
                end),
                "folder:location:recommender" => (proc do |folder:, location:, recommender:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "folders/#{folder}/locations/#{location}/recommenders/#{recommender}"
                end),
                "location:organization:recommender" => (proc do |organization:, location:, recommender:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "organizations/#{organization}/locations/#{location}/recommenders/#{recommender}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified RecommenderConfig resource string.
            #
            # @overload recommender_config_path(project:, location:, recommender:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/recommenders/{recommender}/config`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param recommender [String]
            #
            # @overload recommender_config_path(organization:, location:, recommender:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/locations/{location}/recommenders/{recommender}/config`
            #
            #   @param organization [String]
            #   @param location [String]
            #   @param recommender [String]
            #
            # @return [::String]
            def recommender_config_path **args
              resources = {
                "location:project:recommender" => (proc do |project:, location:, recommender:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/recommenders/#{recommender}/config"
                end),
                "location:organization:recommender" => (proc do |organization:, location:, recommender:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "organizations/#{organization}/locations/#{location}/recommenders/#{recommender}/config"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            extend self
          end
        end
      end
    end
  end
end
