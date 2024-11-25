import 'dart:developer';

import 'package:dotoread_app/data/models/bookmark_model/bookmark_model.dart';
import 'package:dotoread_app/data/models/res_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/domain/repositories/bookmark_repository.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';
import 'package:get/get.dart';

class BookmarksController extends GetxController {
  final BookmarkRepository bookmarkRepository;

  BookmarksController(this.bookmarkRepository);

  RxBool loader = false.obs;
  RxList<BookmarkModel> bookmarksListbyFolderId = <BookmarkModel>[].obs;
  RxList<BookmarkModel> allBookmarksList = <BookmarkModel>[].obs;
  RxList<BookmarkModel> uncategorizedBookmarksList = <BookmarkModel>[].obs;
  final RxString currentSortType = 'DESC'.obs;

  void getBookmarksByFolderId(int folderId) {
    // todo
  }

  // Future<void> updateVisit(int index) async {
  //   Map<String, dynamic> updatedFields = {
  //     'isVisited': true,
  //   };
  //   ApiResult result = await bookmarkRepository.updateBookmarks(
  //       bookmarksList[index].id!, updatedFields);
  //   result.when(
  //     success: (data, url, headers, statusCode) {
  //       bookmarksList[index] = bookmarksList[index].copyWith(isVisited: true);
  //       print("Bookmark updated successfully: $statusCode, Data: $data");
  //     },
  //     error: (data, url, headers, statusCode) {
  //       print("Error updating bookmark: $statusCode, Data: $data");
  //     },
  //     failure: (NetworkException) {
  //       print("Failed to update bookmark: $NetworkException");
  //     },
  //   );
  // }

  Future<void> postBookmarks(int id, String url) async {
    if (url != '') {
      BookmarkModel newBookmark = BookmarkModel(url: url);
      ApiResult result = await bookmarkRepository.createBookmarks(newBookmark);
      result.when(
          success: (data, url, headers, statusCode) async {
            log(data);
          },
          error: (data, url, headers, statusCode) {},
          failure: (NetworkException) {});
    }
  }

  Future<void> getAllBookmarksCall({String? sortType}) async {
    loader.value = true;
    if (sortType != null) {
      currentSortType.value = sortType;
    }
    ApiResult result = await bookmarkRepository.getAllBookmarks(
        sortType: currentSortType.value);
    result.when(
      success: (data, url, headers, statusCode) {
        final ResModel<List<BookmarkModel>> resModel =
            bookmarkModelFromJson(data);
        allBookmarksList.value = resModel.result ?? <BookmarkModel>[];
      },
      error: (data, url, headers, statusCode) {
        log("error: $statusCode");
      },
      failure: (networkException) {},
    );
    loader.value = false;
  }

  Future<void> getUncategorizedBookmarksCall({String? sortType}) async {
    loader.value = true;
    if (sortType != null) {
      currentSortType.value = sortType;
    }
    ApiResult result = await bookmarkRepository.getUncategorizedBookmarks(
        sortType: currentSortType.value);
    result.when(
      success: (data, url, headers, statusCode) {
        final ResModel<List<BookmarkModel>> resModel =
            bookmarkModelFromJson(data);
        uncategorizedBookmarksList.value = resModel.result ?? <BookmarkModel>[];
      },
      error: (data, url, headers, statusCode) {
        log("error: $statusCode");
      },
      failure: (networkException) {},
    );
    loader.value = false;
  }

  void toggleSortType() {
    final newSortType = currentSortType.value == 'DESC' ? 'ASC' : 'DESC';
    getAllBookmarksCall(sortType: newSortType);
  }

  @override
  void onInit() {
    getAllBookmarksCall();
    super.onInit();
  }
}
