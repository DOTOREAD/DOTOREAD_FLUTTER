import 'package:dotoread_app/controllers/folder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotoread_app/core/constants/theme.dart';

class FolderListModal extends StatelessWidget {
  final Function(int) onFolderSelect;
  final FolderController _controller = Get.find<FolderController>();
  final int selectedFolderId;

  FolderListModal(
      {super.key,
      required this.onFolderSelect,
      required this.selectedFolderId});

  @override
  Widget build(BuildContext context) {
    return Obx(() => _controller.loader.value
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: [
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.start,
                children: _controller.folderList.map((folder) {
                  final isSelected = folder.id == selectedFolderId;

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      backgroundColor:
                          isSelected ? AppTheme.orange3 : AppTheme.articleBox,
                      shape: RoundedRectangleBorder(
                        side: isSelected
                            ? const BorderSide(
                                color: AppTheme.orange1, width: 2.0)
                            : BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      onFolderSelect(folder.id!);
                    },
                    child: Text(
                      folder.name!,
                      textAlign: TextAlign.center,
                      style: AppTheme.folderTextStyle,
                    ),
                  );
                }).toList(),
              ),
            ],
          ));
  }
}
