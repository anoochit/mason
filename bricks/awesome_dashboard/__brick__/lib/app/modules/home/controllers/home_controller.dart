import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final navIndex = 0.obs;

  setNavIndex(int index) {
    navIndex.value = index;
    update(['content']);
  }
}
