// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: cartographer/mapping/proto/trajectory_node_data.proto

#ifndef PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2ftrajectory_5fnode_5fdata_2eproto
#define PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2ftrajectory_5fnode_5fdata_2eproto

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
#include "cartographer/sensor/proto/sensor.pb.h"
#include "cartographer/transform/proto/transform.pb.h"
// @@protoc_insertion_point(includes)
#define PROTOBUF_INTERNAL_EXPORT_protobuf_cartographer_2fmapping_2fproto_2ftrajectory_5fnode_5fdata_2eproto 

namespace protobuf_cartographer_2fmapping_2fproto_2ftrajectory_5fnode_5fdata_2eproto {
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
}  // namespace protobuf_cartographer_2fmapping_2fproto_2ftrajectory_5fnode_5fdata_2eproto
namespace cartographer {
namespace mapping {
namespace proto {
class TrajectoryNodeData;
class TrajectoryNodeDataDefaultTypeInternal;
extern TrajectoryNodeDataDefaultTypeInternal _TrajectoryNodeData_default_instance_;
}  // namespace proto
}  // namespace mapping
}  // namespace cartographer
namespace google {
namespace protobuf {
template<> ::cartographer::mapping::proto::TrajectoryNodeData* Arena::CreateMaybeMessage<::cartographer::mapping::proto::TrajectoryNodeData>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace cartographer {
namespace mapping {
namespace proto {

// ===================================================================

class TrajectoryNodeData : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:cartographer.mapping.proto.TrajectoryNodeData) */ {
 public:
  TrajectoryNodeData();
  virtual ~TrajectoryNodeData();

  TrajectoryNodeData(const TrajectoryNodeData& from);

  inline TrajectoryNodeData& operator=(const TrajectoryNodeData& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  TrajectoryNodeData(TrajectoryNodeData&& from) noexcept
    : TrajectoryNodeData() {
    *this = ::std::move(from);
  }

  inline TrajectoryNodeData& operator=(TrajectoryNodeData&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const TrajectoryNodeData& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const TrajectoryNodeData* internal_default_instance() {
    return reinterpret_cast<const TrajectoryNodeData*>(
               &_TrajectoryNodeData_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  void Swap(TrajectoryNodeData* other);
  friend void swap(TrajectoryNodeData& a, TrajectoryNodeData& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline TrajectoryNodeData* New() const final {
    return CreateMaybeMessage<TrajectoryNodeData>(NULL);
  }

  TrajectoryNodeData* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<TrajectoryNodeData>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const TrajectoryNodeData& from);
  void MergeFrom(const TrajectoryNodeData& from);
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
  void InternalSwap(TrajectoryNodeData* other);
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

  // repeated float rotational_scan_matcher_histogram = 6;
  int rotational_scan_matcher_histogram_size() const;
  void clear_rotational_scan_matcher_histogram();
  static const int kRotationalScanMatcherHistogramFieldNumber = 6;
  float rotational_scan_matcher_histogram(int index) const;
  void set_rotational_scan_matcher_histogram(int index, float value);
  void add_rotational_scan_matcher_histogram(float value);
  const ::google::protobuf::RepeatedField< float >&
      rotational_scan_matcher_histogram() const;
  ::google::protobuf::RepeatedField< float >*
      mutable_rotational_scan_matcher_histogram();

  // .cartographer.transform.proto.Quaterniond gravity_alignment = 2;
  bool has_gravity_alignment() const;
  void clear_gravity_alignment();
  static const int kGravityAlignmentFieldNumber = 2;
  private:
  const ::cartographer::transform::proto::Quaterniond& _internal_gravity_alignment() const;
  public:
  const ::cartographer::transform::proto::Quaterniond& gravity_alignment() const;
  ::cartographer::transform::proto::Quaterniond* release_gravity_alignment();
  ::cartographer::transform::proto::Quaterniond* mutable_gravity_alignment();
  void set_allocated_gravity_alignment(::cartographer::transform::proto::Quaterniond* gravity_alignment);

  // .cartographer.sensor.proto.CompressedPointCloud filtered_gravity_aligned_point_cloud = 3;
  bool has_filtered_gravity_aligned_point_cloud() const;
  void clear_filtered_gravity_aligned_point_cloud();
  static const int kFilteredGravityAlignedPointCloudFieldNumber = 3;
  private:
  const ::cartographer::sensor::proto::CompressedPointCloud& _internal_filtered_gravity_aligned_point_cloud() const;
  public:
  const ::cartographer::sensor::proto::CompressedPointCloud& filtered_gravity_aligned_point_cloud() const;
  ::cartographer::sensor::proto::CompressedPointCloud* release_filtered_gravity_aligned_point_cloud();
  ::cartographer::sensor::proto::CompressedPointCloud* mutable_filtered_gravity_aligned_point_cloud();
  void set_allocated_filtered_gravity_aligned_point_cloud(::cartographer::sensor::proto::CompressedPointCloud* filtered_gravity_aligned_point_cloud);

  // .cartographer.sensor.proto.CompressedPointCloud high_resolution_point_cloud = 4;
  bool has_high_resolution_point_cloud() const;
  void clear_high_resolution_point_cloud();
  static const int kHighResolutionPointCloudFieldNumber = 4;
  private:
  const ::cartographer::sensor::proto::CompressedPointCloud& _internal_high_resolution_point_cloud() const;
  public:
  const ::cartographer::sensor::proto::CompressedPointCloud& high_resolution_point_cloud() const;
  ::cartographer::sensor::proto::CompressedPointCloud* release_high_resolution_point_cloud();
  ::cartographer::sensor::proto::CompressedPointCloud* mutable_high_resolution_point_cloud();
  void set_allocated_high_resolution_point_cloud(::cartographer::sensor::proto::CompressedPointCloud* high_resolution_point_cloud);

  // .cartographer.sensor.proto.CompressedPointCloud low_resolution_point_cloud = 5;
  bool has_low_resolution_point_cloud() const;
  void clear_low_resolution_point_cloud();
  static const int kLowResolutionPointCloudFieldNumber = 5;
  private:
  const ::cartographer::sensor::proto::CompressedPointCloud& _internal_low_resolution_point_cloud() const;
  public:
  const ::cartographer::sensor::proto::CompressedPointCloud& low_resolution_point_cloud() const;
  ::cartographer::sensor::proto::CompressedPointCloud* release_low_resolution_point_cloud();
  ::cartographer::sensor::proto::CompressedPointCloud* mutable_low_resolution_point_cloud();
  void set_allocated_low_resolution_point_cloud(::cartographer::sensor::proto::CompressedPointCloud* low_resolution_point_cloud);

  // .cartographer.transform.proto.Rigid3d local_pose = 7;
  bool has_local_pose() const;
  void clear_local_pose();
  static const int kLocalPoseFieldNumber = 7;
  private:
  const ::cartographer::transform::proto::Rigid3d& _internal_local_pose() const;
  public:
  const ::cartographer::transform::proto::Rigid3d& local_pose() const;
  ::cartographer::transform::proto::Rigid3d* release_local_pose();
  ::cartographer::transform::proto::Rigid3d* mutable_local_pose();
  void set_allocated_local_pose(::cartographer::transform::proto::Rigid3d* local_pose);

  // int64 timestamp = 1;
  void clear_timestamp();
  static const int kTimestampFieldNumber = 1;
  ::google::protobuf::int64 timestamp() const;
  void set_timestamp(::google::protobuf::int64 value);

  // @@protoc_insertion_point(class_scope:cartographer.mapping.proto.TrajectoryNodeData)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::RepeatedField< float > rotational_scan_matcher_histogram_;
  mutable int _rotational_scan_matcher_histogram_cached_byte_size_;
  ::cartographer::transform::proto::Quaterniond* gravity_alignment_;
  ::cartographer::sensor::proto::CompressedPointCloud* filtered_gravity_aligned_point_cloud_;
  ::cartographer::sensor::proto::CompressedPointCloud* high_resolution_point_cloud_;
  ::cartographer::sensor::proto::CompressedPointCloud* low_resolution_point_cloud_;
  ::cartographer::transform::proto::Rigid3d* local_pose_;
  ::google::protobuf::int64 timestamp_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  friend struct ::protobuf_cartographer_2fmapping_2fproto_2ftrajectory_5fnode_5fdata_2eproto::TableStruct;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// TrajectoryNodeData

// int64 timestamp = 1;
inline void TrajectoryNodeData::clear_timestamp() {
  timestamp_ = GOOGLE_LONGLONG(0);
}
inline ::google::protobuf::int64 TrajectoryNodeData::timestamp() const {
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.TrajectoryNodeData.timestamp)
  return timestamp_;
}
inline void TrajectoryNodeData::set_timestamp(::google::protobuf::int64 value) {
  
  timestamp_ = value;
  // @@protoc_insertion_point(field_set:cartographer.mapping.proto.TrajectoryNodeData.timestamp)
}

// .cartographer.transform.proto.Quaterniond gravity_alignment = 2;
inline bool TrajectoryNodeData::has_gravity_alignment() const {
  return this != internal_default_instance() && gravity_alignment_ != NULL;
}
inline const ::cartographer::transform::proto::Quaterniond& TrajectoryNodeData::_internal_gravity_alignment() const {
  return *gravity_alignment_;
}
inline const ::cartographer::transform::proto::Quaterniond& TrajectoryNodeData::gravity_alignment() const {
  const ::cartographer::transform::proto::Quaterniond* p = gravity_alignment_;
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.TrajectoryNodeData.gravity_alignment)
  return p != NULL ? *p : *reinterpret_cast<const ::cartographer::transform::proto::Quaterniond*>(
      &::cartographer::transform::proto::_Quaterniond_default_instance_);
}
inline ::cartographer::transform::proto::Quaterniond* TrajectoryNodeData::release_gravity_alignment() {
  // @@protoc_insertion_point(field_release:cartographer.mapping.proto.TrajectoryNodeData.gravity_alignment)
  
  ::cartographer::transform::proto::Quaterniond* temp = gravity_alignment_;
  gravity_alignment_ = NULL;
  return temp;
}
inline ::cartographer::transform::proto::Quaterniond* TrajectoryNodeData::mutable_gravity_alignment() {
  
  if (gravity_alignment_ == NULL) {
    auto* p = CreateMaybeMessage<::cartographer::transform::proto::Quaterniond>(GetArenaNoVirtual());
    gravity_alignment_ = p;
  }
  // @@protoc_insertion_point(field_mutable:cartographer.mapping.proto.TrajectoryNodeData.gravity_alignment)
  return gravity_alignment_;
}
inline void TrajectoryNodeData::set_allocated_gravity_alignment(::cartographer::transform::proto::Quaterniond* gravity_alignment) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == NULL) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(gravity_alignment_);
  }
  if (gravity_alignment) {
    ::google::protobuf::Arena* submessage_arena = NULL;
    if (message_arena != submessage_arena) {
      gravity_alignment = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, gravity_alignment, submessage_arena);
    }
    
  } else {
    
  }
  gravity_alignment_ = gravity_alignment;
  // @@protoc_insertion_point(field_set_allocated:cartographer.mapping.proto.TrajectoryNodeData.gravity_alignment)
}

// .cartographer.sensor.proto.CompressedPointCloud filtered_gravity_aligned_point_cloud = 3;
inline bool TrajectoryNodeData::has_filtered_gravity_aligned_point_cloud() const {
  return this != internal_default_instance() && filtered_gravity_aligned_point_cloud_ != NULL;
}
inline const ::cartographer::sensor::proto::CompressedPointCloud& TrajectoryNodeData::_internal_filtered_gravity_aligned_point_cloud() const {
  return *filtered_gravity_aligned_point_cloud_;
}
inline const ::cartographer::sensor::proto::CompressedPointCloud& TrajectoryNodeData::filtered_gravity_aligned_point_cloud() const {
  const ::cartographer::sensor::proto::CompressedPointCloud* p = filtered_gravity_aligned_point_cloud_;
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.TrajectoryNodeData.filtered_gravity_aligned_point_cloud)
  return p != NULL ? *p : *reinterpret_cast<const ::cartographer::sensor::proto::CompressedPointCloud*>(
      &::cartographer::sensor::proto::_CompressedPointCloud_default_instance_);
}
inline ::cartographer::sensor::proto::CompressedPointCloud* TrajectoryNodeData::release_filtered_gravity_aligned_point_cloud() {
  // @@protoc_insertion_point(field_release:cartographer.mapping.proto.TrajectoryNodeData.filtered_gravity_aligned_point_cloud)
  
  ::cartographer::sensor::proto::CompressedPointCloud* temp = filtered_gravity_aligned_point_cloud_;
  filtered_gravity_aligned_point_cloud_ = NULL;
  return temp;
}
inline ::cartographer::sensor::proto::CompressedPointCloud* TrajectoryNodeData::mutable_filtered_gravity_aligned_point_cloud() {
  
  if (filtered_gravity_aligned_point_cloud_ == NULL) {
    auto* p = CreateMaybeMessage<::cartographer::sensor::proto::CompressedPointCloud>(GetArenaNoVirtual());
    filtered_gravity_aligned_point_cloud_ = p;
  }
  // @@protoc_insertion_point(field_mutable:cartographer.mapping.proto.TrajectoryNodeData.filtered_gravity_aligned_point_cloud)
  return filtered_gravity_aligned_point_cloud_;
}
inline void TrajectoryNodeData::set_allocated_filtered_gravity_aligned_point_cloud(::cartographer::sensor::proto::CompressedPointCloud* filtered_gravity_aligned_point_cloud) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == NULL) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(filtered_gravity_aligned_point_cloud_);
  }
  if (filtered_gravity_aligned_point_cloud) {
    ::google::protobuf::Arena* submessage_arena = NULL;
    if (message_arena != submessage_arena) {
      filtered_gravity_aligned_point_cloud = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, filtered_gravity_aligned_point_cloud, submessage_arena);
    }
    
  } else {
    
  }
  filtered_gravity_aligned_point_cloud_ = filtered_gravity_aligned_point_cloud;
  // @@protoc_insertion_point(field_set_allocated:cartographer.mapping.proto.TrajectoryNodeData.filtered_gravity_aligned_point_cloud)
}

