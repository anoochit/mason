import 'package:dashboard/app/data/services/auth_service.dart';
import 'package:get/get.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthService());
  }
}
