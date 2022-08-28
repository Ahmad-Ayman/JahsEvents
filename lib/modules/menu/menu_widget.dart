import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuWidget extends StatelessWidget {
  Color bg;

  MenuWidget({Key? key, required this.bg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

        ZoomDrawer.of(context)!.toggle();
      },
      icon: Icon(
        Icons.menu,
        color: bg,
      ),
    );
  }
}
