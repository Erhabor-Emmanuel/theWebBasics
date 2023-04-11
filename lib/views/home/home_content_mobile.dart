import 'package:flutter/material.dart';

import '../../widgets/Call to action/call_to_action.dart';
import '../../widgets/course details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center ,
        children: const <Widget>[
          CourseDetails(),
          SizedBox(height: 60,),
          CallToAction(title: 'Join Course')
        ],
      ),
    );
  }
}
