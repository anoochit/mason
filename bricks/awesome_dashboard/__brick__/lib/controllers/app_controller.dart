import 'package:get/get.dart';

class AppController extends GetxController {
  //
  RxBool isSignIn = false.obs;
  RxInt navIndex = 0.obs;

  setNavIndex({required int index}) {
    navIndex.value = index;
    update(['content', 'nav']);
  }
}
