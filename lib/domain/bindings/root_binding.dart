import 'package:dotoread_app/controllers/auth_controller.dart';
import 'package:dotoread_app/controllers/root_controller.dart';
import 'package:dotoread_app/controllers/splash_controller.dart';
import 'package:dotoread_app/controllers/url_add_controller.dart';
import 'package:dotoread_app/domain/repositories/auth_repository.dart';
import 'package:get/get.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<UrlAddController>(() => UrlAddController());
    Get.lazyPut<AuthController>(
        () => AuthController(Get.find<AuthRepository>()));
  }
}
