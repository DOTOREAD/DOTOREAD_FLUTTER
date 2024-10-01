import 'package:dotoread_app/core/constants/string_constant.dart';
import 'package:dotoread_app/data/models/bookmark_model/bookmark_model.dart';
import 'package:dotoread_app/data/models/user_model/user_model.dart';
import 'package:dotoread_app/domain/repositories/bookmark_repository.dart';
import 'package:dotoread_app/data/providers/network/contract.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/data/providers/network/model/network_exception.dart';
import 'package:dotoread_app/data/providers/network/model/network_model.dart';
import 'package:dotoread_app/data/providers/network/model/network_parameters.dart';

class BookmarkRepositoryImpl extends BookmarkRepository {
  final Network network;
  BookmarkRepositoryImpl(this.network);

  @override
  Future<ApiResult> getBookmarks() async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: const NetworkModel.get(
              networkParameter: NetworkParameter(url: baseUrl + bookmarkUrl)));
    } catch (exception) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownException());
    }
    return apiResult;
  }

  @override
  Future<ApiResult> createBookmarks(BookmarkModel bookmarkModel) {
    // TODO: implement createBookmarks
    throw UnimplementedError();
  }

  @override
  Future<ApiResult> deleteBookmarks(BookmarkModel bookmarkModel) {
    // TODO: implement deleteBookmarks
    throw UnimplementedError();
  }

  @override
  Future<ApiResult> updateBookmarks(
      int bookmarkId, Map<String, dynamic> updatedFields) async {
    ApiResult apiResult;

    try {
      apiResult = await network.callApi(
        method: NetworkModel.patch(
          networkParameter: NetworkParameter(
              url: '$baseUrl$bookmarkUrl/$bookmarkId',
              requestBody: updatedFields,
              header: {'Content-Type': 'application/json'}),
        ),
      );
    } catch (exception) {
      apiResult = const ApiResult.failure(
        networkException: NetworkException.unknownException(),
      );
    }
    return apiResult;
  }
}
