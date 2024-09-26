import 'package:dotoread_app/controllers/bookmarks_controller.dart';
import 'package:dotoread_app/domain/repositories/bookmark_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class BookmarkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookmarksController>(
        () => BookmarksController(Get.find<BookmarkRepository>()),
        fenix: true);
  }
}
