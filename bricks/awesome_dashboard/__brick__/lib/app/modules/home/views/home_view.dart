import 'package:dashboard/app/modules/home/views/home_body_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: (deviceType == DeviceScreenType.mobile)
            ? IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              )
            : const SizedBox(width: 0),
        title: Obx(
          () => listNavMenuItem[controller.navIndex.value].title,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (deviceType != DeviceScreenType.mobile)
              ? Obx(() => NavigationRail(
                    extended: (deviceType == DeviceScreenType.desktop),
                    destinations: listNavMenuItem
                        .map(
                          (menu) => NavigationRailDestination(
                            icon: menu.icon,
                            label: menu.title,
                          ),
                        )
                        .toList(),
                    selectedIndex: controller.navIndex.value,
                    onDestinationSelected: (index) =>
                        controller.setNavIndex(index),
                  ))
              : Container(),
          Expanded(
            child: Obx(() => IndexedStack(
                  index: controller.navIndex.value,
                  children: const [
                    HomeBodyView(),
                    Text('Book'),
                    Text('Course'),
                    Text('Profile'),
                  ],
                )),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 32.0,
            ),
            ListView(
                shrinkWrap: true,
                children: listNavMenuItem.asMap().entries.map((menu) {
                  final index = menu.key;
                  final value = menu.value;
                  return ListTile(
                    leading: value.icon,
                    title: value.title,
                    onTap: () {
                      controller.setNavIndex(index);
                      Get.back();
                    },
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }
}

class NavMenuItem {
  Icon icon;
  Text title;
  NavMenuItem({
    required this.icon,
    required this.title,
  });
}

List<NavMenuItem> listNavMenuItem = [
  NavMenuItem(
    icon: const Icon(Icons.home_outlined),
    title: const Text('Home'),
  ),
  NavMenuItem(
    icon: const Icon(Icons.book_outlined),
    title: const Text('Books'),
  ),
  NavMenuItem(
    icon: const Icon(Icons.video_file_outlined),
    title: const Text('Course'),
  ),
  NavMenuItem(
    icon: const Icon(Icons.account_circle_outlined),
    title: const Text('Profile'),
  ),
];
