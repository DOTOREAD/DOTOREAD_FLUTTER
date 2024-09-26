// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkModel {
  NetworkParameter get networkParameter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkParameter networkParameter) post,
    required TResult Function(NetworkParameter networkParameter) get,
    required TResult Function(NetworkParameter networkParameter) delete,
    required TResult Function(NetworkParameter networkParameter) patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkParameter networkParameter)? post,
    TResult? Function(NetworkParameter networkParameter)? get,
    TResult? Function(NetworkParameter networkParameter)? delete,
    TResult? Function(NetworkParameter networkParameter)? patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkParameter networkParameter)? post,
    TResult Function(NetworkParameter networkParameter)? get,
    TResult Function(NetworkParameter networkParameter)? delete,
    TResult Function(NetworkParameter networkParameter)? patch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) post,
    required TResult Function(_NetworkModelGet value) get,
    required TResult Function(_NetworkModelDelete value) delete,
    required TResult Function(_NetworkModelPatch value) patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? post,
    TResult? Function(_NetworkModelGet value)? get,
    TResult? Function(_NetworkModelDelete value)? delete,
    TResult? Function(_NetworkModelPatch value)? patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? post,
    TResult Function(_NetworkModelGet value)? get,
    TResult Function(_NetworkModelDelete value)? delete,
    TResult Function(_NetworkModelPatch value)? patch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkModelCopyWith<NetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkModelCopyWith<$Res> {
  factory $NetworkModelCopyWith(
          NetworkModel value, $Res Function(NetworkModel) then) =
      _$NetworkModelCopyWithImpl<$Res, NetworkModel>;
  @useResult
  $Res call({NetworkParameter networkParameter});

  $NetworkParameterCopyWith<$Res> get networkParameter;
}

