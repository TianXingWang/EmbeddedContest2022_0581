// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: cartographer/ground_truth/proto/relations.proto

#ifndef PROTOBUF_INCLUDED_cartographer_2fground_5ftruth_2fproto_2frelations_2eproto
#define PROTOBUF_INCLUDED_cartographer_2fground_5ftruth_2fproto_2frelations_2eproto

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
#include "cartographer/transform/proto/transform.pb.h"
// @@protoc_insertion_point(includes)
#define PROTOBUF_INTERNAL_EXPORT_protobuf_cartographer_2fground_5ftruth_2fproto_2frelations_2eproto 

namespace protobuf_cartographer_2fground_5ftruth_2fproto_2frelations_2eproto {
// Internal implementation detail -- do not use these members.
struct TableStruct {
  static const ::google::protobuf::internal::ParseTableField entries[];
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[];
  static const ::google::protobuf::internal::ParseTable schema[2];
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static const ::google::protobuf::uint32 offsets[];
};
void AddDescriptors();
}  // namespace protobuf_cartographer_2fground_5ftruth_2fproto_2frelations_2eproto
namespace cartographer {
namespace ground_truth {
namespace proto {
class GroundTruth;
class GroundTruthDefaultTypeInternal;
extern GroundTruthDefaultTypeInternal _GroundTruth_default_instance_;
class Relation;
class RelationDefaultTypeInternal;
extern RelationDefaultTypeInternal _Relation_default_instance_;
}  // namespace proto
}  // namespace ground_truth
}  // namespace cartographer
namespace google {
namespace protobuf {
template<> ::cartographer::ground_truth::proto::GroundTruth* Arena::CreateMaybeMessage<::cartographer::ground_truth::proto::GroundTruth>(Arena*);
template<> ::cartographer::ground_truth::proto::Relation* Arena::CreateMaybeMessage<::cartographer::ground_truth::proto::Relation>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace cartographer {
namespace ground_truth {
namespace proto {

// ===================================================================

class Relation : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:cartographer.ground_truth.proto.Relation) */ {
 public:
  Relation();
  virtual ~Relation();

  Relation(const Relation& from);

  inline Relation& operator=(const Relation& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  Relation(Relation&& from) noexcept
    : Relation() {
    *this = ::std::move(from);
  }

  inline Relation& operator=(Relation&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const Relation& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const Relation* internal_default_instance() {
    return reinterpret_cast<const Relation*>(
               &_Relation_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  void Swap(Relation* other);
  friend void swap(Relation& a, Relation& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline Relation* New() const final {
    return CreateMaybeMessage<Relation>(NULL);
  }

  Relation* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<Relation>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const Relation& from);
  void MergeFrom(const Relation& from);
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
  void InternalSwap(Relation* other);
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

  // .cartographer.transform.proto.Rigid3d expected = 3;
  bool has_expected() const;
  void clear_expected();
  static const int kExpectedFieldNumber = 3;
  private:
  const ::cartographer::transform::proto::Rigid3d& _internal_expected() const;
  public:
  const ::cartographer::transform::proto::Rigid3d& expected() const;
  ::cartographer::transform::proto::Rigid3d* release_expected();
  ::cartographer::transform::proto::Rigid3d* mutable_expected();
  void set_allocated_expected(::cartographer::transform::proto::Rigid3d* expected);

  // int64 timestamp1 = 1;
  void clear_timestamp1();
  static const int kTimestamp1FieldNumber = 1;
  ::google::protobuf::int64 timestamp1() const;
  void set_timestamp1(::google::protobuf::int64 value);

  // int64 timestamp2 = 2;
  void clear_timestamp2();
  static const int kTimestamp2FieldNumber = 2;
  ::google::protobuf::int64 timestamp2() const;
  void set_timestamp2(::google::protobuf::int64 value);

  // double covered_distance = 4;
  void clear_covered_distance();
  static const int kCoveredDistanceFieldNumber = 4;
  double covered_distance() const;
  void set_covered_distance(double value);

  // @@protoc_insertion_point(class_scope:cartographer.ground_truth.proto.Relation)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::cartographer::transform::proto::Rigid3d* expected_;
  ::google::protobuf::int64 timestamp1_;
  ::google::protobuf::int64 timestamp2_;
  double covered_distance_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  friend struct ::protobuf_cartographer_2fground_5ftruth_2fproto_2frelations_2eproto::TableStruct;
};
// -------------------------------------------------------------------

class GroundTruth : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:cartographer.ground_truth.proto.GroundTruth) */ {
 public:
  GroundTruth();
  virtual ~GroundTruth();

  GroundTruth(const GroundTruth& from);

  inline GroundTruth& operator=(const GroundTruth& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  GroundTruth(GroundTruth&& from) noexcept
    : GroundTruth() {
    *this = ::std::move(from);
  }

  inline GroundTruth& operator=(GroundTruth&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const GroundTruth& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const GroundTruth* internal_default_instance() {
    return reinterpret_cast<const GroundTruth*>(
               &_GroundTruth_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    1;

  void Swap(GroundTruth* other);
  friend void swap(GroundTruth& a, GroundTruth& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline GroundTruth* New() const final {
    return CreateMaybeMessage<GroundTruth>(NULL);
  }

  GroundTruth* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<GroundTruth>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const GroundTruth& from);
  void MergeFrom(const GroundTruth& from);
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
  void InternalSwap(GroundTruth* other);
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

  // repeated .cartographer.ground_truth.proto.Relation relation = 1;
  int relation_size() const;
  void clear_relation();
  static const int kRelationFieldNumber = 1;
  ::cartographer::ground_truth::proto::Relation* mutable_relation(int index);
  ::google::protobuf::RepeatedPtrField< ::cartographer::ground_truth::proto::Relation >*
      mutable_relation();
  const ::cartographer::ground_truth::proto::Relation& relation(int index) const;
  ::cartographer::ground_truth::proto::Relation* add_relation();
  const ::google::protobuf::RepeatedPtrField< ::cartographer::ground_truth::proto::Relation >&
      relation() const;

  // @@protoc_insertion_point(class_scope:cartographer.ground_truth.proto.GroundTruth)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::RepeatedPtrField< ::cartographer::ground_truth::proto::Relation > relation_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  friend struct ::protobuf_cartographer_2fground_5ftruth_2fproto_2frelations_2eproto::TableStruct;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// Relation

// int64 timestamp1 = 1;
inline void Relation::clear_timestamp1() {
  timestamp1_ = GOOGLE_LONGLONG(0);
}
inline ::google::protobuf::int64 Relation::timestamp1() const {
  // @@protoc_insertion_point(field_get:cartographer.ground_truth.proto.Relation.timestamp1)
  return timestamp1_;
}
inline void Relation::set_timestamp1(::google::protobuf::int64 value) {
  
  timestamp1_ = value;
  // @@protoc_insertion_point(field_set:cartographer.ground_truth.proto.Relation.timestamp1)
}

// int64 timestamp2 = 2;
inline void Relation::clear_timestamp2() {
  timestamp2_ = GOOGLE_LONGLONG(0);
}
inline ::google::protobuf::int64 Relation::timestamp2() const {
  // @@protoc_insertion_point(field_get:cartographer.ground_truth.proto.Relation.timestamp2)
  return timestamp2_;
}
inline void Relation::set_timestamp2(::google::protobuf::int64 value) {
  
  timestamp2_ = value;
  // @@protoc_insertion_point(field_set:cartographer.ground_truth.proto.Relation.timestamp2)
}

// .cartographer.transform.proto.Rigid3d expected = 3;
inline bool Relation::has_expected() const {
  return this != internal_default_instance() && expected_ != NULL;
}
inline const ::cartographer::transform::proto::Rigid3d& Relation::_internal_expected() const {
  return *expected_;
}
inline const ::cartographer::transform::proto::Rigid3d& Relation::expected() const {
  const ::cartographer::transform::proto::Rigid3d* p = expected_;
  // @@protoc_insertion_point(field_get:cartographer.ground_truth.proto.Relation.expected)
  return p != NULL ? *p : *reinterpret_cast<const ::cartographer::transform::proto::Rigid3d*>(
      &::cartographer::transform::proto::_Rigid3d_default_instance_);
}
inline ::cartographer::transform::proto::Rigid3d* Relation::release_expected() {
  // @@protoc_insertion_point(field_release:cartographer.ground_truth.proto.Relation.expected)
  
  ::cartographer::transform::proto::Rigid3d* temp = expected_;
  expected_ = NULL;
  return temp;
}
inline ::cartographer::transform::proto::Rigid3d* Relation::mutable_expected() {
  
  if (expected_ == NULL) {
    auto* p = CreateMaybeMessage<::cartographer::transform::proto::Rigid3d>(GetArenaNoVirtual());
    expected_ = p;
  }
  // @@protoc_insertion_point(field_mutable:cartographer.ground_truth.proto.Relation.expected)
  return expected_;
}
inline void Relation::set_allocated_expected(::cartographer::transform::proto::Rigid3d* expected) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == NULL) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(expected_);
  }
  if (expected) {
    ::google::protobuf::Arena* submessage_arena = NULL;
    if (message_arena != submessage_arena) {
      expected = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, expected, submessage_arena);
    }
    
  } else {
    
  }
  expected_ = expected;
  // @@protoc_insertion_point(field_set_allocated:cartographer.ground_truth.proto.Relation.expected)
}

// double covered_distance = 4;
inline void Relation::clear_covered_distance() {
  covered_distance_ = 0;
}
inline double Relation::covered_distance() const {
  // @@protoc_insertion_point(field_get:cartographer.ground_truth.proto.Relation.covered_distance)
  return covered_distance_;
}
inline void Relation::set_covered_distance(double value) {
  
  covered_distance_ = value;
  // @@protoc_insertion_point(field_set:cartographer.ground_truth.proto.Relation.covered_distance)
}

// -------------------------------------------------------------------

// GroundTruth

// repeated .cartographer.ground_truth.proto.Relation relation = 1;
inline int GroundTruth::relation_size() const {
  return relation_.size();
}
inline void GroundTruth::clear_relation() {
  relation_.Clear();
}
inline ::cartographer::ground_truth::proto::Relation* GroundTruth::mutable_relation(int index) {
  // @@protoc_insertion_point(field_mutable:cartographer.ground_truth.proto.GroundTruth.relation)
  return relation_.Mutable(index);
}
inline ::google::protobuf::RepeatedPtrField< ::cartographer::ground_truth::proto::Relation >*
GroundTruth::mutable_relation() {
  // @@protoc_insertion_point(field_mutable_list:cartographer.ground_truth.proto.GroundTruth.relation)
  return &relation_;
}
inline const ::cartographer::ground_truth::proto::Relation& GroundTruth::relation(int index) const {
  // @@protoc_insertion_point(field_get:cartographer.ground_truth.proto.GroundTruth.relation)
  return relation_.Get(index);
}
inline ::cartographer::ground_truth::proto::Relation* GroundTruth::add_relation() {
  // @@protoc_insertion_point(field_add:cartographer.ground_truth.proto.GroundTruth.relation)
  return relation_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::cartographer::ground_truth::proto::Relation >&
GroundTruth::relation() const {
  // @@protoc_insertion_point(field_list:cartographer.ground_truth.proto.GroundTruth.relation)
  return relation_;
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__
// -------------------------------------------------------------------


// @@protoc_insertion_point(namespace_scope)

}  // namespace proto
}  // namespace ground_truth
}  // namespace cartographer

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_INCLUDED_cartographer_2fground_5ftruth_2fproto_2frelations_2eproto
