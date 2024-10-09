import 'package:dotoread_app/controllers/folder_controller.dart';
import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/data/models/folder_model/folder_model.dart';
import 'package:dotoread_app/presentations/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FolderList extends StatelessWidget {
  final FolderController _controller = Get.find<FolderController>();

  FolderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => _controller.loader.value
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: _controller.folderList.map((folder) {
              final index = _controller.folderList.indexOf(folder);
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
                      ? Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/Folder.svg',
                              width: 24,
                              height: 24,
                              color: AppTheme.white2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              folder.name!,
                              style: AppTheme.folderTextStyle,
                            ),
                          ],
                        )
                      : const SizedBox(),
                  tileColor: AppTheme.backgroundBox,
                  selectedTileColor: AppTheme.orange3,
                  iconColor: AppTheme.orange3,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                ),
              );
            }).toList(),
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
              title: const Text('이름 변경하기'),
              onTap: () {
                Navigator.pop(context);
                _showRenameDialog(context, folderModel, index);
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('삭제하기'),
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
          title: const Text('폴더 이름 변경하기'),
          content: TextField(
            controller: renameController,
            decoration: const InputDecoration(hintText: "폴더 이름"),
          ),
          actions: <Widget>[
            TextButton(
              style: AppTheme.textButtonSecondaryTheme,
              child: const Text(
                '취소',
                style: AppTheme.buttonTextStyle,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: AppTheme.textButtonPrimaryTheme,
              child: const Text(
                '변경',
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
          title: Text('${folderModel.name} 폴더를 삭제하시겠습니까?'),
          content: const Text('북마크가 모두 미분류 폴더로 이동합니다.'),
          actions: <Widget>[
            TextButton(
              style: AppTheme.textButtonSecondaryTheme,
              child: const Text(
                '취소',
                style: AppTheme.buttonTextStyle,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: AppTheme.textButtonPrimaryTheme,
              child: const Text(
                '삭제',
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
