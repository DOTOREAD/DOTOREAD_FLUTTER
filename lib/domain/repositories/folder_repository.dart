import 'package:dotoread_app/data/models/folder_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';

abstract class FolderRepository {
  Future<ApiResult> getFolder();
  Future<ApiResult> createFolder(FolderModel folderModel);
  Future<ApiResult> deleteFolder(FolderModel folderModel);
  Future<ApiResult> updateFolder(
      int folderId, Map<String, dynamic> updatedFields);
}
