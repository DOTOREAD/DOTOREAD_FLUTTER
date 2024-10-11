import 'package:dotoread_app/core/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UrlAddModal extends StatelessWidget {
  const UrlAddModal({
    super.key,
    required TextEditingController urlController,
  }) : _urlController = urlController;

  final TextEditingController _urlController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter URL', style: AppTheme.modalTitleStyle),
            const SizedBox(height: 20),
            TextField(
              controller: _urlController,
              decoration: AppTheme.urlInputDecoration,
              keyboardType: TextInputType.url,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: AppTheme.textButtonPrimaryTheme,
              onPressed: () {
                final enteredUrl = _urlController.text;
                if (enteredUrl.isNotEmpty) {
                  Get.back();
                  _urlController.clear();
                }
              },
              child: const Text(
                'Save URL',
                style: AppTheme.buttonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
