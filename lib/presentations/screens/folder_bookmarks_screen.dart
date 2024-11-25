import 'package:dotoread_app/controllers/bookmarks_controller.dart';
import 'package:dotoread_app/data/models/folder_model/folder_model.dart';
import 'package:dotoread_app/presentations/screens/all_bookmarks_screeen.dart';
import 'package:dotoread_app/presentations/screens/webview_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FolderBookmarksScreen extends GetView<BookmarksController> {
  final FolderModel folder;

  const FolderBookmarksScreen({
    required this.folder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(folder.name!),
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () => controller.toggleSortType(),
              icon: Obx(() => Icon(controller.currentSortType.value == 'DESC'
                  ? Icons.arrow_downward
                  : Icons.arrow_upward)),
            ),
          ],
        ),
        body: Obx(() => controller.loader.value
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.folderBookmarksList.length,
                itemBuilder: (context, index) {
                  final bookmark = controller.folderBookmarksList[index];
                  return ListTile(
                    // leading: bookmark.isVisited!
                    //     ? Container(
                    //         width: 3,
                    //         height: double.infinity,
                    //         decoration: const BoxDecoration(
                    //           color: AppTheme.gray1,
                    //         ),
                    //       )
                    //     : Container(
                    //         width: 3,
                    //         height: double.infinity,
                    //         decoration: const BoxDecoration(
                    //           color: AppTheme.orange1,
                    //         ),
                    //       ),
                    title: Text(bookmark.title!),
                    subtitle: Text(bookmark.url!),
                    onTap: () {
                      // _controller.updateVisit(index);
                      Get.to(() => WebviewScreen(
                          title: bookmark.title!, url: bookmark.url!));
                    },
                  );
                },
              )),
      ),
    );
  }
}