// .cartographer.sensor.proto.CompressedPointCloud high_resolution_point_cloud = 4;
inline bool TrajectoryNodeData::has_high_resolution_point_cloud() const {
  return this != internal_default_instance() && high_resolution_point_cloud_ != NULL;
}
inline const ::cartographer::sensor::proto::CompressedPointCloud& TrajectoryNodeData::_internal_high_resolution_point_cloud() const {
  return *high_resolution_point_cloud_;
}
inline const ::cartographer::sensor::proto::CompressedPointCloud& TrajectoryNodeData::high_resolution_point_cloud() const {
  const ::cartographer::sensor::proto::CompressedPointCloud* p = high_resolution_point_cloud_;
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.TrajectoryNodeData.high_resolution_point_cloud)
  return p != NULL ? *p : *reinterpret_cast<const ::cartographer::sensor::proto::CompressedPointCloud*>(
      &::cartographer::sensor::proto::_CompressedPointCloud_default_instance_);
}
inline ::cartographer::sensor::proto::CompressedPointCloud* TrajectoryNodeData::release_high_resolution_point_cloud() {
  // @@protoc_insertion_point(field_release:cartographer.mapping.proto.TrajectoryNodeData.high_resolution_point_cloud)
  
  ::cartographer::sensor::proto::CompressedPointCloud* temp = high_resolution_point_cloud_;
  high_resolution_point_cloud_ = NULL;
  return temp;
}
inline ::cartographer::sensor::proto::CompressedPointCloud* TrajectoryNodeData::mutable_high_resolution_point_cloud() {
  
  if (high_resolution_point_cloud_ == NULL) {
    auto* p = CreateMaybeMessage<::cartographer::sensor::proto::CompressedPointCloud>(GetArenaNoVirtual());
    high_resolution_point_cloud_ = p;
  }
  // @@protoc_insertion_point(field_mutable:cartographer.mapping.proto.TrajectoryNodeData.high_resolution_point_cloud)
  return high_resolution_point_cloud_;
}
inline void TrajectoryNodeData::set_allocated_high_resolution_point_cloud(::cartographer::sensor::proto::CompressedPointCloud* high_resolution_point_cloud) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == NULL) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(high_resolution_point_cloud_);
  }
  if (high_resolution_point_cloud) {
    ::google::protobuf::Arena* submessage_arena = NULL;
    if (message_arena != submessage_arena) {
      high_resolution_point_cloud = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, high_resolution_point_cloud, submessage_arena);
    }
    
  } else {
    
  }
  high_resolution_point_cloud_ = high_resolution_point_cloud;
  // @@protoc_insertion_point(field_set_allocated:cartographer.mapping.proto.TrajectoryNodeData.high_resolution_point_cloud)
}

