import 'package:dotoread_app/data/models/user_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';

abstract class BookmarkRepository {
  Future<ApiResult> getBookmarks();
  Future<ApiResult> createBookmarks(UserModel userModel);
  Future<ApiResult> deleteBookmarks(UserModel userModel);
  Future<ApiResult> updateBookmarks(int id, Map<String, dynamic> updatedFields);
}
