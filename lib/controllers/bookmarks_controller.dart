import 'package:dotoread_app/data/models/bookmark_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/domain/repositories/bookmark_repository.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';
import 'package:get/get.dart';

class BookmarksController extends GetxController {
  final BookmarkRepository bookmarkRepository;

  BookmarksController(this.bookmarkRepository);

  RxBool loader = false.obs;
  RxList<BookmarkModel> bookmarksListbyFolderId = <BookmarkModel>[].obs;
  RxList<BookmarkModel> bookmarksList = <BookmarkModel>[].obs;

  void getBookmarksByFolderId(int folderId) {
    // todo
  }

  Future<void> updateVisit(BookmarkModel bookmark) async {
    // todo
  }

  Future<void> getAllBookmarksCall() async {
    loader.value = true;
    ApiResult result = await bookmarkRepository.getBookmarks();
    result.when(
      success: (data, url, headers, statusCode) {
        bookmarksList.value = bookmarkModelFromJson(data);
      },
      error: (data, url, headers, statusCode) {
        print("error: $statusCode");
      },
      failure: (NetworkException) {},
    );
    loader.value = false;
  }

  @override
  void onInit() {
    getAllBookmarksCall();
    super.onInit();
  }
}
