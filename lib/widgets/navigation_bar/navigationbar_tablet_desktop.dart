import 'package:flutter/material.dart';
import 'package:the_basics/routing/route_names.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigatorTabletDesktop extends StatelessWidget {
  const NavigatorTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              NavBarItem(title: 'Episodes', navigationPath: EpisodesRoute,),
              SizedBox(width: 60),
              NavBarItem(title: 'About', navigationPath: AboutRoute,),
            ],
          )
        ],
      ),
    );
  }
}
