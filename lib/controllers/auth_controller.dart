import 'package:dotoread_app/data/models/auth_model/auth_model.dart';
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
        success: (data, url, headers, statusCode) {},
        error: (data, url, headers, statusCode) {
          print("error: $statusCode");
        },
        failure: (NetworkException) {},
      );
    } catch (exception) {
      print("$exception");
    }
    loader.value = false;
  }
}
