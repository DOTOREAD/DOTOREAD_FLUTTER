import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'folder_model.freezed.dart';
part 'folder_model.g.dart';

List<FolderModel> folderModelFromJson(String str) => List<FolderModel>.from(
    json.decode(str).map((x) => FolderModel.fromJson(x)));
String folderModelToJson(List<FolderModel> data) =>
    json.encode(List<dynamic>.from(data.map((e) => e.toJson())));
String folderModelToSingleJson(FolderModel data) => json.encode(data.toJson());

@freezed
class FolderModel with _$FolderModel {
  const factory FolderModel({
    int? id,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _FolderModel;
  factory FolderModel.fromJson(Map<String, dynamic> json) =>
      _$FolderModelFromJson(json);
}
