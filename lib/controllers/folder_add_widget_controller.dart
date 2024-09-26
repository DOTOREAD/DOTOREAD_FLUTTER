import 'package:dotoread_app/controllers/folder_controller.dart';
import 'package:dotoread_app/data/models/folder_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';
import 'package:get/get.dart';

class FolderAddWidgetController extends GetxController {
  final FolderRepository folderRepository;
  FolderAddWidgetController(this.folderRepository);
  RxBool isAdding = false.obs; // Row에서 TextField로 전환 여부
  RxString folderName = ''.obs; // TextField의 내용 저장
  RxBool isTextFieldNotEmpty = false.obs; // TextField가 비어있는지 여부

  // 폴더 이름 입력 시 TextField 값이 변하면 호출됨
  void onFolderNameChanged(String value) {
    folderName.value = value;
    isTextFieldNotEmpty.value = value.isNotEmpty;
  }

  // 폴더 추가 로직 (추후 실제 API 또는 로컬 저장소와 연동 가능)
  Future<void> addFolder() async {
    if (isTextFieldNotEmpty.value) {
      // 여기에 실제 폴더 추가 로직을 작성 (API 호출 등)
      FolderModel newFolder = FolderModel(
        name: folderName.value, // 텍스트 필드에서 입력받은 이름 사용
        createdAt: DateTime.now(), // 현재 시간
        updatedAt: DateTime.now(),
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
      isAdding.value = false; // 완료 후 다시 Row로 전환
      isTextFieldNotEmpty.value = false; // 추가 후 버튼 비활성화
    }
  }

  // Row와 TextField 사이의 전환
  void toggleAddMode() {
    isAdding.value = !isAdding.value;
  }
}
