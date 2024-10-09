import 'package:dotoread_app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  AuthController controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      child: const Text('data'),
      onPressed: () {
        controller.login();
      },
    ));
  }
}
