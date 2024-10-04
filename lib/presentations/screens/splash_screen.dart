import 'package:dotoread_app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  SplashController controller = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    controller.moveToRoot();
    return Center(child: Image.asset("assets/logo/Logo.png"));
  }
}
