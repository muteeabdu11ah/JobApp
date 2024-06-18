import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/views/common/custom_outline_btn.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/ui/auth/login.dart';
import 'package:jobhub/views/ui/auth/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color(kLightBlue.value),
        child: Column(
          children: [
            Image.asset('assets/images/page3.png'),
            const HeightSpacer(size: 20),
            ReusableText(
                text: 'Welcome To Nodeed',
                style: appstyle(30, Color(kLight.value), FontWeight.w700)),
            const HeightSpacer(size: 20),
            Text(
                'Begin Your Journey to the\n professional world with\n ease and comfort ',
                textAlign: TextAlign.center,
                style: appstyle(14, Color(kLight.value), FontWeight.w400)),
            const HeightSpacer(size: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomOutlineBtn(
                  text: 'LogIn',
                  width: width * 0.4,
                  hieght: hieght * 0.06,
                  onTap: () async {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.setBool('entrypoint', true);
                    Get.to(() => LoginPage());
                  },
                  color: kLight,
                ),
                CustomOutlineBtn(
                  text: 'SignUp',
                  width: width * 0.4,
                  hieght: hieght * 0.06,
                  onTap: () async {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.setBool('entrypoint', true);
                    Get.to(() => RegistrationPage());
                  },
                  color: kLightBlue,
                  color2: kLight,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
