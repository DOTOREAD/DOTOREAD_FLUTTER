import 'dart:convert';

import 'package:dotoread_app/data/models/folder_model/folder_model.dart';
import 'package:dotoread_app/data/models/res_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_model.freezed.dart';
part 'bookmark_model.g.dart';

List<BookmarkModel> bookmarkModelListFromJson(List<dynamic> json) =>
    json.map((x) => BookmarkModel.fromJson(x as Map<String, dynamic>)).toList();
ResModel<List<BookmarkModel>> bookmarkModelFromJson(String str) {
  final Map<String, dynamic> parsedData = json.decode(str);
  return ResModel<List<BookmarkModel>>.fromJson(
    parsedData,
    (json) => bookmarkModelListFromJson(json as List<dynamic>),
  );
}

@freezed
class BookmarkModel with _$BookmarkModel {
  const factory BookmarkModel({
    int? bookmarkId,
    String? title,
    String? url,
    String? img,
    String? createdAt,
    FolderModel? folder,
  }) = _BookmarkModel;
  factory BookmarkModel.fromJson(Map<String, dynamic> json) =>
      _$BookmarkModelFromJson(json);
}