// .cartographer.sensor.proto.CompressedPointCloud low_resolution_point_cloud = 5;
inline bool TrajectoryNodeData::has_low_resolution_point_cloud() const {
  return this != internal_default_instance() && low_resolution_point_cloud_ != NULL;
}
inline const ::cartographer::sensor::proto::CompressedPointCloud& TrajectoryNodeData::_internal_low_resolution_point_cloud() const {
  return *low_resolution_point_cloud_;
}
inline const ::cartographer::sensor::proto::CompressedPointCloud& TrajectoryNodeData::low_resolution_point_cloud() const {
  const ::cartographer::sensor::proto::CompressedPointCloud* p = low_resolution_point_cloud_;
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.TrajectoryNodeData.low_resolution_point_cloud)
  return p != NULL ? *p : *reinterpret_cast<const ::cartographer::sensor::proto::CompressedPointCloud*>(
      &::cartographer::sensor::proto::_CompressedPointCloud_default_instance_);
}
inline ::cartographer::sensor::proto::CompressedPointCloud* TrajectoryNodeData::release_low_resolution_point_cloud() {
  // @@protoc_insertion_point(field_release:cartographer.mapping.proto.TrajectoryNodeData.low_resolution_point_cloud)
  
  ::cartographer::sensor::proto::CompressedPointCloud* temp = low_resolution_point_cloud_;
  low_resolution_point_cloud_ = NULL;
  return temp;
}
inline ::cartographer::sensor::proto::CompressedPointCloud* TrajectoryNodeData::mutable_low_resolution_point_cloud() {
  
  if (low_resolution_point_cloud_ == NULL) {
    auto* p = CreateMaybeMessage<::cartographer::sensor::proto::CompressedPointCloud>(GetArenaNoVirtual());
    low_resolution_point_cloud_ = p;
  }
  // @@protoc_insertion_point(field_mutable:cartographer.mapping.proto.TrajectoryNodeData.low_resolution_point_cloud)
  return low_resolution_point_cloud_;
}
inline void TrajectoryNodeData::set_allocated_low_resolution_point_cloud(::cartographer::sensor::proto::CompressedPointCloud* low_resolution_point_cloud) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == NULL) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(low_resolution_point_cloud_);
  }
  if (low_resolution_point_cloud) {
    ::google::protobuf::Arena* submessage_arena = NULL;
    if (message_arena != submessage_arena) {
      low_resolution_point_cloud = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, low_resolution_point_cloud, submessage_arena);
    }
    
  } else {
    
  }
  low_resolution_point_cloud_ = low_resolution_point_cloud;
  // @@protoc_insertion_point(field_set_allocated:cartographer.mapping.proto.TrajectoryNodeData.low_resolution_point_cloud)
}

