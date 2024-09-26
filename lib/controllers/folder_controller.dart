import 'package:dotoread_app/data/models/folder_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';
import 'package:dotoread_app/presentations/routes/app_routes.dart';
import 'package:get/get.dart';

class FolderController extends GetxController {
  final FolderRepository folderRepository;
  FolderController(this.folderRepository);

  RxBool loader = false.obs;
  RxList<FolderModel> folderList = <FolderModel>[].obs;

  Future<void> getFolderCall() async {
    loader.value = true;
    ApiResult result = await folderRepository.getFolder();
    result.when(
      success: (data, url, headers, statusCode) {
        folderList.value = folderModelFromJson(data);
      },
      error: (data, url, headers, statusCode) {},
      failure: (NetworkException) {},
    );
    loader.value = false;
  }

  Future<void> deleteFolderCall(int index) async {
    ApiResult result = await folderRepository.deleteFolder(folderList[index]);
    result.when(
      success: (data, url, headers, statusCode) {
        folderList.removeAt(index);
        print("$statusCode Data: $data");
      },
      error: (data, url, headers, statusCode) {
        print("Error: $statusCode, Data: $data");
      },
      failure: (NetworkException) {
        print("NetworkException occurred: $NetworkException");
      },
    );
  }

  Future<void> updateFolderCall(int index, String newFolderName) async {
    // Prepare only the necessary fields for updating
    Map<String, dynamic> updatedFields = {
      'name': newFolderName,
      'updatedAt': DateTime.now()
          .toIso8601String(), // Automatically update the timestamp
    };

    // Call the repository to update the folder using PATCH
    ApiResult result = await folderRepository.updateFolder(
        folderList[index].id!, updatedFields);
    result.when(
      success: (data, url, headers, statusCode) {
        // Update the folderList with the new folder name and timestamp
        folderList[index] = folderList[index]
            .copyWith(name: newFolderName, updatedAt: DateTime.now());
        print("Folder updated successfully: $statusCode, Data: $data");
      },
      error: (data, url, headers, statusCode) {
        print("Error updating folder: $statusCode, Data: $data");
      },
      failure: (NetworkException) {
        print("Failed to update folder: $NetworkException");
      },
    );
  }

  @override
  void onInit() {
    getFolderCall();
    super.onInit();
  }
}
