import 'package:dotoread_app/data/models/bookmark_model/bookmark_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';

abstract class BookmarkRepository {
  Future<ApiResult> getAllBookmarks({String? sortType});
  Future<ApiResult> getUncategorizedBookmarks();
  Future<ApiResult> getBookmarksByFolder();
  Future<ApiResult> createBookmarks(BookmarkModel bookmarkModel);
  Future<ApiResult> deleteBookmarks(BookmarkModel bookmarkModel);
  Future<ApiResult> updateBookmarks(int id, Map<String, dynamic> updatedFields);
}
