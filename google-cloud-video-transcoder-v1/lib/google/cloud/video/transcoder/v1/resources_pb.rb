# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/transcoder/v1/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/video/transcoder/v1/resources.proto", :syntax => :proto3) do
    add_message "google.cloud.video.transcoder.v1.Job" do
      optional :name, :string, 1
      optional :input_uri, :string, 2
      optional :output_uri, :string, 3
      optional :state, :enum, 8, "google.cloud.video.transcoder.v1.Job.ProcessingState"
      optional :create_time, :message, 12, "google.protobuf.Timestamp"
      optional :start_time, :message, 13, "google.protobuf.Timestamp"
      optional :end_time, :message, 14, "google.protobuf.Timestamp"
      optional :ttl_after_completion_days, :int32, 15
      map :labels, :string, :string, 16
      optional :error, :message, 17, "google.rpc.Status"
      oneof :job_config do
        optional :template_id, :string, 4
        optional :config, :message, 5, "google.cloud.video.transcoder.v1.JobConfig"
      end
    end
    add_enum "google.cloud.video.transcoder.v1.Job.ProcessingState" do
      value :PROCESSING_STATE_UNSPECIFIED, 0
      value :PENDING, 1
      value :RUNNING, 2
      value :SUCCEEDED, 3
      value :FAILED, 4
    end
    add_message "google.cloud.video.transcoder.v1.JobTemplate" do
      optional :name, :string, 1
      optional :config, :message, 2, "google.cloud.video.transcoder.v1.JobConfig"
      map :labels, :string, :string, 3
    end
    add_message "google.cloud.video.transcoder.v1.JobConfig" do
      repeated :inputs, :message, 1, "google.cloud.video.transcoder.v1.Input"
      repeated :edit_list, :message, 2, "google.cloud.video.transcoder.v1.EditAtom"
      repeated :elementary_streams, :message, 3, "google.cloud.video.transcoder.v1.ElementaryStream"
      repeated :mux_streams, :message, 4, "google.cloud.video.transcoder.v1.MuxStream"
      repeated :manifests, :message, 5, "google.cloud.video.transcoder.v1.Manifest"
      optional :output, :message, 6, "google.cloud.video.transcoder.v1.Output"
      repeated :ad_breaks, :message, 7, "google.cloud.video.transcoder.v1.AdBreak"
      optional :pubsub_destination, :message, 8, "google.cloud.video.transcoder.v1.PubsubDestination"
      repeated :sprite_sheets, :message, 9, "google.cloud.video.transcoder.v1.SpriteSheet"
      repeated :overlays, :message, 10, "google.cloud.video.transcoder.v1.Overlay"
    end
    add_message "google.cloud.video.transcoder.v1.Input" do
      optional :key, :string, 1
      optional :uri, :string, 2
      optional :preprocessing_config, :message, 3, "google.cloud.video.transcoder.v1.PreprocessingConfig"
    end
    add_message "google.cloud.video.transcoder.v1.Output" do
      optional :uri, :string, 1
    end
    add_message "google.cloud.video.transcoder.v1.EditAtom" do
      optional :key, :string, 1
      repeated :inputs, :string, 2
      optional :end_time_offset, :message, 3, "google.protobuf.Duration"
      optional :start_time_offset, :message, 4, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1.AdBreak" do
      optional :start_time_offset, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1.ElementaryStream" do
      optional :key, :string, 4
      oneof :elementary_stream do
        optional :video_stream, :message, 1, "google.cloud.video.transcoder.v1.VideoStream"
        optional :audio_stream, :message, 2, "google.cloud.video.transcoder.v1.AudioStream"
        optional :text_stream, :message, 3, "google.cloud.video.transcoder.v1.TextStream"
      end
    end
    add_message "google.cloud.video.transcoder.v1.MuxStream" do
      optional :key, :string, 1
      optional :file_name, :string, 2
      optional :container, :string, 3
      repeated :elementary_streams, :string, 4
      optional :segment_settings, :message, 5, "google.cloud.video.transcoder.v1.SegmentSettings"
    end
    add_message "google.cloud.video.transcoder.v1.Manifest" do
      optional :file_name, :string, 1
      optional :type, :enum, 2, "google.cloud.video.transcoder.v1.Manifest.ManifestType"
      repeated :mux_streams, :string, 3
    end
    add_enum "google.cloud.video.transcoder.v1.Manifest.ManifestType" do
      value :MANIFEST_TYPE_UNSPECIFIED, 0
      value :HLS, 1
      value :DASH, 2
    end
    add_message "google.cloud.video.transcoder.v1.PubsubDestination" do
      optional :topic, :string, 1
    end
    add_message "google.cloud.video.transcoder.v1.SpriteSheet" do
      optional :format, :string, 1
      optional :file_prefix, :string, 2
      optional :sprite_width_pixels, :int32, 3
      optional :sprite_height_pixels, :int32, 4
      optional :column_count, :int32, 5
      optional :row_count, :int32, 6
      optional :start_time_offset, :message, 7, "google.protobuf.Duration"
      optional :end_time_offset, :message, 8, "google.protobuf.Duration"
      optional :quality, :int32, 11
      oneof :extraction_strategy do
        optional :total_count, :int32, 9
        optional :interval, :message, 10, "google.protobuf.Duration"
      end
    end
    add_message "google.cloud.video.transcoder.v1.Overlay" do
      optional :image, :message, 1, "google.cloud.video.transcoder.v1.Overlay.Image"
      repeated :animations, :message, 2, "google.cloud.video.transcoder.v1.Overlay.Animation"
    end
    add_message "google.cloud.video.transcoder.v1.Overlay.NormalizedCoordinate" do
      optional :x, :double, 1
      optional :y, :double, 2
    end
    add_message "google.cloud.video.transcoder.v1.Overlay.Image" do
      optional :uri, :string, 1
      optional :resolution, :message, 2, "google.cloud.video.transcoder.v1.Overlay.NormalizedCoordinate"
      optional :alpha, :double, 3
    end
    add_message "google.cloud.video.transcoder.v1.Overlay.AnimationStatic" do
      optional :xy, :message, 1, "google.cloud.video.transcoder.v1.Overlay.NormalizedCoordinate"
      optional :start_time_offset, :message, 2, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1.Overlay.AnimationFade" do
      optional :fade_type, :enum, 1, "google.cloud.video.transcoder.v1.Overlay.FadeType"
      optional :xy, :message, 2, "google.cloud.video.transcoder.v1.Overlay.NormalizedCoordinate"
      optional :start_time_offset, :message, 3, "google.protobuf.Duration"
      optional :end_time_offset, :message, 4, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1.Overlay.AnimationEnd" do
      optional :start_time_offset, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1.Overlay.Animation" do
      oneof :animation_type do
        optional :animation_static, :message, 1, "google.cloud.video.transcoder.v1.Overlay.AnimationStatic"
        optional :animation_fade, :message, 2, "google.cloud.video.transcoder.v1.Overlay.AnimationFade"
        optional :animation_end, :message, 3, "google.cloud.video.transcoder.v1.Overlay.AnimationEnd"
      end
    end
    add_enum "google.cloud.video.transcoder.v1.Overlay.FadeType" do
      value :FADE_TYPE_UNSPECIFIED, 0
      value :FADE_IN, 1
      value :FADE_OUT, 2
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig" do
      optional :color, :message, 1, "google.cloud.video.transcoder.v1.PreprocessingConfig.Color"
      optional :denoise, :message, 2, "google.cloud.video.transcoder.v1.PreprocessingConfig.Denoise"
      optional :deblock, :message, 3, "google.cloud.video.transcoder.v1.PreprocessingConfig.Deblock"
      optional :audio, :message, 4, "google.cloud.video.transcoder.v1.PreprocessingConfig.Audio"
      optional :crop, :message, 5, "google.cloud.video.transcoder.v1.PreprocessingConfig.Crop"
      optional :pad, :message, 6, "google.cloud.video.transcoder.v1.PreprocessingConfig.Pad"
      optional :deinterlace, :message, 7, "google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace"
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Color" do
      optional :saturation, :double, 1
      optional :contrast, :double, 2
      optional :brightness, :double, 3
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Denoise" do
      optional :strength, :double, 1
      optional :tune, :string, 2
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Deblock" do
      optional :strength, :double, 1
      optional :enabled, :bool, 2
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Audio" do
      optional :lufs, :double, 1
      optional :high_boost, :bool, 2
      optional :low_boost, :bool, 3
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Crop" do
      optional :top_pixels, :int32, 1
      optional :bottom_pixels, :int32, 2
      optional :left_pixels, :int32, 3
      optional :right_pixels, :int32, 4
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Pad" do
      optional :top_pixels, :int32, 1
      optional :bottom_pixels, :int32, 2
      optional :left_pixels, :int32, 3
      optional :right_pixels, :int32, 4
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace" do
      oneof :deinterlacing_filter do
        optional :yadif, :message, 1, "google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace.YadifConfig"
        optional :bwdif, :message, 2, "google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace.BwdifConfig"
      end
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace.YadifConfig" do
      optional :mode, :string, 1
      optional :disable_spatial_interlacing, :bool, 2
      optional :parity, :string, 3
      optional :deinterlace_all_frames, :bool, 4
    end
    add_message "google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace.BwdifConfig" do
      optional :mode, :string, 1
      optional :parity, :string, 2
      optional :deinterlace_all_frames, :bool, 3
    end
    add_message "google.cloud.video.transcoder.v1.VideoStream" do
      oneof :codec_settings do
        optional :h264, :message, 1, "google.cloud.video.transcoder.v1.VideoStream.H264CodecSettings"
        optional :h265, :message, 2, "google.cloud.video.transcoder.v1.VideoStream.H265CodecSettings"
        optional :vp9, :message, 3, "google.cloud.video.transcoder.v1.VideoStream.Vp9CodecSettings"
      end
    end
    add_message "google.cloud.video.transcoder.v1.VideoStream.H264CodecSettings" do
      optional :width_pixels, :int32, 1
      optional :height_pixels, :int32, 2
      optional :frame_rate, :double, 3
      optional :bitrate_bps, :int32, 4
      optional :pixel_format, :string, 5
      optional :rate_control_mode, :string, 6
      optional :crf_level, :int32, 7
      optional :allow_open_gop, :bool, 8
      optional :enable_two_pass, :bool, 11
      optional :vbv_size_bits, :int32, 12
      optional :vbv_fullness_bits, :int32, 13
      optional :entropy_coder, :string, 14
      optional :b_pyramid, :bool, 15
      optional :b_frame_count, :int32, 16
      optional :aq_strength, :double, 17
      optional :profile, :string, 18
      optional :tune, :string, 19
      optional :preset, :string, 20
      oneof :gop_mode do
        optional :gop_frame_count, :int32, 9
        optional :gop_duration, :message, 10, "google.protobuf.Duration"
      end
    end
    add_message "google.cloud.video.transcoder.v1.VideoStream.H265CodecSettings" do
      optional :width_pixels, :int32, 1
      optional :height_pixels, :int32, 2
      optional :frame_rate, :double, 3
      optional :bitrate_bps, :int32, 4
      optional :pixel_format, :string, 5
      optional :rate_control_mode, :string, 6
      optional :crf_level, :int32, 7
      optional :allow_open_gop, :bool, 8
      optional :enable_two_pass, :bool, 11
      optional :vbv_size_bits, :int32, 12
      optional :vbv_fullness_bits, :int32, 13
      optional :b_pyramid, :bool, 14
      optional :b_frame_count, :int32, 15
      optional :aq_strength, :double, 16
      optional :profile, :string, 17
      optional :tune, :string, 18
      optional :preset, :string, 19
      oneof :gop_mode do
        optional :gop_frame_count, :int32, 9
        optional :gop_duration, :message, 10, "google.protobuf.Duration"
      end
    end
    add_message "google.cloud.video.transcoder.v1.VideoStream.Vp9CodecSettings" do
      optional :width_pixels, :int32, 1
      optional :height_pixels, :int32, 2
      optional :frame_rate, :double, 3
      optional :bitrate_bps, :int32, 4
      optional :pixel_format, :string, 5
      optional :rate_control_mode, :string, 6
      optional :crf_level, :int32, 7
      optional :profile, :string, 10
      oneof :gop_mode do
        optional :gop_frame_count, :int32, 8
        optional :gop_duration, :message, 9, "google.protobuf.Duration"
      end
    end
    add_message "google.cloud.video.transcoder.v1.AudioStream" do
      optional :codec, :string, 1
      optional :bitrate_bps, :int32, 2
      optional :channel_count, :int32, 3
      repeated :channel_layout, :string, 4
      repeated :mapping, :message, 5, "google.cloud.video.transcoder.v1.AudioStream.AudioMapping"
      optional :sample_rate_hertz, :int32, 6
    end
    add_message "google.cloud.video.transcoder.v1.AudioStream.AudioMapping" do
      optional :atom_key, :string, 1
      optional :input_key, :string, 2
      optional :input_track, :int32, 3
      optional :input_channel, :int32, 4
      optional :output_channel, :int32, 5
      optional :gain_db, :double, 6
    end
    add_message "google.cloud.video.transcoder.v1.TextStream" do
      optional :codec, :string, 1
      repeated :mapping, :message, 3, "google.cloud.video.transcoder.v1.TextStream.TextMapping"
    end
    add_message "google.cloud.video.transcoder.v1.TextStream.TextMapping" do
      optional :atom_key, :string, 1
      optional :input_key, :string, 2
      optional :input_track, :int32, 3
    end
    add_message "google.cloud.video.transcoder.v1.SegmentSettings" do
      optional :segment_duration, :message, 1, "google.protobuf.Duration"
      optional :individual_segments, :bool, 3
    end
  end
