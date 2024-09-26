import 'dart:async';

import 'package:dotoread_app/presentations/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // moveToSignInPage() {
  //   Timer.periodic(const Duration(seconds: 2), (timer) {
  //     Get.toNamed(AppRoutes.PostsPage);
  //   });
  // }
  Timer? _rootTimer;

  moveToRoot() {
    if (_rootTimer == null || !_rootTimer!.isActive) {
      _rootTimer = Timer(const Duration(seconds: 2), () {
        Get.toNamed(AppRoutes.Root);
      });
    }
  }

  @override
  void onClose() {
    _rootTimer?.cancel();
    super.onClose();
  }
}
