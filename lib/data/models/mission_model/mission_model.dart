import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission_model.freezed.dart';
part 'mission_model.g.dart';

@freezed
class MissionModel with _$MissionModel {
  const factory MissionModel({
    int? id,
    String? content,
    int? goal,
    int? reward,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MissionModel;
  factory MissionModel.fromJson(Map<String, dynamic> json) =>
      _$MissionModelFromJson(json);
}
