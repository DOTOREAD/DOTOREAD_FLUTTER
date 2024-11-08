import 'package:dotoread_app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShareScreen extends StatelessWidget {
  ShareScreen({super.key});
  AuthController controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await controller.webviewLogin();
          },
          child: const Text(
            'Google 로그인하기',
          ),
        ),
      ),
    );
  }
}
