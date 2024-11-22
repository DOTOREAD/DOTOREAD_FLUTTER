import 'package:dotoread_app/controllers/url_add_controller.dart';
import 'package:dotoread_app/presentations/widgets/folder_list_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotoread_app/core/constants/theme.dart';

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
        padding: EdgeInsets.zero,
        onPressed: () {
          _showUrlModal(context);
        },
        icon: const Icon(Icons.note_add_outlined),
        color: AppTheme.white1,
      ),
    );
  }

  void _showUrlModal(BuildContext context) {
    final UrlAddController controller = Get.find<UrlAddController>();

    final RenderBox buttonBox = context.findRenderObject() as RenderBox;
    final Offset buttonPosition = buttonBox.localToGlobal(Offset.zero);
    final double buttonTop = buttonPosition.dy;
    const double buttonSize = 42;
    final double adjustedTopPosition = buttonTop;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Positioned(
              top: adjustedTopPosition - buttonSize,
              left: 16,
              right: 16,
              child: Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: AppTheme.backgroundBox,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppTheme.orange3,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.note_add_outlined,
                              color: AppTheme.orange1,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text('Enter URL',
                              style: AppTheme.modalTitleStyle),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        onChanged: (value) => controller.updateUrl(value),
                        decoration: AppTheme.urlInputDecoration,
                        keyboardType: TextInputType.url,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => ElevatedButton(
                                style: AppTheme.textButtonSecondaryTheme,
                                onPressed: () {
                                  controller.toggleFolderList();
                                },
                                child: Text(
                                  controller.selectedFolder.value == 0
                                      ? '미분류'
                                      : controller.selectedFolderName.value,
                                  style: AppTheme.buttonTextStyle,
                                ),
                              )),
                          ElevatedButton(
                            style: AppTheme.textButtonPrimaryTheme,
                            onPressed: () {
                              controller.saveUrl();
                            },
                            child: const Text('저장',
                                style: AppTheme.buttonTextStyle),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Obx(() => controller.showFolderList.value
                          ? FolderListModal(
                              onFolderSelect: (folderId) {
                                controller.selectFolder(folderId);
                                controller.toggleFolderList();
                              },
                              selectedFolderId: controller.selectedFolder.value,
                            )
                          : const SizedBox.shrink()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
