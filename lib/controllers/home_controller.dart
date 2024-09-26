import 'package:get/get.dart';

class HomeController extends GetxController {
  var freshArticles = <String>[].obs;
  var rottenArticles = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchArticles();
  }

  void fetchArticles() {
    freshArticles.assignAll(['Fresh Article 1', 'Fresh Article 2']);
    rottenArticles.assignAll(['Rotten Article 1', 'Rotten Article 2']);
  }
}
