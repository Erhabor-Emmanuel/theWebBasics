import 'package:flutter/material.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem({Key? key, required this.icon, required this.title, required this.navigationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(width: 30,),
          NavBarItem(title: title, navigationPath: navigationPath ,)
        ],
      ),
    );
  }
}
