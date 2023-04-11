import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? TextAlign.left : TextAlign.center;
        double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile? 50 : 80;
        double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile? 16: 21;
      return Container(
        width: 600,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'FLUTTER WEB.\nTHE BASICS',
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize),
                textAlign: textAlignment,
              ),
              const SizedBox(height: 30),
              Text(
                "Lorem ipsum dolor sit amet,consectetur adipisci ng elit,sed do eiusmodtempor incididunt ut lab ore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisn isi ut aliquip ex ea commodo consequat.Duis aut e irure dolor in reprehenderit in voluptate velitesse cillum dolore eu fugiat nulla pariatur.E xcepteur sintoccaecat cupidatat non proident.",
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
                textAlign: textAlignment,
              ),
            ],
          ),
        ),
      );
    }
    );
  }
}
