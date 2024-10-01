import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_mission_model.freezed.dart';
part 'user_mission_model.g.dart';

@freezed
class UserMissionModel with _$UserMissionModel {
  const factory UserMissionModel({
    int? id,
    int? userId,
    int? missionId,
    DateTime? completedDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? current,
  }) = _UserMissionModel;
  factory UserMissionModel.fromJson(Map<String, dynamic> json) =>
      _$UserMissionModelFromJson(json);
}
