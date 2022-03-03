# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/participant.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/audio_config_pb'
require 'google/cloud/dialogflow/v2/session_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/v2/participant.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.v2.Participant" do
      optional :name, :string, 1
      optional :role, :enum, 2, "google.cloud.dialogflow.v2.Participant.Role"
      optional :sip_recording_media_label, :string, 6
      map :documents_metadata_filters, :string, :string, 8
    end
    add_enum "google.cloud.dialogflow.v2.Participant.Role" do
      value :ROLE_UNSPECIFIED, 0
      value :HUMAN_AGENT, 1
      value :AUTOMATED_AGENT, 2
      value :END_USER, 3
    end
    add_message "google.cloud.dialogflow.v2.Message" do
      optional :name, :string, 1
      optional :content, :string, 2
      optional :language_code, :string, 3
      optional :participant, :string, 4
      optional :participant_role, :enum, 5, "google.cloud.dialogflow.v2.Participant.Role"
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :send_time, :message, 9, "google.protobuf.Timestamp"
      optional :message_annotation, :message, 7, "google.cloud.dialogflow.v2.MessageAnnotation"
      optional :sentiment_analysis, :message, 8, "google.cloud.dialogflow.v2.SentimentAnalysisResult"
    end
    add_message "google.cloud.dialogflow.v2.CreateParticipantRequest" do
      optional :parent, :string, 1
      optional :participant, :message, 2, "google.cloud.dialogflow.v2.Participant"
    end
    add_message "google.cloud.dialogflow.v2.GetParticipantRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.ListParticipantsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dialogflow.v2.ListParticipantsResponse" do
      repeated :participants, :message, 1, "google.cloud.dialogflow.v2.Participant"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dialogflow.v2.UpdateParticipantRequest" do
      optional :participant, :message, 1, "google.cloud.dialogflow.v2.Participant"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.dialogflow.v2.AnalyzeContentRequest" do
      optional :participant, :string, 1
      optional :reply_audio_config, :message, 5, "google.cloud.dialogflow.v2.OutputAudioConfig"
      optional :query_params, :message, 9, "google.cloud.dialogflow.v2.QueryParameters"
      optional :assist_query_params, :message, 14, "google.cloud.dialogflow.v2.AssistQueryParameters"
      optional :request_id, :string, 11
      oneof :input do
        optional :text_input, :message, 6, "google.cloud.dialogflow.v2.TextInput"
        optional :event_input, :message, 8, "google.cloud.dialogflow.v2.EventInput"
      end
    end
    add_message "google.cloud.dialogflow.v2.DtmfParameters" do
      optional :accepts_dtmf_input, :bool, 1
    end
    add_message "google.cloud.dialogflow.v2.AnalyzeContentResponse" do
      optional :reply_text, :string, 1
      optional :reply_audio, :message, 2, "google.cloud.dialogflow.v2.OutputAudio"
      optional :automated_agent_reply, :message, 3, "google.cloud.dialogflow.v2.AutomatedAgentReply"
      optional :message, :message, 5, "google.cloud.dialogflow.v2.Message"
      repeated :human_agent_suggestion_results, :message, 6, "google.cloud.dialogflow.v2.SuggestionResult"
      repeated :end_user_suggestion_results, :message, 7, "google.cloud.dialogflow.v2.SuggestionResult"
      optional :dtmf_parameters, :message, 9, "google.cloud.dialogflow.v2.DtmfParameters"
    end
    add_message "google.cloud.dialogflow.v2.SuggestArticlesRequest" do
      optional :parent, :string, 1
      optional :latest_message, :string, 2
      optional :context_size, :int32, 3
      optional :assist_query_params, :message, 4, "google.cloud.dialogflow.v2.AssistQueryParameters"
    end
    add_message "google.cloud.dialogflow.v2.SuggestArticlesResponse" do
      repeated :article_answers, :message, 1, "google.cloud.dialogflow.v2.ArticleAnswer"
      optional :latest_message, :string, 2
      optional :context_size, :int32, 3
    end
    add_message "google.cloud.dialogflow.v2.SuggestFaqAnswersRequest" do
      optional :parent, :string, 1
      optional :latest_message, :string, 2
      optional :context_size, :int32, 3
      optional :assist_query_params, :message, 4, "google.cloud.dialogflow.v2.AssistQueryParameters"
    end
    add_message "google.cloud.dialogflow.v2.SuggestFaqAnswersResponse" do
      repeated :faq_answers, :message, 1, "google.cloud.dialogflow.v2.FaqAnswer"
      optional :latest_message, :string, 2
      optional :context_size, :int32, 3
    end
    add_message "google.cloud.dialogflow.v2.SuggestSmartRepliesRequest" do
      optional :parent, :string, 1
      optional :current_text_input, :message, 4, "google.cloud.dialogflow.v2.TextInput"
      optional :latest_message, :string, 2
      optional :context_size, :int32, 3
    end
    add_message "google.cloud.dialogflow.v2.SuggestSmartRepliesResponse" do
      repeated :smart_reply_answers, :message, 1, "google.cloud.dialogflow.v2.SmartReplyAnswer"
      optional :latest_message, :string, 2
      optional :context_size, :int32, 3
    end
    add_message "google.cloud.dialogflow.v2.OutputAudio" do
      optional :config, :message, 1, "google.cloud.dialogflow.v2.OutputAudioConfig"
      optional :audio, :bytes, 2
    end
    add_message "google.cloud.dialogflow.v2.AutomatedAgentReply" do
      optional :detect_intent_response, :message, 1, "google.cloud.dialogflow.v2.DetectIntentResponse"
      optional :automated_agent_reply_type, :enum, 7, "google.cloud.dialogflow.v2.AutomatedAgentReply.AutomatedAgentReplyType"
      optional :allow_cancellation, :bool, 8
    end
    add_enum "google.cloud.dialogflow.v2.AutomatedAgentReply.AutomatedAgentReplyType" do
      value :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED, 0
      value :PARTIAL, 1
      value :FINAL, 2
    end
    add_message "google.cloud.dialogflow.v2.ArticleAnswer" do
      optional :title, :string, 1
      optional :uri, :string, 2
      repeated :snippets, :string, 3
      optional :confidence, :float, 4
      map :metadata, :string, :string, 5
      optional :answer_record, :string, 6
    end
    add_message "google.cloud.dialogflow.v2.FaqAnswer" do
      optional :answer, :string, 1
      optional :confidence, :float, 2
      optional :question, :string, 3
      optional :source, :string, 4
      map :metadata, :string, :string, 5
      optional :answer_record, :string, 6
    end
    add_message "google.cloud.dialogflow.v2.SmartReplyAnswer" do
      optional :reply, :string, 1
      optional :confidence, :float, 2
      optional :answer_record, :string, 3
    end
    add_message "google.cloud.dialogflow.v2.SuggestionResult" do
      oneof :suggestion_response do
        optional :error, :message, 1, "google.rpc.Status"
        optional :suggest_articles_response, :message, 2, "google.cloud.dialogflow.v2.SuggestArticlesResponse"
        optional :suggest_faq_answers_response, :message, 3, "google.cloud.dialogflow.v2.SuggestFaqAnswersResponse"
        optional :suggest_smart_replies_response, :message, 4, "google.cloud.dialogflow.v2.SuggestSmartRepliesResponse"
      end
    end
    add_message "google.cloud.dialogflow.v2.AnnotatedMessagePart" do
      optional :text, :string, 1
      optional :entity_type, :string, 2
      optional :formatted_value, :message, 3, "google.protobuf.Value"
    end
    add_message "google.cloud.dialogflow.v2.MessageAnnotation" do
      repeated :parts, :message, 1, "google.cloud.dialogflow.v2.AnnotatedMessagePart"
      optional :contain_entities, :bool, 2
    end
    add_message "google.cloud.dialogflow.v2.AssistQueryParameters" do
      map :documents_metadata_filters, :string, :string, 1
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        Participant = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Participant").msgclass
        Participant::Role = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Participant.Role").enummodule
        Message = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Message").msgclass
        CreateParticipantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateParticipantRequest").msgclass
        GetParticipantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetParticipantRequest").msgclass
        ListParticipantsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListParticipantsRequest").msgclass
        ListParticipantsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListParticipantsResponse").msgclass
        UpdateParticipantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateParticipantRequest").msgclass
        AnalyzeContentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AnalyzeContentRequest").msgclass
        DtmfParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DtmfParameters").msgclass
        AnalyzeContentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AnalyzeContentResponse").msgclass
        SuggestArticlesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestArticlesRequest").msgclass
        SuggestArticlesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestArticlesResponse").msgclass
        SuggestFaqAnswersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestFaqAnswersRequest").msgclass
        SuggestFaqAnswersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestFaqAnswersResponse").msgclass
        SuggestSmartRepliesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestSmartRepliesRequest").msgclass
        SuggestSmartRepliesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestSmartRepliesResponse").msgclass
        OutputAudio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.OutputAudio").msgclass
        AutomatedAgentReply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AutomatedAgentReply").msgclass
        AutomatedAgentReply::AutomatedAgentReplyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AutomatedAgentReply.AutomatedAgentReplyType").enummodule
        ArticleAnswer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ArticleAnswer").msgclass
        FaqAnswer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.FaqAnswer").msgclass
        SmartReplyAnswer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SmartReplyAnswer").msgclass
        SuggestionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestionResult").msgclass
        AnnotatedMessagePart = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AnnotatedMessagePart").msgclass
        MessageAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.MessageAnnotation").msgclass
        AssistQueryParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AssistQueryParameters").msgclass
      end
    end
  end
end
