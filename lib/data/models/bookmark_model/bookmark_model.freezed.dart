// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarkModel _$BookmarkModelFromJson(Map<String, dynamic> json) {
  return _BookmarkModel.fromJson(json);
}

/// @nodoc
mixin _$BookmarkModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get folderId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get isVisited => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;

  /// Serializes this BookmarkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookmarkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkModelCopyWith<BookmarkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkModelCopyWith<$Res> {
  factory $BookmarkModelCopyWith(
          BookmarkModel value, $Res Function(BookmarkModel) then) =
      _$BookmarkModelCopyWithImpl<$Res, BookmarkModel>;
  @useResult
  $Res call(
      {int? id,
      int? userId,
      int? folderId,
      String? url,
      String? imageUrl,
      String? title,
      bool? isVisited,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? rating});
}

/// @nodoc
class _$BookmarkModelCopyWithImpl<$Res, $Val extends BookmarkModel>
    implements $BookmarkModelCopyWith<$Res> {
  _$BookmarkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? folderId = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? isVisited = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisited: freezed == isVisited
          ? _value.isVisited
          : isVisited // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkModelImplCopyWith<$Res>
    implements $BookmarkModelCopyWith<$Res> {
  factory _$$BookmarkModelImplCopyWith(
          _$BookmarkModelImpl value, $Res Function(_$BookmarkModelImpl) then) =
      __$$BookmarkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userId,
      int? folderId,
      String? url,
      String? imageUrl,
      String? title,
      bool? isVisited,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? rating});
}

/// @nodoc
class __$$BookmarkModelImplCopyWithImpl<$Res>
    extends _$BookmarkModelCopyWithImpl<$Res, _$BookmarkModelImpl>
    implements _$$BookmarkModelImplCopyWith<$Res> {
  __$$BookmarkModelImplCopyWithImpl(
      _$BookmarkModelImpl _value, $Res Function(_$BookmarkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? folderId = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? isVisited = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$BookmarkModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisited: freezed == isVisited
          ? _value.isVisited
          : isVisited // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkModelImpl implements _BookmarkModel {
  const _$BookmarkModelImpl(
      {this.id,
      this.userId,
      this.folderId,
      this.url,
      this.imageUrl,
      this.title,
      this.isVisited,
      this.createdAt,
      this.updatedAt,
      this.rating});

  factory _$BookmarkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final int? folderId;
  @override
  final String? url;
  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final bool? isVisited;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? rating;

  @override
  String toString() {
    return 'BookmarkModel(id: $id, userId: $userId, folderId: $folderId, url: $url, imageUrl: $imageUrl, title: $title, isVisited: $isVisited, createdAt: $createdAt, updatedAt: $updatedAt, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isVisited, isVisited) ||
                other.isVisited == isVisited) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, folderId, url,
      imageUrl, title, isVisited, createdAt, updatedAt, rating);

  /// Create a copy of BookmarkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkModelImplCopyWith<_$BookmarkModelImpl> get copyWith =>
      __$$BookmarkModelImplCopyWithImpl<_$BookmarkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkModelImplToJson(
      this,
    );
  }
}

abstract class _BookmarkModel implements BookmarkModel {
  const factory _BookmarkModel(
      {final int? id,
      final int? userId,
      final int? folderId,
      final String? url,
      final String? imageUrl,
      final String? title,
      final bool? isVisited,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? rating}) = _$BookmarkModelImpl;

  factory _BookmarkModel.fromJson(Map<String, dynamic> json) =
      _$BookmarkModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  int? get folderId;
  @override
  String? get url;
  @override
  String? get imageUrl;
  @override
  String? get title;
  @override
  bool? get isVisited;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get rating;

  /// Create a copy of BookmarkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkModelImplCopyWith<_$BookmarkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
