import 'package:dotoread_app/controllers/bookmarks_controller.dart';
import 'package:dotoread_app/data/models/bookmark_model.dart';
import 'package:dotoread_app/presentations/screens/webview_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FolderContentList extends StatelessWidget {
  FolderContentList({
    super.key,
  });

  final BookmarksController _controller = Get.find<BookmarksController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => _controller.loader.value
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: _controller.bookmarksList.length,
            itemBuilder: (context, index) {
              final bookmark = _controller.bookmarksList[index];
              return ListTile(
                title: Text(bookmark.title!),
                subtitle: Text(bookmark.url!),
                onTap: () {
                  Get.to(() => WebviewScreen(
                      title: bookmark.title!, url: bookmark.url!));
                  //_controller.viewContent() => /book inappview로 구현 해야댐
                },
              );
            },
          ));
  }
}
