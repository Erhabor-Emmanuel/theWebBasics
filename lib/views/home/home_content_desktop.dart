import 'package:flutter/material.dart';

import '../../widgets/Call to action/call_to_action.dart';
import '../../widgets/course details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction(title: 'Join Course'),
          ),
        ),
      ],
    );
  }
}
