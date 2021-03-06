// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: cartographer/mapping/proto/motion_filter_options.proto

#ifndef PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2fmotion_5ffilter_5foptions_2eproto
#define PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2fmotion_5ffilter_5foptions_2eproto

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 3006000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 3006000 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_table_driven.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/inlined_string_field.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)
#define PROTOBUF_INTERNAL_EXPORT_protobuf_cartographer_2fmapping_2fproto_2fmotion_5ffilter_5foptions_2eproto 

namespace protobuf_cartographer_2fmapping_2fproto_2fmotion_5ffilter_5foptions_2eproto {
// Internal implementation detail -- do not use these members.
struct TableStruct {
  static const ::google::protobuf::internal::ParseTableField entries[];
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[];
  static const ::google::protobuf::internal::ParseTable schema[1];
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static const ::google::protobuf::uint32 offsets[];
};
void AddDescriptors();
}  // namespace protobuf_cartographer_2fmapping_2fproto_2fmotion_5ffilter_5foptions_2eproto
namespace cartographer {
namespace mapping {
namespace proto {
class MotionFilterOptions;
class MotionFilterOptionsDefaultTypeInternal;
extern MotionFilterOptionsDefaultTypeInternal _MotionFilterOptions_default_instance_;
}  // namespace proto
}  // namespace mapping
}  // namespace cartographer
namespace google {
namespace protobuf {
template<> ::cartographer::mapping::proto::MotionFilterOptions* Arena::CreateMaybeMessage<::cartographer::mapping::proto::MotionFilterOptions>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace cartographer {
namespace mapping {
namespace proto {

// ===================================================================

class MotionFilterOptions : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:cartographer.mapping.proto.MotionFilterOptions) */ {
 public:
  MotionFilterOptions();
  virtual ~MotionFilterOptions();

  MotionFilterOptions(const MotionFilterOptions& from);

  inline MotionFilterOptions& operator=(const MotionFilterOptions& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  MotionFilterOptions(MotionFilterOptions&& from) noexcept
    : MotionFilterOptions() {
    *this = ::std::move(from);
  }

  inline MotionFilterOptions& operator=(MotionFilterOptions&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const MotionFilterOptions& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const MotionFilterOptions* internal_default_instance() {
    return reinterpret_cast<const MotionFilterOptions*>(
               &_MotionFilterOptions_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  void Swap(MotionFilterOptions* other);
  friend void swap(MotionFilterOptions& a, MotionFilterOptions& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline MotionFilterOptions* New() const final {
    return CreateMaybeMessage<MotionFilterOptions>(NULL);
  }

  MotionFilterOptions* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<MotionFilterOptions>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const MotionFilterOptions& from);
  void MergeFrom(const MotionFilterOptions& from);
  void Clear() final;
  bool IsInitialized() const final;

  size_t ByteSizeLong() const final;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) final;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const final;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const final;
  int GetCachedSize() const final { return _cached_size_.Get(); }

  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const final;
  void InternalSwap(MotionFilterOptions* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // double max_time_seconds = 1;
  void clear_max_time_seconds();
  static const int kMaxTimeSecondsFieldNumber = 1;
  double max_time_seconds() const;
  void set_max_time_seconds(double value);

  // double max_distance_meters = 2;
  void clear_max_distance_meters();
  static const int kMaxDistanceMetersFieldNumber = 2;
  double max_distance_meters() const;
  void set_max_distance_meters(double value);

  // double max_angle_radians = 3;
  void clear_max_angle_radians();
  static const int kMaxAngleRadiansFieldNumber = 3;
  double max_angle_radians() const;
  void set_max_angle_radians(double value);

  // @@protoc_insertion_point(class_scope:cartographer.mapping.proto.MotionFilterOptions)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  double max_time_seconds_;
  double max_distance_meters_;
  double max_angle_radians_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  friend struct ::protobuf_cartographer_2fmapping_2fproto_2fmotion_5ffilter_5foptions_2eproto::TableStruct;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// MotionFilterOptions

// double max_time_seconds = 1;
inline void MotionFilterOptions::clear_max_time_seconds() {
  max_time_seconds_ = 0;
}
inline double MotionFilterOptions::max_time_seconds() const {
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.MotionFilterOptions.max_time_seconds)
  return max_time_seconds_;
}
inline void MotionFilterOptions::set_max_time_seconds(double value) {
  
  max_time_seconds_ = value;
  // @@protoc_insertion_point(field_set:cartographer.mapping.proto.MotionFilterOptions.max_time_seconds)
}

// double max_distance_meters = 2;
inline void MotionFilterOptions::clear_max_distance_meters() {
  max_distance_meters_ = 0;
}
inline double MotionFilterOptions::max_distance_meters() const {
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.MotionFilterOptions.max_distance_meters)
  return max_distance_meters_;
}
inline void MotionFilterOptions::set_max_distance_meters(double value) {
  
  max_distance_meters_ = value;
  // @@protoc_insertion_point(field_set:cartographer.mapping.proto.MotionFilterOptions.max_distance_meters)
}

// double max_angle_radians = 3;
inline void MotionFilterOptions::clear_max_angle_radians() {
  max_angle_radians_ = 0;
}
inline double MotionFilterOptions::max_angle_radians() const {
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.MotionFilterOptions.max_angle_radians)
  return max_angle_radians_;
}
inline void MotionFilterOptions::set_max_angle_radians(double value) {
  
  max_angle_radians_ = value;
  // @@protoc_insertion_point(field_set:cartographer.mapping.proto.MotionFilterOptions.max_angle_radians)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace proto
}  // namespace mapping
}  // namespace cartographer

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2fmotion_5ffilter_5foptions_2eproto
