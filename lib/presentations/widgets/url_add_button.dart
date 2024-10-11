import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/url_add_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UrlAddButton extends StatelessWidget {
  const UrlAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: AppTheme.orange1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: _showUrlModal,
        icon: const Icon(Icons.note_add_outlined),
        color: AppTheme.white1,
      ),
    );
  }

  void _showUrlModal() {
    final TextEditingController urlController = TextEditingController();

    Get.bottomSheet(
      UrlAddModal(urlController: urlController),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: AppTheme.backgroundBox,
    );
  }
}