end

module Google
  module Cloud
    module Video
      module Transcoder
        module V1
          Job = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Job").msgclass
          Job::ProcessingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Job.ProcessingState").enummodule
          JobTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.JobTemplate").msgclass
          JobConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.JobConfig").msgclass
          Input = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Input").msgclass
          Output = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Output").msgclass
          EditAtom = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.EditAtom").msgclass
          AdBreak = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.AdBreak").msgclass
          ElementaryStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.ElementaryStream").msgclass
          MuxStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.MuxStream").msgclass
          Manifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Manifest").msgclass
          Manifest::ManifestType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Manifest.ManifestType").enummodule
          PubsubDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PubsubDestination").msgclass
          SpriteSheet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.SpriteSheet").msgclass
          Overlay = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Overlay").msgclass
          Overlay::NormalizedCoordinate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Overlay.NormalizedCoordinate").msgclass
          Overlay::Image = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Overlay.Image").msgclass
          Overlay::AnimationStatic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Overlay.AnimationStatic").msgclass
          Overlay::AnimationFade = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Overlay.AnimationFade").msgclass
          Overlay::AnimationEnd = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Overlay.AnimationEnd").msgclass
          Overlay::Animation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Overlay.Animation").msgclass
          Overlay::FadeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.Overlay.FadeType").enummodule
          PreprocessingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig").msgclass
          PreprocessingConfig::Color = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Color").msgclass
          PreprocessingConfig::Denoise = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Denoise").msgclass
          PreprocessingConfig::Deblock = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Deblock").msgclass
          PreprocessingConfig::Audio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Audio").msgclass
          PreprocessingConfig::Crop = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Crop").msgclass
          PreprocessingConfig::Pad = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Pad").msgclass
          PreprocessingConfig::Deinterlace = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace").msgclass
          PreprocessingConfig::Deinterlace::YadifConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace.YadifConfig").msgclass
          PreprocessingConfig::Deinterlace::BwdifConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.PreprocessingConfig.Deinterlace.BwdifConfig").msgclass
          VideoStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.VideoStream").msgclass
          VideoStream::H264CodecSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.VideoStream.H264CodecSettings").msgclass
          VideoStream::H265CodecSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.VideoStream.H265CodecSettings").msgclass
          VideoStream::Vp9CodecSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.VideoStream.Vp9CodecSettings").msgclass
          AudioStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.AudioStream").msgclass
          AudioStream::AudioMapping = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.AudioStream.AudioMapping").msgclass
          TextStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.TextStream").msgclass
          TextStream::TextMapping = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.TextStream.TextMapping").msgclass
          SegmentSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1.SegmentSettings").msgclass
        end
      end
    end
  end
end
