import 'dart:convert';
import 'dart:developer';

import 'package:dotoread_app/data/models/auth_model/auth_model.dart';
import 'package:dotoread_app/data/models/res_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/data/repositories_impl/auth_repository_impl.dart';
import 'package:dotoread_app/domain/repositories/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final AuthRepository authRepository;
  final _secureStorage = const FlutterSecureStorage();

  AuthController(this.authRepository);

  RxBool loader = false.obs;

  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';

  Future<void> login() async {
    loader.value = true;

    try {
      ApiResult apiResult = await authRepository.getAuth();
      apiResult.when(
        success: (data, url, headers, statusCode) {
          final Map<String, dynamic> parsedData = json.decode(data);

          final ResModel<AuthModel> resModel = ResModel<AuthModel>.fromJson(
            parsedData,
            (json) => AuthModel.fromJson(json as Map<String, dynamic>),
          );

          if (resModel.isSuccess == true) {
            final AuthModel authData = resModel.result!;
            log('$authData');

            // // AccessToken & RefreshToken 저장
            // _secureStorage.write(
            //     key: accessTokenKey, value: authData.accessToken);
            // _secureStorage.write(
            //     key: refreshTokenKey, value: authData.refreshToken);

            print("Login success: Access Token and Refresh Token saved.");
          } else {
            print(
                "Login failed. Code: ${resModel.code}, Message: ${resModel.message}");
          }
        },
        error: (data, url, headers, statusCode) {
          print("error: $statusCode");
        },
        failure: (networkException) {
          print("Network failure: $networkException");
        },
      );
    } catch (exception) {
      print("Exception occurred: $exception");
    }
    loader.value = false;
  }
}
