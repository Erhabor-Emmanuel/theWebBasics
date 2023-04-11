import 'package:flutter/material.dart';
import 'package:the_basics/widgets/navigation%20drawer/drawer_item.dart';
import 'package:the_basics/widgets/navigation%20drawer/navigation_drawer_header.dart';

class NavigatedDrawer extends StatelessWidget {
  const NavigatedDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16)
        ]
      ),
      child: Column(
        children: const <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(icon: Icons.videocam, title: 'Episodes'),
          DrawerItem(icon: Icons.help, title: 'About'),
        ],
      ),
    );
  }
}
