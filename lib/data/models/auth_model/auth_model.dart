import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

List<AuthModel> authModelFromJson(String str) =>
    List<AuthModel>.from(json.decode(str).map((x) => AuthModel.fromJson(x)));
String authModelToJson(List<AuthModel> data) =>
    json.encode(List<dynamic>.from(data.map((e) => e.toJson())));

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    bool? isNew,
    String? accessToken,
    String? refreshToken,
  }) = _AuthModel;
  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
