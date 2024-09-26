import 'package:get/get.dart';

class RootController extends GetxController {
  var bottomNavIndex = 0.obs;

  void updateIndex(int index) {
    bottomNavIndex.value = index;
  }
}
