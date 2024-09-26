import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_model.freezed.dart';
part 'bookmark_model.g.dart';

List<BookmarkModel> bookmarkModelFromJson(String str) =>
    List<BookmarkModel>.from(
        json.decode(str).map((x) => BookmarkModel.fromJson(x)));
String bookmarkModelToJson(List<BookmarkModel> data) =>
    json.encode(List<dynamic>.from(data.map((e) => e.toJson())));

@freezed
class BookmarkModel with _$BookmarkModel {
  const factory BookmarkModel({
    int? id,
    int? userId,
    int? folderId,
    String? url,
    String? imageUrl,
    String? title,
    bool? isVisited,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? rating,
  }) = _BookmarkModel;
  factory BookmarkModel.fromJson(Map<String, dynamic> json) =>
      _$BookmarkModelFromJson(json);
}
