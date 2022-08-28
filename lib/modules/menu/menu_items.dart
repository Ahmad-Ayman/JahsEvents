import 'package:flutter/material.dart';

import 'model/menu_item_model.dart';

class MenuItems {
  /// For User
  static const MenuItemModel homeScreen = MenuItemModel('Home', Icons.home);
  static const MenuItemModel servicesScreen = MenuItemModel('Services', Icons.add);
  static const MenuItemModel previousWorkScreen = MenuItemModel('Previous Work', Icons.history);
  static const MenuItemModel volunteeringScreen = MenuItemModel('Volunteering', Icons.info_outline);
  static const MenuItemModel careersScreen = MenuItemModel('Careers', Icons.recycling);
  static const MenuItemModel contactUsScreen = MenuItemModel('Contact Us', Icons.construction);
  static const MenuItemModel aboutScreen = MenuItemModel('About', Icons.recycling);

  static var allMenuItems = <MenuItemModel>[
    homeScreen,
    servicesScreen,
    previousWorkScreen,
    volunteeringScreen,
    careersScreen,
    contactUsScreen,
    aboutScreen,
  ];
}
