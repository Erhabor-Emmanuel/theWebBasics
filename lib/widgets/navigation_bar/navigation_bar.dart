import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_logo.dart';
import 'package:the_basics/widgets/navigation_bar/navigationbar_tablet_desktop.dart';

import 'navbar_item.dart';
import 'navigationbar_mobile.dart';

class NavigatingBar extends StatelessWidget {
  const NavigatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigatorTabletDesktop(),
    );
  }
}