/// @nodoc
class _$NetworkModelCopyWithImpl<$Res, $Val extends NetworkModel>
    implements $NetworkModelCopyWith<$Res> {
  _$NetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkParameter = null,
  }) {
    return _then(_value.copyWith(
      networkParameter: null == networkParameter
          ? _value.networkParameter
          : networkParameter // ignore: cast_nullable_to_non_nullable
              as NetworkParameter,
    ) as $Val);
  }

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkParameterCopyWith<$Res> get networkParameter {
    return $NetworkParameterCopyWith<$Res>(_value.networkParameter, (value) {
      return _then(_value.copyWith(networkParameter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NetworkModelPostImplCopyWith<$Res>
    implements $NetworkModelCopyWith<$Res> {
  factory _$$NetworkModelPostImplCopyWith(_$NetworkModelPostImpl value,
          $Res Function(_$NetworkModelPostImpl) then) =
      __$$NetworkModelPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkParameter networkParameter});

  @override
  $NetworkParameterCopyWith<$Res> get networkParameter;
}

/// @nodoc
class __$$NetworkModelPostImplCopyWithImpl<$Res>
    extends _$NetworkModelCopyWithImpl<$Res, _$NetworkModelPostImpl>
    implements _$$NetworkModelPostImplCopyWith<$Res> {
  __$$NetworkModelPostImplCopyWithImpl(_$NetworkModelPostImpl _value,
      $Res Function(_$NetworkModelPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkParameter = null,
  }) {
    return _then(_$NetworkModelPostImpl(
      networkParameter: null == networkParameter
          ? _value.networkParameter
          : networkParameter // ignore: cast_nullable_to_non_nullable
              as NetworkParameter,
    ));
  }
}

/// @nodoc

class _$NetworkModelPostImpl implements _NetworkModelPost {
  const _$NetworkModelPostImpl({required this.networkParameter});

  @override
  final NetworkParameter networkParameter;

  @override
  String toString() {
    return 'NetworkModel.post(networkParameter: $networkParameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkModelPostImpl &&
            (identical(other.networkParameter, networkParameter) ||
                other.networkParameter == networkParameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkParameter);

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkModelPostImplCopyWith<_$NetworkModelPostImpl> get copyWith =>
      __$$NetworkModelPostImplCopyWithImpl<_$NetworkModelPostImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkParameter networkParameter) post,
    required TResult Function(NetworkParameter networkParameter) get,
    required TResult Function(NetworkParameter networkParameter) delete,
    required TResult Function(NetworkParameter networkParameter) patch,
  }) {
    return post(networkParameter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkParameter networkParameter)? post,
    TResult? Function(NetworkParameter networkParameter)? get,
    TResult? Function(NetworkParameter networkParameter)? delete,
    TResult? Function(NetworkParameter networkParameter)? patch,
  }) {
    return post?.call(networkParameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkParameter networkParameter)? post,
    TResult Function(NetworkParameter networkParameter)? get,
    TResult Function(NetworkParameter networkParameter)? delete,
    TResult Function(NetworkParameter networkParameter)? patch,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(networkParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) post,
    required TResult Function(_NetworkModelGet value) get,
    required TResult Function(_NetworkModelDelete value) delete,
    required TResult Function(_NetworkModelPatch value) patch,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? post,
    TResult? Function(_NetworkModelGet value)? get,
    TResult? Function(_NetworkModelDelete value)? delete,
    TResult? Function(_NetworkModelPatch value)? patch,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? post,
    TResult Function(_NetworkModelGet value)? get,
    TResult Function(_NetworkModelDelete value)? delete,
    TResult Function(_NetworkModelPatch value)? patch,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class _NetworkModelPost implements NetworkModel {
  const factory _NetworkModelPost(
          {required final NetworkParameter networkParameter}) =
      _$NetworkModelPostImpl;

  @override
  NetworkParameter get networkParameter;

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkModelPostImplCopyWith<_$NetworkModelPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkModelGetImplCopyWith<$Res>
    implements $NetworkModelCopyWith<$Res> {
  factory _$$NetworkModelGetImplCopyWith(_$NetworkModelGetImpl value,
          $Res Function(_$NetworkModelGetImpl) then) =
      __$$NetworkModelGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkParameter networkParameter});

  @override
  $NetworkParameterCopyWith<$Res> get networkParameter;
}

/// @nodoc
class __$$NetworkModelGetImplCopyWithImpl<$Res>
    extends _$NetworkModelCopyWithImpl<$Res, _$NetworkModelGetImpl>
    implements _$$NetworkModelGetImplCopyWith<$Res> {
  __$$NetworkModelGetImplCopyWithImpl(
      _$NetworkModelGetImpl _value, $Res Function(_$NetworkModelGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkParameter = null,
  }) {
    return _then(_$NetworkModelGetImpl(
      networkParameter: null == networkParameter
          ? _value.networkParameter
          : networkParameter // ignore: cast_nullable_to_non_nullable
              as NetworkParameter,
    ));
  }
}

/// @nodoc

class _$NetworkModelGetImpl implements _NetworkModelGet {
  const _$NetworkModelGetImpl({required this.networkParameter});

  @override
  final NetworkParameter networkParameter;

  @override
  String toString() {
    return 'NetworkModel.get(networkParameter: $networkParameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkModelGetImpl &&
            (identical(other.networkParameter, networkParameter) ||
                other.networkParameter == networkParameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkParameter);

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkModelGetImplCopyWith<_$NetworkModelGetImpl> get copyWith =>
      __$$NetworkModelGetImplCopyWithImpl<_$NetworkModelGetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkParameter networkParameter) post,
    required TResult Function(NetworkParameter networkParameter) get,
    required TResult Function(NetworkParameter networkParameter) delete,
    required TResult Function(NetworkParameter networkParameter) patch,
  }) {
    return get(networkParameter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkParameter networkParameter)? post,
    TResult? Function(NetworkParameter networkParameter)? get,
    TResult? Function(NetworkParameter networkParameter)? delete,
    TResult? Function(NetworkParameter networkParameter)? patch,
  }) {
    return get?.call(networkParameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkParameter networkParameter)? post,
    TResult Function(NetworkParameter networkParameter)? get,
    TResult Function(NetworkParameter networkParameter)? delete,
    TResult Function(NetworkParameter networkParameter)? patch,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(networkParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) post,
    required TResult Function(_NetworkModelGet value) get,
    required TResult Function(_NetworkModelDelete value) delete,
    required TResult Function(_NetworkModelPatch value) patch,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? post,
    TResult? Function(_NetworkModelGet value)? get,
    TResult? Function(_NetworkModelDelete value)? delete,
    TResult? Function(_NetworkModelPatch value)? patch,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? post,
    TResult Function(_NetworkModelGet value)? get,
    TResult Function(_NetworkModelDelete value)? delete,
    TResult Function(_NetworkModelPatch value)? patch,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _NetworkModelGet implements NetworkModel {
  const factory _NetworkModelGet(
          {required final NetworkParameter networkParameter}) =
      _$NetworkModelGetImpl;

  @override
  NetworkParameter get networkParameter;

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkModelGetImplCopyWith<_$NetworkModelGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkModelDeleteImplCopyWith<$Res>
    implements $NetworkModelCopyWith<$Res> {
  factory _$$NetworkModelDeleteImplCopyWith(_$NetworkModelDeleteImpl value,
          $Res Function(_$NetworkModelDeleteImpl) then) =
      __$$NetworkModelDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkParameter networkParameter});

  @override
  $NetworkParameterCopyWith<$Res> get networkParameter;
}

