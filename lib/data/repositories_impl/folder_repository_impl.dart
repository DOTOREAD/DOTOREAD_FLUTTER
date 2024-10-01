import 'dart:convert';

import 'package:dotoread_app/core/constants/string_constant.dart';
import 'package:dotoread_app/data/models/folder_model/folder_model.dart';
import 'package:dotoread_app/data/providers/network/contract.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/data/providers/network/model/network_exception.dart';
import 'package:dotoread_app/data/providers/network/model/network_model.dart';
import 'package:dotoread_app/data/providers/network/model/network_parameters.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';

class FolderRepositoryImpl extends FolderRepository {
  final Network network;
  FolderRepositoryImpl(this.network);
  @override
  Future<ApiResult> createFolder(FolderModel folderModel) async {
    ApiResult apiResult;

    try {
      // 폴더 생성 POST 요청
      final body = folderModel.toJson();

      apiResult = await network.callApi(
        method: NetworkModel.post(
          networkParameter: NetworkParameter(
              url: baseUrl + folderUrl,
              requestBody: body,
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

  @override
  Future<ApiResult> deleteFolder(FolderModel folderModel) async {
    ApiResult apiResult;

    try {
      // 폴더 삭제 DELETE 요청
      apiResult = await network.callApi(
        method: NetworkModel.delete(
          networkParameter: NetworkParameter(
            url: '$baseUrl$folderUrl/${folderModel.id}',
          ),
        ),
      );
    } catch (exception) {
      apiResult = const ApiResult.failure(
        networkException: NetworkException.unknownException(),
      );
    }
    return apiResult;
  }

  @override
  Future<ApiResult> getFolder() async {
    ApiResult apiResult;

    try {
      apiResult = await network.callApi(
          method: const NetworkModel.get(
              networkParameter: NetworkParameter(url: baseUrl + folderUrl)));
    } catch (exception) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownException());
    }
    return apiResult;
  }

  @override
  Future<ApiResult> updateFolder(
      int folderId, Map<String, dynamic> updatedFields) async {
    ApiResult apiResult;

    try {
      // 폴더 업데이트 PATCH 요청 with only necessary fields
      apiResult = await network.callApi(
        method: NetworkModel.patch(
          networkParameter: NetworkParameter(
              url: '$baseUrl$folderUrl/$folderId',
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
