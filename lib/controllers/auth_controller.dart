import 'dart:convert';
import 'dart:developer';

import 'package:dotoread_app/data/models/auth_model/auth_model.dart';
import 'package:dotoread_app/data/models/res_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/domain/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final AuthRepository authRepository;
  final _secureStorage = const FlutterSecureStorage();

  AuthController(this.authRepository);

  RxBool loader = false.obs;

  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';

  Future<void> webviewLogin() async {
    loader.value = true;
    try {
      Get.to(() => Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
            ),
            body: InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri(
                    'https://api.dotoread.shop/oauth2/authorization/google'),
              ),
              initialSettings: InAppWebViewSettings(userAgent: 'random'),
              onLoadStop: (controller, url) async {
                log('Page loaded: $url');

                final content = await controller.evaluateJavascript(
                    source: "document.body.textContent");

                if (content != null) {
                  try {
                    final response = json.decode(content);
                    log('Login response: $response');

                    if (response['isSuccess'] == true) {
                      final accessToken = response['result']['accessToken'];
                      final refreshToken = response['result']['refreshToken'];

                      await _secureStorage.write(
                          key: accessTokenKey, value: accessToken);
                      await _secureStorage.write(
                          key: refreshTokenKey, value: refreshToken);

                      log('acccess: $accessToken refresh: $refreshToken');

                      Get.back();
                      Get.snackbar('Success', '로그인이 완료되었습니다.');
                    }
                  } catch (e) {
                    log('JSON parsing error: $e');
                  }
                }
              },
            ),
          ));
    } catch (exception) {
      log("Exception occurred: $exception");
    }
    loader.value = false;
  }

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

            log("ㄹ고인 성공");
          } else {
            log("Login failed. Code: ${resModel.code}, Message: ${resModel.message}");
          }
        },
        error: (data, url, headers, statusCode) {
          log("error: $statusCode");
        },
        failure: (networkException) {
          log("Network failure: $networkException");
        },
      );
    } catch (exception) {
      log("Exception : $exception");
    }
    loader.value = false;
  }
}