// repeated float rotational_scan_matcher_histogram = 6;
inline int TrajectoryNodeData::rotational_scan_matcher_histogram_size() const {
  return rotational_scan_matcher_histogram_.size();
}
inline void TrajectoryNodeData::clear_rotational_scan_matcher_histogram() {
  rotational_scan_matcher_histogram_.Clear();
}
inline float TrajectoryNodeData::rotational_scan_matcher_histogram(int index) const {
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.TrajectoryNodeData.rotational_scan_matcher_histogram)
  return rotational_scan_matcher_histogram_.Get(index);
}
inline void TrajectoryNodeData::set_rotational_scan_matcher_histogram(int index, float value) {
  rotational_scan_matcher_histogram_.Set(index, value);
  // @@protoc_insertion_point(field_set:cartographer.mapping.proto.TrajectoryNodeData.rotational_scan_matcher_histogram)
}
inline void TrajectoryNodeData::add_rotational_scan_matcher_histogram(float value) {
  rotational_scan_matcher_histogram_.Add(value);
  // @@protoc_insertion_point(field_add:cartographer.mapping.proto.TrajectoryNodeData.rotational_scan_matcher_histogram)
}
inline const ::google::protobuf::RepeatedField< float >&
TrajectoryNodeData::rotational_scan_matcher_histogram() const {
  // @@protoc_insertion_point(field_list:cartographer.mapping.proto.TrajectoryNodeData.rotational_scan_matcher_histogram)
  return rotational_scan_matcher_histogram_;
}
inline ::google::protobuf::RepeatedField< float >*
TrajectoryNodeData::mutable_rotational_scan_matcher_histogram() {
  // @@protoc_insertion_point(field_mutable_list:cartographer.mapping.proto.TrajectoryNodeData.rotational_scan_matcher_histogram)
  return &rotational_scan_matcher_histogram_;
}

