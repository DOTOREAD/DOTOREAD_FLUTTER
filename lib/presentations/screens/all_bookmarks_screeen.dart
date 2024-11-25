import 'package:dotoread_app/controllers/bookmarks_controller.dart';
import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/data/models/bookmark_model/bookmark_model.dart';
import 'package:dotoread_app/presentations/screens/webview_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBookmarksScreen extends StatelessWidget {
  AllBookmarksScreen({super.key});
  final BookmarksController _controller = Get.find<BookmarksController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("모든 북마크"),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () => _controller.toggleSortType(),
            icon: Obx(() => Icon(_controller.currentSortType.value == 'DESC'
                ? Icons.arrow_downward
                : Icons.arrow_upward)),
          ),
        ],
      ),
      body: Obx(() => _controller.loader.value
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _controller.allBookmarksList.length,
              itemBuilder: (context, index) {
                final bookmark = _controller.allBookmarksList[index];
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
    ));
  }
}
