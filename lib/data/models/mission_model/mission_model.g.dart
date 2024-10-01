// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionModelImpl _$$MissionModelImplFromJson(Map<String, dynamic> json) =>
    _$MissionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      content: json['content'] as String?,
      goal: (json['goal'] as num?)?.toInt(),
      reward: (json['reward'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MissionModelImplToJson(_$MissionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'goal': instance.goal,
      'reward': instance.reward,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
