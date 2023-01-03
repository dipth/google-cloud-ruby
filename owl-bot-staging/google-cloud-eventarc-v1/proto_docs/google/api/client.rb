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
  module Api
    # Required information for every language.
    # @!attribute [rw] reference_docs_uri
    #   @return [::String]
    #     Link to automatically generated reference documentation.  Example:
    #     https://cloud.google.com/nodejs/docs/reference/asset/latest
    # @!attribute [rw] destinations
    #   @return [::Array<::Google::Api::ClientLibraryDestination>]
    #     The destination where API teams want this client library to be published.
    class CommonLanguageSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Details about how and where to publish client libraries.
    # @!attribute [rw] version
    #   @return [::String]
    #     Version of the API to apply these settings to.
    # @!attribute [rw] launch_stage
    #   @return [::Google::Api::LaunchStage]
    #     Launch stage of this version of the API.
    # @!attribute [rw] rest_numeric_enums
    #   @return [::Boolean]
    #     When using transport=rest, the client request will encode enums as
    #     numbers rather than strings.
    # @!attribute [rw] java_settings
    #   @return [::Google::Api::JavaSettings]
    #     Settings for legacy Java features, supported in the Service YAML.
    # @!attribute [rw] cpp_settings
    #   @return [::Google::Api::CppSettings]
    #     Settings for C++ client libraries.
    # @!attribute [rw] php_settings
    #   @return [::Google::Api::PhpSettings]
    #     Settings for PHP client libraries.
    # @!attribute [rw] python_settings
    #   @return [::Google::Api::PythonSettings]
    #     Settings for Python client libraries.
    # @!attribute [rw] node_settings
    #   @return [::Google::Api::NodeSettings]
    #     Settings for Node client libraries.
    # @!attribute [rw] dotnet_settings
    #   @return [::Google::Api::DotnetSettings]
    #     Settings for .NET client libraries.
    # @!attribute [rw] ruby_settings
    #   @return [::Google::Api::RubySettings]
    #     Settings for Ruby client libraries.
    # @!attribute [rw] go_settings
    #   @return [::Google::Api::GoSettings]
    #     Settings for Go client libraries.
    class ClientLibrarySettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # This message configures the settings for publishing [Google Cloud Client
    # libraries](https://cloud.google.com/apis/docs/cloud-client-libraries)
    # generated from the service config.
    # @!attribute [rw] method_settings
    #   @return [::Array<::Google::Api::MethodSettings>]
    #     A list of API method settings, e.g. the behavior for methods that use the
    #     long-running operation pattern.
    # @!attribute [rw] new_issue_uri
    #   @return [::String]
    #     Link to a place that API users can report issues.  Example:
    #     https://issuetracker.google.com/issues/new?component=190865&template=1161103
    # @!attribute [rw] documentation_uri
    #   @return [::String]
    #     Link to product home page.  Example:
    #     https://cloud.google.com/asset-inventory/docs/overview
    # @!attribute [rw] api_short_name
    #   @return [::String]
    #     Used as a tracking tag when collecting data about the APIs developer
    #     relations artifacts like docs, packages delivered to package managers,
    #     etc.  Example: "speech".
    # @!attribute [rw] github_label
    #   @return [::String]
    #     GitHub label to apply to issues and pull requests opened for this API.
    # @!attribute [rw] codeowner_github_teams
    #   @return [::Array<::String>]
    #     GitHub teams to be added to CODEOWNERS in the directory in GitHub
    #     containing source code for the client libraries for this API.
    # @!attribute [rw] doc_tag_prefix
    #   @return [::String]
    #     A prefix used in sample code when demarking regions to be included in
    #     documentation.
    # @!attribute [rw] organization
    #   @return [::Google::Api::ClientLibraryOrganization]
    #     For whom the client library is being published.
    # @!attribute [rw] library_settings
    #   @return [::Array<::Google::Api::ClientLibrarySettings>]
    #     Client library settings.  If the same version string appears multiple
    #     times in this list, then the last one wins.  Settings from earlier
    #     settings with the same version string are discarded.
    class Publishing
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Settings for Java client libraries.
    # @!attribute [rw] library_package
    #   @return [::String]
    #     The package name to use in Java. Clobbers the java_package option
    #     set in the protobuf. This should be used **only** by APIs
    #     who have already set the language_settings.java.package_name" field
    #     in gapic.yaml. API teams should use the protobuf java_package option
    #     where possible.
    #
    #     Example of a YAML configuration::
    #
    #      publishing:
    #        java_settings:
    #          library_package: com.google.cloud.pubsub.v1
    # @!attribute [rw] service_class_names
    #   @return [::Google::Protobuf::Map{::String => ::String}]
    #     Configure the Java class name to use instead of the service's for its
    #     corresponding generated GAPIC client. Keys are fully-qualified
    #     service names as they appear in the protobuf (including the full
    #     the language_settings.java.interface_names" field in gapic.yaml. API
    #     teams should otherwise use the service name as it appears in the
    #     protobuf.
    #
    #     Example of a YAML configuration::
    #
    #      publishing:
    #        java_settings:
    #          service_class_names:
    #            - google.pubsub.v1.Publisher: TopicAdmin
    #            - google.pubsub.v1.Subscriber: SubscriptionAdmin
    # @!attribute [rw] common
    #   @return [::Google::Api::CommonLanguageSettings]
    #     Some settings.
    class JavaSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # @!attribute [rw] key
      #   @return [::String]
      # @!attribute [rw] value
      #   @return [::String]
      class ServiceClassNamesEntry
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end

    # Settings for C++ client libraries.
    # @!attribute [rw] common
    #   @return [::Google::Api::CommonLanguageSettings]
    #     Some settings.
    class CppSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Settings for Php client libraries.
    # @!attribute [rw] common
    #   @return [::Google::Api::CommonLanguageSettings]
    #     Some settings.
    class PhpSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Settings for Python client libraries.
    # @!attribute [rw] common
    #   @return [::Google::Api::CommonLanguageSettings]
    #     Some settings.
    class PythonSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Settings for Node client libraries.
    # @!attribute [rw] common
    #   @return [::Google::Api::CommonLanguageSettings]
    #     Some settings.
    class NodeSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Settings for Dotnet client libraries.
    # @!attribute [rw] common
    #   @return [::Google::Api::CommonLanguageSettings]
    #     Some settings.
    class DotnetSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Settings for Ruby client libraries.
    # @!attribute [rw] common
    #   @return [::Google::Api::CommonLanguageSettings]
    #     Some settings.
    class RubySettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Settings for Go client libraries.
    # @!attribute [rw] common
    #   @return [::Google::Api::CommonLanguageSettings]
    #     Some settings.
    class GoSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Describes the generator configuration for a method.
    # @!attribute [rw] selector
    #   @return [::String]
    #     The fully qualified name of the method, for which the options below apply.
    #     This is used to find the method to apply the options.
    # @!attribute [rw] long_running
    #   @return [::Google::Api::MethodSettings::LongRunning]
    #     Describes settings to use for long-running operations when generating
    #     API methods for RPCs. Complements RPCs that use the annotations in
    #     google/longrunning/operations.proto.
    #
    #     Example of a YAML configuration::
    #
    #      publishing:
    #        method_behavior:
    #          - selector: CreateAdDomain
    #            long_running:
    #              initial_poll_delay:
    #                seconds: 60 # 1 minute
    #              poll_delay_multiplier: 1.5
    #              max_poll_delay:
    #                seconds: 360 # 6 minutes
    #              total_poll_timeout:
    #                 seconds: 54000 # 90 minutes
    class MethodSettings
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # Describes settings to use when generating API methods that use the
      # long-running operation pattern.
      # All default values below are from those used in the client library
      # generators (e.g.
      # [Java](https://github.com/googleapis/gapic-generator-java/blob/04c2faa191a9b5a10b92392fe8482279c4404803/src/main/java/com/google/api/generator/gapic/composer/common/RetrySettingsComposer.java)).
      # @!attribute [rw] initial_poll_delay
      #   @return [::Google::Protobuf::Duration]
      #     Initial delay after which the first poll request will be made.
      #     Default value: 5 seconds.
      # @!attribute [rw] poll_delay_multiplier
      #   @return [::Float]
      #     Multiplier to gradually increase delay between subsequent polls until it
      #     reaches max_poll_delay.
      #     Default value: 1.5.
      # @!attribute [rw] max_poll_delay
      #   @return [::Google::Protobuf::Duration]
      #     Maximum time between two subsequent poll requests.
      #     Default value: 45 seconds.
      # @!attribute [rw] total_poll_timeout
      #   @return [::Google::Protobuf::Duration]
      #     Total polling timeout.
      #     Default value: 5 minutes.
      class LongRunning
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end

    # The organization for which the client libraries are being published.
    # Affects the url where generated docs are published, etc.
    module ClientLibraryOrganization
      # Not useful.
      CLIENT_LIBRARY_ORGANIZATION_UNSPECIFIED = 0

      # Google Cloud Platform Org.
      CLOUD = 1

      # Ads (Advertising) Org.
      ADS = 2

      # Photos Org.
      PHOTOS = 3

      # Street View Org.
      STREET_VIEW = 4
    end

    # To where should client libraries be published?
    module ClientLibraryDestination
      # Client libraries will neither be generated nor published to package
      # managers.
      CLIENT_LIBRARY_DESTINATION_UNSPECIFIED = 0

      # Generate the client library in a repo under github.com/googleapis,
      # but don't publish it to package managers.
      GITHUB = 10

      # Publish the library to package managers like nuget.org and npmjs.com.
      PACKAGE_MANAGER = 20
    end
  end
end
