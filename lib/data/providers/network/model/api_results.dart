import 'package:dotoread_app/data/providers/network/model/network_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_results.freezed.dart';

@freezed
class ApiResult with _$ApiResult {
  const factory ApiResult.success({
    required String data,
    required String url,
    required Map<String, String> headers,
    required int statusCode,
  }) = _ApiResultSuccess;

  const factory ApiResult.error({
    required String data,
    required String url,
    required Map<String, String> headers,
    required int statusCode,
  }) = _ApiResultError;

  const factory ApiResult.failure({
    required NetworkException networkException,
  }) = _ApiResultFailure;
}
