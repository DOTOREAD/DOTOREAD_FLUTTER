// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkModelImpl _$$BookmarkModelImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkModelImpl(
      bookmarkId: (json['bookmarkId'] as num?)?.toInt(),
      title: json['title'] as String?,
      url: json['url'] as String?,
      img: json['img'] as String?,
      createdAt: json['createdAt'] as String?,
      folder: json['folder'] == null
          ? null
          : FolderModel.fromJson(json['folder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookmarkModelImplToJson(_$BookmarkModelImpl instance) =>
    <String, dynamic>{
      'bookmarkId': instance.bookmarkId,
      'title': instance.title,
      'url': instance.url,
      'img': instance.img,
      'createdAt': instance.createdAt,
      'folder': instance.folder,
    };
