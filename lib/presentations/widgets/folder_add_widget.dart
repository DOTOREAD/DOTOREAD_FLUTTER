import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';
import 'package:dotoread_app/controllers/folder_add_widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FolderAddWidget extends StatelessWidget {
  final FolderAddWidgetController _controller =
      Get.find<FolderAddWidgetController>();
  FolderAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _controller.isAdding.value
              ? Row(
                  key: const ValueKey(1),
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppTheme.gray3)),
                          hintText: '폴더 이름',
                        ),
                        autofocus: true,
                        onChanged: _controller.onFolderNameChanged,
                      ),
                    ),
                    IconButton(
                      icon: _controller.isTextFieldNotEmpty.value
                          ? const Icon(
                              Icons.add,
                              color: AppTheme.orange1,
                            )
                          : const Icon(
                              Icons.close,
                              color: AppTheme.gray3,
                            ),
                      onPressed: _controller.isTextFieldNotEmpty.value
                          ? _controller.addFolder
                          : _controller.toggleAddMode,
                    ),
                  ],
                )
              : Row(
                  key: const ValueKey(2),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Folders', style: AppTheme.modalTitleStyle),
                    IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: AppTheme.gray3,
                      ),
                      onPressed: _controller.toggleAddMode,
                    ),
                  ],
                ),
        ),
      );
    });
  }
}
