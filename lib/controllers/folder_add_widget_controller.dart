import 'package:dotoread_app/controllers/folder_controller.dart';
import 'package:dotoread_app/data/models/folder_model/folder_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';
import 'package:get/get.dart';

class FolderAddWidgetController extends GetxController {
  final FolderRepository folderRepository;
  FolderAddWidgetController(this.folderRepository);
  RxBool isAdding = false.obs;
  RxString folderName = ''.obs;
  RxBool isTextFieldNotEmpty = false.obs;

  void onFolderNameChanged(String value) {
    folderName.value = value;
    isTextFieldNotEmpty.value = value.isNotEmpty;
  }

  Future<void> createFolderCall() async {
    if (isTextFieldNotEmpty.value) {
      FolderModel newFolder = FolderModel(
        name: folderName.value,
      );

      ApiResult result = await folderRepository.createFolder(newFolder);
      result.when(
        success: (data, url, headers, statusCode) async {
          FolderController folderController = Get.find<FolderController>();
          await folderController.getFolderCall();
        },
        error: (data, url, headers, statusCode) {},
        failure: (NetworkException) {},
      );
      folderName.value = '';
      isAdding.value = false;
      isTextFieldNotEmpty.value = false;
    }
  }

  void toggleAddMode() {
    isAdding.value = !isAdding.value;
  }
}
