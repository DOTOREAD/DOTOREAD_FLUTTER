import 'package:dotoread_app/controllers/root_controller.dart';
import 'package:dotoread_app/controllers/splash_controller.dart';
import 'package:get/get.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
  }
}
