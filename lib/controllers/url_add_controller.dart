import 'dart:developer';

import 'package:dotoread_app/controllers/bookmarks_controller.dart';
import 'package:dotoread_app/controllers/folder_controller.dart';
import 'package:dotoread_app/data/models/folder_model/folder_model.dart';
import 'package:get/get.dart';

class UrlAddController extends GetxController {
  RxString urlController = ''.obs;
  RxBool showFolderList = false.obs;
  RxInt selectedFolder = 0.obs;
  RxString selectedFolderName = ''.obs;
  final FolderController folderController = Get.find<FolderController>();
  final BookmarksController bookmarksController =
      Get.find<BookmarksController>();

  void updateUrl(String url) {
    urlController.value = url;
  }

  void toggleFolderList() {
    showFolderList.value = !showFolderList.value;
  }

  void selectFolder(int folderId) {
    selectedFolder.value = folderId;
    var folder = folderController.folderList
        .firstWhereOrNull((folder) => folder.id == folderId);
    selectedFolderName.value = folder?.name ?? "미분류";
  }

  void saveUrl() {
    if (urlController.isNotEmpty) {
      log('Saving URL: ${urlController.value} to folder: ${selectedFolder.value == 0 ? '미분류' : selectedFolder.value}');
      bookmarksController.createBookmarksCall(urlController.value);
      urlController.value = '';
      selectedFolder.value = 0;
      selectedFolderName.value = '';
      Get.back();
    }
  }
}