/// @nodoc
class __$$NetworkModelDeleteImplCopyWithImpl<$Res>
    extends _$NetworkModelCopyWithImpl<$Res, _$NetworkModelDeleteImpl>
    implements _$$NetworkModelDeleteImplCopyWith<$Res> {
  __$$NetworkModelDeleteImplCopyWithImpl(_$NetworkModelDeleteImpl _value,
      $Res Function(_$NetworkModelDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkParameter = null,
  }) {
    return _then(_$NetworkModelDeleteImpl(
      networkParameter: null == networkParameter
          ? _value.networkParameter
          : networkParameter // ignore: cast_nullable_to_non_nullable
              as NetworkParameter,
    ));
  }
}

/// @nodoc

class _$NetworkModelDeleteImpl implements _NetworkModelDelete {
  const _$NetworkModelDeleteImpl({required this.networkParameter});

  @override
  final NetworkParameter networkParameter;

  @override
  String toString() {
    return 'NetworkModel.delete(networkParameter: $networkParameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkModelDeleteImpl &&
            (identical(other.networkParameter, networkParameter) ||
                other.networkParameter == networkParameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkParameter);

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkModelDeleteImplCopyWith<_$NetworkModelDeleteImpl> get copyWith =>
      __$$NetworkModelDeleteImplCopyWithImpl<_$NetworkModelDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkParameter networkParameter) post,
    required TResult Function(NetworkParameter networkParameter) get,
    required TResult Function(NetworkParameter networkParameter) delete,
    required TResult Function(NetworkParameter networkParameter) patch,
  }) {
    return delete(networkParameter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkParameter networkParameter)? post,
    TResult? Function(NetworkParameter networkParameter)? get,
    TResult? Function(NetworkParameter networkParameter)? delete,
    TResult? Function(NetworkParameter networkParameter)? patch,
  }) {
    return delete?.call(networkParameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkParameter networkParameter)? post,
    TResult Function(NetworkParameter networkParameter)? get,
    TResult Function(NetworkParameter networkParameter)? delete,
    TResult Function(NetworkParameter networkParameter)? patch,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(networkParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) post,
    required TResult Function(_NetworkModelGet value) get,
    required TResult Function(_NetworkModelDelete value) delete,
    required TResult Function(_NetworkModelPatch value) patch,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? post,
    TResult? Function(_NetworkModelGet value)? get,
    TResult? Function(_NetworkModelDelete value)? delete,
    TResult? Function(_NetworkModelPatch value)? patch,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? post,
    TResult Function(_NetworkModelGet value)? get,
    TResult Function(_NetworkModelDelete value)? delete,
    TResult Function(_NetworkModelPatch value)? patch,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _NetworkModelDelete implements NetworkModel {
  const factory _NetworkModelDelete(
          {required final NetworkParameter networkParameter}) =
      _$NetworkModelDeleteImpl;

  @override
  NetworkParameter get networkParameter;

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkModelDeleteImplCopyWith<_$NetworkModelDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkModelPatchImplCopyWith<$Res>
    implements $NetworkModelCopyWith<$Res> {
  factory _$$NetworkModelPatchImplCopyWith(_$NetworkModelPatchImpl value,
          $Res Function(_$NetworkModelPatchImpl) then) =
      __$$NetworkModelPatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkParameter networkParameter});

  @override
  $NetworkParameterCopyWith<$Res> get networkParameter;
}

