import 'dart:convert';

import 'package:dotoread_app/data/models/res_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'folder_model.freezed.dart';
part 'folder_model.g.dart';

List<FolderModel> folderModelListFromJson(List<dynamic> json) =>
    json.map((x) => FolderModel.fromJson(x as Map<String, dynamic>)).toList();
ResModel<List<FolderModel>> folderModelFromJson(String str) {
  final Map<String, dynamic> parsedData = json.decode(str);
  return ResModel<List<FolderModel>>.fromJson(
    parsedData,
    (json) => folderModelListFromJson(json as List<dynamic>),
  );
}

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
