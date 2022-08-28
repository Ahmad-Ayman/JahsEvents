import 'package:flutter/material.dart';

import 'menu_items.dart';
import 'model/menu_item_model.dart';

class MenuScreen extends StatelessWidget {
  final MenuItem currentItem;
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
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: DrawerHeader(
                  child: Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                            maxRadius: 40,
                            backgroundImage: const NetworkImage('https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png')

                            // userSaved == null
                            //     ? const NetworkImage('https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png')
                            //     : NetworkImage('$kBaseUserImageUrl${userSaved!.userData![0].image}'),
                            ),
                      ),
                      const SizedBox(
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
              SizedBox(
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
                    padding: const EdgeInsets.only(right: 30, left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          // con.isLoggedIn.value ? 'Logout' : 'Login',
                          'Login',
                          style: const TextStyle(
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
