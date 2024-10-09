import 'package:dotoread_app/controllers/auth_controller.dart';
import 'package:dotoread_app/domain/repositories/auth_repository.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
        () => AuthController(Get.find<AuthRepository>()));
  }
}
