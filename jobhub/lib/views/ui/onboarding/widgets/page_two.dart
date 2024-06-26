import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/app_style.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         Container(
          width: width,
          height: hieght,
          color: Color(kDarkBlue.value),
          child: Column(
            children: [
              Image.asset('assets/images/page2.png'),
              Column(
                children: [
                  Text(
                    'Stable Yourself \nWith Your  Ability',
                    textAlign: TextAlign.center,
                    style: appstyle(
                      30,
                      Color(kLight.value),
                      FontWeight.w500,
                    ),
                  ),
                  const HeightSpacer(size: 20),
                  Padding(
                    padding: EdgeInsets.all(8.h),
                    child: Text(
                      'Find Your dream job according to your skill set \n get value out of your hardwork',
                      textAlign: TextAlign.center,
                      style: appstyle(
                        14,
                        Color(kLight.value),
                        FontWeight.w500,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    ;
  }
}
