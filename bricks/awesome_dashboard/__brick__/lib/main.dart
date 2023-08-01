import 'package:dashboard/app/binding/root_binding.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Dashboard",
      initialRoute: AppPages.INITIAL,
      initialBinding: RootBinding(),
      getPages: AppPages.routes,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}
