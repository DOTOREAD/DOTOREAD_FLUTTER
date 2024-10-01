// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserMissionModelImpl _$$UserMissionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserMissionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      missionId: (json['missionId'] as num?)?.toInt(),
      completedDate: json['completedDate'] == null
          ? null
          : DateTime.parse(json['completedDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      current: (json['current'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserMissionModelImplToJson(
        _$UserMissionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'missionId': instance.missionId,
      'completedDate': instance.completedDate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'current': instance.current,
    };
