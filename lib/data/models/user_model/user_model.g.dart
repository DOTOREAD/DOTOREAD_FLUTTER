// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nickName: json['nickName'] as String?,
      email: json['email'] as String?,
      storage: (json['storage'] as num?)?.toInt(),
      acornCount: (json['acornCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nickName': instance.nickName,
      'email': instance.email,
      'storage': instance.storage,
      'acornCount': instance.acornCount,
    };