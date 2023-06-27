import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/auth_service.dart';

class RouteGuard extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // TODO : implement signin function
    final authService = Get.find<AuthService>();

    if (authService.isSignIn()) {
      return null;
    } else {
      return const RouteSettings(name: "/signin");
    }
  }
}
