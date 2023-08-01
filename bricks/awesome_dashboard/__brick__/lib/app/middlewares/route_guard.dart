import 'package:dashboard/app/data/services/auth_service.dart';
import 'package:dashboard/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteGuard extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<AuthService>();

    if (authService.isSignIn()) {
      return null;
    } else {
      return const RouteSettings(name: Routes.SIGNIN);
    }
  }
}
