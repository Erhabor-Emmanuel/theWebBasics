import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/widgets/Call%20to%20action/call_to_action.dart';
import 'package:the_basics/widgets/centered%20view/centered_view.dart';
import 'package:the_basics/widgets/course%20details/course_details.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar.dart';

import '../../widgets/navigation drawer/navigation_drawer.dart';
import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder:(context, sizingInformation) => Scaffold(
        drawer : sizingInformation.deviceScreenType == DeviceScreenType.mobile? const NavigatedDrawer() : null,
        // appBar: AppBar(),
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              const NavigatingBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: const HomeContentMobile(),
                  desktop: const HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
