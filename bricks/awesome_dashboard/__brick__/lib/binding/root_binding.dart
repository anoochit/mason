import 'package:get/get.dart';

import '../controllers/app_controller.dart';
import '../services/auth_service.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    Get.lazyPut(() => AuthService());
  }
}