/// @nodoc
class __$$NetworkModelPatchImplCopyWithImpl<$Res>
    extends _$NetworkModelCopyWithImpl<$Res, _$NetworkModelPatchImpl>
    implements _$$NetworkModelPatchImplCopyWith<$Res> {
  __$$NetworkModelPatchImplCopyWithImpl(_$NetworkModelPatchImpl _value,
      $Res Function(_$NetworkModelPatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkParameter = null,
  }) {
    return _then(_$NetworkModelPatchImpl(
      networkParameter: null == networkParameter
          ? _value.networkParameter
          : networkParameter // ignore: cast_nullable_to_non_nullable
              as NetworkParameter,
    ));
  }
}

/// @nodoc

class _$NetworkModelPatchImpl implements _NetworkModelPatch {
  const _$NetworkModelPatchImpl({required this.networkParameter});

  @override
  final NetworkParameter networkParameter;

  @override
  String toString() {
    return 'NetworkModel.patch(networkParameter: $networkParameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkModelPatchImpl &&
            (identical(other.networkParameter, networkParameter) ||
                other.networkParameter == networkParameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkParameter);

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkModelPatchImplCopyWith<_$NetworkModelPatchImpl> get copyWith =>
      __$$NetworkModelPatchImplCopyWithImpl<_$NetworkModelPatchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkParameter networkParameter) post,
    required TResult Function(NetworkParameter networkParameter) get,
    required TResult Function(NetworkParameter networkParameter) delete,
    required TResult Function(NetworkParameter networkParameter) patch,
  }) {
    return patch(networkParameter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkParameter networkParameter)? post,
    TResult? Function(NetworkParameter networkParameter)? get,
    TResult? Function(NetworkParameter networkParameter)? delete,
    TResult? Function(NetworkParameter networkParameter)? patch,
  }) {
    return patch?.call(networkParameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkParameter networkParameter)? post,
    TResult Function(NetworkParameter networkParameter)? get,
    TResult Function(NetworkParameter networkParameter)? delete,
    TResult Function(NetworkParameter networkParameter)? patch,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(networkParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) post,
    required TResult Function(_NetworkModelGet value) get,
    required TResult Function(_NetworkModelDelete value) delete,
    required TResult Function(_NetworkModelPatch value) patch,
  }) {
    return patch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? post,
    TResult? Function(_NetworkModelGet value)? get,
    TResult? Function(_NetworkModelDelete value)? delete,
    TResult? Function(_NetworkModelPatch value)? patch,
  }) {
    return patch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? post,
    TResult Function(_NetworkModelGet value)? get,
    TResult Function(_NetworkModelDelete value)? delete,
    TResult Function(_NetworkModelPatch value)? patch,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(this);
    }
    return orElse();
  }
}

abstract class _NetworkModelPatch implements NetworkModel {
  const factory _NetworkModelPatch(
          {required final NetworkParameter networkParameter}) =
      _$NetworkModelPatchImpl;

  @override
  NetworkParameter get networkParameter;

  /// Create a copy of NetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkModelPatchImplCopyWith<_$NetworkModelPatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
