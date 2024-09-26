import 'package:dotoread_app/controllers/folder_controller.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';
import 'package:dotoread_app/controllers/folder_add_widget_controller.dart';
import 'package:get/get.dart';

class FolderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FolderController>(
        () => FolderController(Get.find<FolderRepository>()));
    Get.lazyPut<FolderAddWidgetController>(
        () => FolderAddWidgetController(Get.find<FolderRepository>()));
  }
}
