// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResModel<T> _$ResModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResModel<T> {
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;

  /// Serializes this ResModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResModelCopyWith<T, ResModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResModelCopyWith<T, $Res> {
  factory $ResModelCopyWith(
          ResModel<T> value, $Res Function(ResModel<T>) then) =
      _$ResModelCopyWithImpl<T, $Res, ResModel<T>>;
  @useResult
  $Res call({bool? isSuccess, String? code, String? message, T? result});
}

/// @nodoc
class _$ResModelCopyWithImpl<T, $Res, $Val extends ResModel<T>>
    implements $ResModelCopyWith<T, $Res> {
  _$ResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResModelImplCopyWith<T, $Res>
    implements $ResModelCopyWith<T, $Res> {
  factory _$$ResModelImplCopyWith(
          _$ResModelImpl<T> value, $Res Function(_$ResModelImpl<T>) then) =
      __$$ResModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool? isSuccess, String? code, String? message, T? result});
}

/// @nodoc
class __$$ResModelImplCopyWithImpl<T, $Res>
    extends _$ResModelCopyWithImpl<T, $Res, _$ResModelImpl<T>>
    implements _$$ResModelImplCopyWith<T, $Res> {
  __$$ResModelImplCopyWithImpl(
      _$ResModelImpl<T> _value, $Res Function(_$ResModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ResModelImpl<T>(
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResModelImpl<T> implements _ResModel<T> {
  _$ResModelImpl({this.isSuccess, this.code, this.message, this.result});

  factory _$ResModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResModelImplFromJson(json, fromJsonT);

  @override
  final bool? isSuccess;
  @override
  final String? code;
  @override
  final String? message;
  @override
  final T? result;

  @override
  String toString() {
    return 'ResModel<$T>(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResModelImpl<T> &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, code, message,
      const DeepCollectionEquality().hash(result));

  /// Create a copy of ResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResModelImplCopyWith<T, _$ResModelImpl<T>> get copyWith =>
      __$$ResModelImplCopyWithImpl<T, _$ResModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResModel<T> implements ResModel<T> {
  factory _ResModel(
      {final bool? isSuccess,
      final String? code,
      final String? message,
      final T? result}) = _$ResModelImpl<T>;

  factory _ResModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResModelImpl<T>.fromJson;

  @override
  bool? get isSuccess;
  @override
  String? get code;
  @override
  String? get message;
  @override
  T? get result;

  /// Create a copy of ResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResModelImplCopyWith<T, _$ResModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
