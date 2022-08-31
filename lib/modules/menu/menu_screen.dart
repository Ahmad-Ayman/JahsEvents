import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:jahsevents/core/shared/colors.dart';

import '../app_layout/controllers/app_contoller.dart';
import 'menu_items.dart';
import 'model/menu_item_model.dart';

class MenuScreen extends GetView<AppController> {
  final MenuItemModel currentItem;
  final ValueChanged<MenuItemModel> onSelectedItem;

  const MenuScreen({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: purpleColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: DrawerHeader(
                  child: Column(
                    children: const [
                      Center(
                        child: CircleAvatar(
                            maxRadius: 40,
                            backgroundImage: NetworkImage(
                                'https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png')

                            // userSaved == null
                            //     ? const NetworkImage('https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png')
                            //     : NetworkImage('$kBaseUserImageUrl${userSaved!.userData![0].image}'),
                            ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Welcome\n Jahs Events',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // if (userSaved != null)
              //   if (userSaved!.userData![0].typeName == "User")
              //     ...MenuItems.all.map(buildMenuItem).toList()
              //   else if (userSaved!.userData![0].typeName == "Transporter")
              //     ...MenuItems.allForTransporter.map(buildMenuItem).toList()
              //   else if (userSaved!.userData![0].typeName == "Factory")
              //     ...MenuItems.allForFactory.map(buildMenuItem).toList()
              //   else if (userSaved!.userData![0].typeName == "Admin")
              ...MenuItems.allMenuItems.map(buildMenuItem).toList(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: InkWell(
                  onTap: () {
                    // if (con.isLoggedIn.value) {
                    //   con.logout();
                    // } else {
                    //   Get.to(() => LoginScreen());
                    // }
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        right: 30, left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          // con.isLoggedIn.value ? 'Logout' : 'Login',
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItemModel item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
}
