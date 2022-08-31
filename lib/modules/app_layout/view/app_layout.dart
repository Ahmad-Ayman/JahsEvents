import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:jahsevents/core/shared/colors.dart';
import 'package:jahsevents/modules/app_layout/controllers/app_contoller.dart';

import '../../menu/menu_items.dart';
import '../../menu/menu_screen.dart';

class AppLayout extends GetView<AppController> {
  AppLayout({Key? key}) : super(key: key);
  final homeController = Get.put<AppController>(AppController());
  @override
  Widget build(BuildContext context) {
    return GetX<AppController>(
      builder: (_) => ZoomDrawer(
        menuBackgroundColor: purpleColor,
        controller: _.zoomDrawerController,
        menuScreen: Builder(
          builder: (context) => MenuScreen(
              currentItem: _.currentItem.value,
              onSelectedItem: (item) {
                _.currentItem.value = item;
                ZoomDrawer.of(context)!.close();
              }),
        ),
        mainScreen: _.getScreen(),
        borderRadius: 40.0,
        showShadow: true,
        angle: -10.0,
        drawerShadowsBackgroundColor: babyBlueColor,
        slideWidth: MediaQuery.of(context).size.width * 0.7,
      ),
    );
  }
}
