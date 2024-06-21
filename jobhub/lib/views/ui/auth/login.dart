import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/custom_btn.dart';
import 'package:jobhub/views/common/custom_textfield.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/ui/auth/signup.dart';
import 'package:provider/provider.dart';

import '../../../controllers/login_provider.dart';
import '../../common/app_bar.dart';
import '../mainscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginNotifier>(
      builder: (BuildContext context, loginNotifier, child) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: CustomAppBar(
              text: 'LogIn',
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Icon(CupertinoIcons.arrow_left),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                HeightSpacer(size: 50),
                ReusableText(
                    text: 'Welcome Back!',
                    style: appstyle(
                      30,
                      Color(kDark.value),
                      FontWeight.w600,
                    )),
                ReusableText(
                    text: 'Fill The Details To Login To Your Account',
                    style: appstyle(
                      16,
                      Color(kDarkGrey.value),
                      FontWeight.w600,
                    )),
                HeightSpacer(size: 50),
                CustomTextField(
                  controller: email,
                  textInputTyp: TextInputType.emailAddress,
                  hinttext: 'Email',
                  validator: ((p0) {
                    if (p0!.isEmpty || !p0.contains('@')) {
                      return 'Please input valid Email';
                    } else {
                      return null;
                    }
                  }),
                ),
                HeightSpacer(size: 20),
                CustomTextField(
                  suffixicon: GestureDetector(
                    onTap: () {
                      loginNotifier.obscuretext = !loginNotifier.obscuretext;
                    },
                    child: Icon(
                      loginNotifier.obscuretext
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(kDarkGrey.value),
                    ),
                  ),
                  obscuretext: loginNotifier.obscuretext,
                  controller: password,
                  textInputTyp: TextInputType.visiblePassword,
                  hinttext: 'password',
                  validator: ((p0) {
                    if (p0!.isEmpty || p0.length < 7) {
                      return 'Please input valid password';
                    } else {
                      return null;
                    }
                  }),
                ),
                HeightSpacer(
                  size: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => RegistrationPage());
                    },
                    child: ReusableText(
                        text: 'Register',
                        style: appstyle(
                          14,
                          Color(kDarkGrey.value),
                          FontWeight.w600,
                        )),
                  ),
                ),
                HeightSpacer(
                  size: 50,
                ),
                CustomButton(
                    onTap: () {
                      Get.to(() => MainScreen());
                    },
                    text: 'Login')
              ],
            ),
          ),
        );
      },
    );
  }
}
