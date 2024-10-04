// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResModelImpl<T> _$$ResModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResModelImpl<T>(
      isSuccess: json['isSuccess'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: _$nullableGenericFromJson(json['result'], fromJsonT),
    );

Map<String, dynamic> _$$ResModelImplToJson<T>(
  _$ResModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': _$nullableGenericToJson(instance.result, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
