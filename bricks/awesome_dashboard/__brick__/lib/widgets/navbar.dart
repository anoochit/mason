import 'package:dashboard/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SideNavigationBar extends StatefulWidget {
  const SideNavigationBar({super.key});

  @override
  State<SideNavigationBar> createState() => _SideNavigationBarState();
}

class _SideNavigationBarState extends State<SideNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final deviceScreenType = getDeviceType(MediaQuery.of(context).size);

    if (deviceScreenType == DeviceScreenType.desktop) {
      return const NavMenuList(isDrawer: false);
    } else {
      return IconButton(
        onPressed: () {
          // TODO : open drawer
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu),
      );
    }
  }
}

class NavMenuList extends StatefulWidget {
  const NavMenuList({
    super.key,
    required this.isDrawer,
  });

  final bool isDrawer;

  @override
  State<NavMenuList> createState() => _NavMenuListState();
}

class _NavMenuListState extends State<NavMenuList> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        id: 'nav',
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: CircleAvatar(
                    radius: 64,
                  ),
                ),
                Column(
                  children: menuItems.map((e) {
                    final navIndex = menuItems.indexOf(e);
                    final isCurrentNav =
                        (controller.navIndex.value == navIndex);
                    return ListTile(
                      leading: Icon(e.icon,
                          color: (isCurrentNav)
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.secondary),
                      title: Text(
                        e.title,
                        style: TextStyle(
                            fontWeight: (isCurrentNav) ? FontWeight.bold : null,
                            color: (isCurrentNav)
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary),
                      ),
                      onTap: () {
                        // TODO : change content index
                        controller.setNavIndex(index: navIndex);
                        if (widget.isDrawer) {
                          Get.back();
                        }
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        });
  }
}

class MenuItem {
  IconData icon;
  String title;
  MenuItem({
    required this.icon,
    required this.title,
  });
}

List<MenuItem> menuItems = [
  MenuItem(icon: Icons.book, title: 'Books'),
  MenuItem(icon: Icons.account_box, title: 'Users'),
  MenuItem(icon: Icons.settings, title: 'Settings')
];
