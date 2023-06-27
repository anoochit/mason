import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../controllers/app_controller.dart';
import '../../models/gridconfig.dart';
import '../../widgets/navbar.dart';
import '../book/book.dart';
import '../settings/settings.dart';
import '../users/users.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // check screen type
  GridConfigutation configGridLayout({required BuildContext context}) {
    final deviceScreenType = getDeviceType(MediaQuery.of(context).size);
    if (deviceScreenType == DeviceScreenType.desktop) {
      // layout desktop & tablet
      return GridConfigutation(
        areas: ''' 
          nav   content
        ''',
        columnSizes: [230.px, 1.fr],
        rowSizes: [
          auto,
        ],
      );
    } else if (deviceScreenType == DeviceScreenType.tablet) {
      // layout tablet
      return GridConfigutation(
        areas: ''' 
          nav
          content
        ''',
        columnSizes: [1.fr],
        rowSizes: [
          48.px,
          auto,
        ],
      );
    } else {
      // layout mobile
      return GridConfigutation(
        areas: ''' 
          nav
          content
        ''',
        columnSizes: [1.fr],
        rowSizes: [
          48.px,
          auto,
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final gridConfig = configGridLayout(context: context);

    return Scaffold(
      body: LayoutGrid(
        areas: gridConfig.areas,
        columnSizes: gridConfig.columnSizes,
        rowSizes: gridConfig.rowSizes,
        children: [
          const SizedBox(
            height: double.infinity,
            // color: Theme.of(context).colorScheme.onPrimary,
            child: SideNavigationBar(),
          ).inGridArea('nav'),
          Container(
            // color: Theme.of(context).colorScheme.onSecondary,
            child: GetBuilder<AppController>(
              id: 'content',
              builder: (controller) {
                return IndexedStack(
                  index: controller.navIndex.value,
                  children: const [
                    BookPage(),
                    UserPage(),
                    SettingsPage(),
                  ],
                );
              },
            ),
          ).inGridArea('content'),
        ],
      ),
      drawer: const Drawer(
        child: NavMenuList(isDrawer: true),
      ),
    );
  }
}
