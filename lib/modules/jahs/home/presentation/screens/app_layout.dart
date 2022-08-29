import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:jahsevents/modules/jahs/home/presentation/controller/home_contoller.dart';

import '../../../../menu/menu_items.dart';
import '../../../../menu/menu_screen.dart';
import '../../../../menu/model/menu_item_model.dart';
import '../../../about/presentation/screens/about_screen.dart';

class AppLayout extends StatefulWidget {
  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  MenuItemModel currentItem = MenuItems.homeScreen;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Builder(
        builder: (context) => MenuScreen(
            currentItem: currentItem,
            onSelectedItem: (item) {
              currentItem = item;
              ZoomDrawer.of(context)!.close();
            }),
      ),
      mainScreen: getScreen(),
      borderRadius: 40.0,
      showShadow: true,
      angle: -10.0,
      menuBackgroundColor: Colors.indigo,
      shadowLayer2Color: Colors.orangeAccent,
      shadowLayer1Color: Colors.green,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 0.8,
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.homeScreen:
        return AppLayout();
      case MenuItems.aboutScreen:
        return AboutScreen();
      default:
        return AppLayout();
    }
  }
}
