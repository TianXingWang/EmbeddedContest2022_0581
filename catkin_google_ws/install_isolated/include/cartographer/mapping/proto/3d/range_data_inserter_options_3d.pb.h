// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: cartographer/mapping/proto/3d/range_data_inserter_options_3d.proto

#ifndef PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2f3d_2frange_5fdata_5finserter_5foptions_5f3d_2eproto
#define PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2f3d_2frange_5fdata_5finserter_5foptions_5f3d_2eproto

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
#define PROTOBUF_INTERNAL_EXPORT_protobuf_cartographer_2fmapping_2fproto_2f3d_2frange_5fdata_5finserter_5foptions_5f3d_2eproto 

namespace protobuf_cartographer_2fmapping_2fproto_2f3d_2frange_5fdata_5finserter_5foptions_5f3d_2eproto {
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
}  // namespace protobuf_cartographer_2fmapping_2fproto_2f3d_2frange_5fdata_5finserter_5foptions_5f3d_2eproto
namespace cartographer {
namespace mapping {
namespace proto {
class RangeDataInserterOptions3D;
class RangeDataInserterOptions3DDefaultTypeInternal;
extern RangeDataInserterOptions3DDefaultTypeInternal _RangeDataInserterOptions3D_default_instance_;
}  // namespace proto
}  // namespace mapping
}  // namespace cartographer
namespace google {
namespace protobuf {
template<> ::cartographer::mapping::proto::RangeDataInserterOptions3D* Arena::CreateMaybeMessage<::cartographer::mapping::proto::RangeDataInserterOptions3D>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace cartographer {
namespace mapping {
namespace proto {

// ===================================================================

class RangeDataInserterOptions3D : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:cartographer.mapping.proto.RangeDataInserterOptions3D) */ {
 public:
  RangeDataInserterOptions3D();
  virtual ~RangeDataInserterOptions3D();

  RangeDataInserterOptions3D(const RangeDataInserterOptions3D& from);

  inline RangeDataInserterOptions3D& operator=(const RangeDataInserterOptions3D& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  RangeDataInserterOptions3D(RangeDataInserterOptions3D&& from) noexcept
    : RangeDataInserterOptions3D() {
    *this = ::std::move(from);
  }

  inline RangeDataInserterOptions3D& operator=(RangeDataInserterOptions3D&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const RangeDataInserterOptions3D& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const RangeDataInserterOptions3D* internal_default_instance() {
    return reinterpret_cast<const RangeDataInserterOptions3D*>(
               &_RangeDataInserterOptions3D_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  void Swap(RangeDataInserterOptions3D* other);
  friend void swap(RangeDataInserterOptions3D& a, RangeDataInserterOptions3D& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline RangeDataInserterOptions3D* New() const final {
    return CreateMaybeMessage<RangeDataInserterOptions3D>(NULL);
  }

  RangeDataInserterOptions3D* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<RangeDataInserterOptions3D>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const RangeDataInserterOptions3D& from);
  void MergeFrom(const RangeDataInserterOptions3D& from);
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
  void InternalSwap(RangeDataInserterOptions3D* other);
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

  // double hit_probability = 1;
  void clear_hit_probability();
  static const int kHitProbabilityFieldNumber = 1;
  double hit_probability() const;
  void set_hit_probability(double value);

  // double miss_probability = 2;
  void clear_miss_probability();
  static const int kMissProbabilityFieldNumber = 2;
  double miss_probability() const;
  void set_miss_probability(double value);

  // int32 num_free_space_voxels = 3;
  void clear_num_free_space_voxels();
  static const int kNumFreeSpaceVoxelsFieldNumber = 3;
  ::google::protobuf::int32 num_free_space_voxels() const;
  void set_num_free_space_voxels(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:cartographer.mapping.proto.RangeDataInserterOptions3D)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  double hit_probability_;
  double miss_probability_;
  ::google::protobuf::int32 num_free_space_voxels_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  friend struct ::protobuf_cartographer_2fmapping_2fproto_2f3d_2frange_5fdata_5finserter_5foptions_5f3d_2eproto::TableStruct;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// RangeDataInserterOptions3D

// double hit_probability = 1;
inline void RangeDataInserterOptions3D::clear_hit_probability() {
  hit_probability_ = 0;
}
inline double RangeDataInserterOptions3D::hit_probability() const {
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.RangeDataInserterOptions3D.hit_probability)
  return hit_probability_;
}
inline void RangeDataInserterOptions3D::set_hit_probability(double value) {
  
  hit_probability_ = value;
  // @@protoc_insertion_point(field_set:cartographer.mapping.proto.RangeDataInserterOptions3D.hit_probability)
}

// double miss_probability = 2;
inline void RangeDataInserterOptions3D::clear_miss_probability() {
  miss_probability_ = 0;
}
inline double RangeDataInserterOptions3D::miss_probability() const {
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.RangeDataInserterOptions3D.miss_probability)
  return miss_probability_;
}
inline void RangeDataInserterOptions3D::set_miss_probability(double value) {
  
  miss_probability_ = value;
  // @@protoc_insertion_point(field_set:cartographer.mapping.proto.RangeDataInserterOptions3D.miss_probability)
}

// int32 num_free_space_voxels = 3;
inline void RangeDataInserterOptions3D::clear_num_free_space_voxels() {
  num_free_space_voxels_ = 0;
}
inline ::google::protobuf::int32 RangeDataInserterOptions3D::num_free_space_voxels() const {
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.RangeDataInserterOptions3D.num_free_space_voxels)
  return num_free_space_voxels_;
}
inline void RangeDataInserterOptions3D::set_num_free_space_voxels(::google::protobuf::int32 value) {
  
  num_free_space_voxels_ = value;
  // @@protoc_insertion_point(field_set:cartographer.mapping.proto.RangeDataInserterOptions3D.num_free_space_voxels)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace proto
}  // namespace mapping
}  // namespace cartographer

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2f3d_2frange_5fdata_5finserter_5foptions_5f3d_2eproto
