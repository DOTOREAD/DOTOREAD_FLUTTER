import 'dart:io';
import 'dart:convert';

import 'package:dotoread_app/data/providers/network/contract.dart';
import 'package:dotoread_app/data/providers/network/http/http_contract.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/data/providers/network/model/network_exception.dart';
import 'package:dotoread_app/data/providers/network/model/network_model.dart';
import 'package:http/http.dart' as http;

class NetworkImplementation extends Network {
  HttpNetwork httpNetwork;
  NetworkImplementation(this.httpNetwork);

  @override
  Future<ApiResult> callApi({required NetworkModel method}) async {
    try {
      http.Response response = await httpNetwork.getResponse(method: method);
      String body = utf8.decode(response.bodyBytes); // 인코딩 문제 해결한글
      String url = response.request?.url.toString() ?? "";
      int statusCode = response.statusCode;
      Map<String, String> headers = response.headers;

      if (httpNetwork.validStatusCode(statusCode)) {
        return ApiResult.success(
            data: body, url: url, headers: headers, statusCode: statusCode);
      } else {
        return ApiResult.error(
            data: body, url: url, headers: headers, statusCode: statusCode);
      }
    } on HttpException {
      return const ApiResult.failure(
          networkException: NetworkException.httpException());
    } on FormatException {
      return const ApiResult.failure(
          networkException: NetworkException.formatException());
    } catch (exception) {
      return httpNetwork.unknownException;
    }
  }
}