// .cartographer.transform.proto.Rigid3d local_pose = 7;
inline bool TrajectoryNodeData::has_local_pose() const {
  return this != internal_default_instance() && local_pose_ != NULL;
}
inline const ::cartographer::transform::proto::Rigid3d& TrajectoryNodeData::_internal_local_pose() const {
  return *local_pose_;
}
inline const ::cartographer::transform::proto::Rigid3d& TrajectoryNodeData::local_pose() const {
  const ::cartographer::transform::proto::Rigid3d* p = local_pose_;
  // @@protoc_insertion_point(field_get:cartographer.mapping.proto.TrajectoryNodeData.local_pose)
  return p != NULL ? *p : *reinterpret_cast<const ::cartographer::transform::proto::Rigid3d*>(
      &::cartographer::transform::proto::_Rigid3d_default_instance_);
}
inline ::cartographer::transform::proto::Rigid3d* TrajectoryNodeData::release_local_pose() {
  // @@protoc_insertion_point(field_release:cartographer.mapping.proto.TrajectoryNodeData.local_pose)
  
  ::cartographer::transform::proto::Rigid3d* temp = local_pose_;
  local_pose_ = NULL;
  return temp;
}
inline ::cartographer::transform::proto::Rigid3d* TrajectoryNodeData::mutable_local_pose() {
  
  if (local_pose_ == NULL) {
    auto* p = CreateMaybeMessage<::cartographer::transform::proto::Rigid3d>(GetArenaNoVirtual());
    local_pose_ = p;
  }
  // @@protoc_insertion_point(field_mutable:cartographer.mapping.proto.TrajectoryNodeData.local_pose)
  return local_pose_;
}
inline void TrajectoryNodeData::set_allocated_local_pose(::cartographer::transform::proto::Rigid3d* local_pose) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == NULL) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(local_pose_);
  }
  if (local_pose) {
    ::google::protobuf::Arena* submessage_arena = NULL;
    if (message_arena != submessage_arena) {
      local_pose = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, local_pose, submessage_arena);
    }
    
  } else {
    
  }
  local_pose_ = local_pose;
  // @@protoc_insertion_point(field_set_allocated:cartographer.mapping.proto.TrajectoryNodeData.local_pose)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace proto
}  // namespace mapping
}  // namespace cartographer

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_INCLUDED_cartographer_2fmapping_2fproto_2ftrajectory_5fnode_5fdata_2eproto
