// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_mission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserMissionModel _$UserMissionModelFromJson(Map<String, dynamic> json) {
  return _UserMissionModel.fromJson(json);
}

/// @nodoc
mixin _$UserMissionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get missionId => throw _privateConstructorUsedError;
  DateTime? get completedDate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get current => throw _privateConstructorUsedError;

  /// Serializes this UserMissionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserMissionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMissionModelCopyWith<UserMissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMissionModelCopyWith<$Res> {
  factory $UserMissionModelCopyWith(
          UserMissionModel value, $Res Function(UserMissionModel) then) =
      _$UserMissionModelCopyWithImpl<$Res, UserMissionModel>;
  @useResult
  $Res call(
      {int? id,
      int? userId,
      int? missionId,
      DateTime? completedDate,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? current});
}

/// @nodoc
class _$UserMissionModelCopyWithImpl<$Res, $Val extends UserMissionModel>
    implements $UserMissionModelCopyWith<$Res> {
  _$UserMissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMissionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? missionId = freezed,
    Object? completedDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      missionId: freezed == missionId
          ? _value.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as int?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMissionModelImplCopyWith<$Res>
    implements $UserMissionModelCopyWith<$Res> {
  factory _$$UserMissionModelImplCopyWith(_$UserMissionModelImpl value,
          $Res Function(_$UserMissionModelImpl) then) =
      __$$UserMissionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userId,
      int? missionId,
      DateTime? completedDate,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? current});
}

/// @nodoc
class __$$UserMissionModelImplCopyWithImpl<$Res>
    extends _$UserMissionModelCopyWithImpl<$Res, _$UserMissionModelImpl>
    implements _$$UserMissionModelImplCopyWith<$Res> {
  __$$UserMissionModelImplCopyWithImpl(_$UserMissionModelImpl _value,
      $Res Function(_$UserMissionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMissionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? missionId = freezed,
    Object? completedDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? current = freezed,
  }) {
    return _then(_$UserMissionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      missionId: freezed == missionId
          ? _value.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as int?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMissionModelImpl implements _UserMissionModel {
  const _$UserMissionModelImpl(
      {this.id,
      this.userId,
      this.missionId,
      this.completedDate,
      this.createdAt,
      this.updatedAt,
      this.current});

  factory _$UserMissionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMissionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final int? missionId;
  @override
  final DateTime? completedDate;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? current;

  @override
  String toString() {
    return 'UserMissionModel(id: $id, userId: $userId, missionId: $missionId, completedDate: $completedDate, createdAt: $createdAt, updatedAt: $updatedAt, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMissionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.missionId, missionId) ||
                other.missionId == missionId) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, missionId,
      completedDate, createdAt, updatedAt, current);

  /// Create a copy of UserMissionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMissionModelImplCopyWith<_$UserMissionModelImpl> get copyWith =>
      __$$UserMissionModelImplCopyWithImpl<_$UserMissionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMissionModelImplToJson(
      this,
    );
  }
}

abstract class _UserMissionModel implements UserMissionModel {
  const factory _UserMissionModel(
      {final int? id,
      final int? userId,
      final int? missionId,
      final DateTime? completedDate,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? current}) = _$UserMissionModelImpl;

  factory _UserMissionModel.fromJson(Map<String, dynamic> json) =
      _$UserMissionModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  int? get missionId;
  @override
  DateTime? get completedDate;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get current;

  /// Create a copy of UserMissionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMissionModelImplCopyWith<_$UserMissionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
