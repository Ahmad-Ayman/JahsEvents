import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jahsevents/modules/menu/model/menu_item_model.dart';

import '../../../../menu/menu_items.dart';
import '../../../about/presentation/screens/about_screen.dart';
import '../screens/app_layout.dart';

class HomeController extends GetxController {
  Rx<MenuItemModel> currentItem = MenuItems.homeScreen.obs;

  Widget getScreen() {
    switch (currentItem.value) {
      case MenuItems.homeScreen:
        return AppLayout();
      case MenuItems.aboutScreen:
        return AboutScreen();
      default:
        return AppLayout();
    }
  }
}
