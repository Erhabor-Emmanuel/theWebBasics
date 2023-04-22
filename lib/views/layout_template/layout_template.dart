import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/routing/router.dart';
import 'package:the_basics/services/navigation_service.dart';
import '../../widgets/centered view/centered_view.dart';
import '../../widgets/navigation drawer/navigation_drawer.dart';
import '../../widgets/navigation_bar/navigation_bar.dart';
import '../home/home_content_desktop.dart';
import '../home/home_content_mobile.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

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
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
