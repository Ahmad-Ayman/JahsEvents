import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:get/get.dart';
import 'package:jahsevents/modules/jahs/home/presentation/screens/home_screen.dart';
import 'package:jahsevents/modules/menu/model/menu_item_model.dart';

import '../../menu/menu_items.dart';
import '../../jahs/about/presentation/screens/about_screen.dart';
import '../../jahs/careers/data/aa.dart';
import '../../jahs/contact_us/presentation/screens/contact_us_screen.dart';
import '../../jahs/previous_work/presentation/screens/previous_work_screen.dart';
import '../../jahs/services/presentation/screens/services_screen.dart';
import '../../jahs/volunteering/presentation/screens/volunteering_screen.dart';
import '../view/app_layout.dart';

class AppController extends GetxController {
  Rx<MenuItemModel> currentItem = MenuItems.homeScreen.obs;

  Widget getScreen() {
    switch (currentItem.value) {
      case MenuItems.homeScreen:
        return HomeScreen();
      case MenuItems.servicesScreen:
        return ServicesScreen();
      case MenuItems.previousWorkScreen:
        return PreviousWorkScreen();
      case MenuItems.careersScreen:
        return CareersScreen();
      case MenuItems.volunteeringScreen:
        return VolunteeringScreen();
      case MenuItems.aboutScreen:
        return AboutScreen();
      default:
        return ContactUsScreen();
    }
  }

  final zoomDrawerController = ZoomDrawerController();

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}
