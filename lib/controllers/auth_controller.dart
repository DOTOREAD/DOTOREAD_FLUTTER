import 'dart:convert';
import 'dart:developer';

import 'package:dotoread_app/data/models/auth_model/auth_model.dart';
import 'package:dotoread_app/data/models/res_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/domain/repositories/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  Future<void> signInWithGoogle() async {
    loader.value = true;
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      // await googleSignIn.signOut();

      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) throw 'googleUser == null';

      final googleAuth = await googleUser.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (accessToken == null) throw 'accessToken == null';
      if (idToken == null) throw 'idToken == null';

      final response = await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      if (response.session != null) {
        final accessToken = response.session!.accessToken;
        final refreshToken = response.session!.refreshToken;

        log("Access Token: $accessToken");
        log("Refresh Token: $refreshToken");

        await _secureStorage.write(
          key: accessTokenKey,
          value: accessToken,
        );
        await _secureStorage.write(
          key: refreshTokenKey,
          value: refreshToken,
        );

        log("로그인 성공");
      }
    } catch (error) {
      log("로그인 실패 $error");
      // if (error is! String) {
      //  await GoogleSignIn().signOut();
      // }
      rethrow;
    } finally {
      loader.value = false;
    }
  }
}
