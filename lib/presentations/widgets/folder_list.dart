import 'package:dotoread_app/controllers/folder_controller.dart';
import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/data/models/folder_model.dart';
import 'package:dotoread_app/presentations/routes/app_routes.dart';
import 'package:dotoread_app/presentations/screens/folder_details_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FolderList extends StatelessWidget {
  final FolderController _controller = Get.find<FolderController>();

  FolderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => _controller.loader.value
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: _controller.folderList.length,
            itemBuilder: (context, index) {
              final folder = _controller.folderList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ListTile(
                  onTap: () {
                    Get.toNamed(AppRoutes.BookmarkInFolder, arguments: folder);
                  },
                  onLongPress: () {
                    _showContextMenu(context, folder, index);
                  },
                  title: folder.name != null
                      ? Text(folder.name!)
                      : const SizedBox(),
                  tileColor: AppTheme.backgroundBox,
                  selectedTileColor: AppTheme.orange3,
                  iconColor: AppTheme.orange3,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                ),
              );
            },
          ));
  }

  void _showContextMenu(
      BuildContext context, FolderModel folderModel, int index) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Rename'),
              onTap: () {
                Navigator.pop(context);
                _showRenameDialog(context, folderModel, index);
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete'),
              onTap: () {
                Navigator.pop(context);
                _confirmDelete(context, folderModel, index);
              },
            ),
          ],
        );
      },
    );
  }

  void _showRenameDialog(
      BuildContext context, FolderModel folderModel, int index) {
    TextEditingController renameController =
        TextEditingController(text: folderModel.name);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Rename Folder'),
          content: TextField(
            controller: renameController,
            decoration:
                const InputDecoration(hintText: "Enter new folder name"),
          ),
          actions: <Widget>[
            TextButton(
              style: AppTheme.textButtonSecondaryTheme,
              child: const Text(
                'Cancel',
                style: AppTheme.buttonTextStyle,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: AppTheme.textButtonPrimaryTheme,
              child: const Text(
                'Rename',
                style: AppTheme.buttonTextStyle,
              ),
              onPressed: () {
                _controller.updateFolderCall(index, renameController.text);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _confirmDelete(
      BuildContext context, FolderModel folderModel, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Folder'),
          content: const Text('Are you sure you want to delete this folder?'),
          actions: <Widget>[
            TextButton(
              style: AppTheme.textButtonSecondaryTheme,
              child: const Text(
                'Cancel',
                style: AppTheme.buttonTextStyle,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: AppTheme.textButtonPrimaryTheme,
              child: const Text(
                'Delete',
                style: AppTheme.buttonTextStyle,
              ),
              onPressed: () async {
                Navigator.pop(context);
                await _controller.deleteFolderCall(index);
              },
            ),
          ],
        );
      },
    );
  }
}
