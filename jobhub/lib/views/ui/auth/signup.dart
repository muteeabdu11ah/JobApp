import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhub/controllers/signup_provider.dart';
import 'package:jobhub/views/ui/auth/login.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../controllers/login_provider.dart';
import '../../common/app_bar.dart';
import '../../common/app_style.dart';
import '../../common/custom_btn.dart';
import '../../common/custom_textfield.dart';
import '../../common/height_spacer.dart';
import '../../common/reusable_text.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpNotifier>(
      builder: (BuildContext context, signupNotifier, child) {
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
                    text: 'Hello, Welcome!',
                    style: appstyle(
                      30,
                      Color(kDark.value),
                      FontWeight.w600,
                    )),
                ReusableText(
                    text: 'Fill The Details To Create Your Account',
                    style: appstyle(
                      16,
                      Color(kDarkGrey.value),
                      FontWeight.w600,
                    )),
                HeightSpacer(size: 50),
                CustomTextField(
                  controller: name,
                  textInputTyp: TextInputType.emailAddress,
                  hinttext: 'Name',
                  validator: ((p0) {
                    if (p0!.isEmpty) {
                      return 'Please input valid Name';
                    } else {
                      return null;
                    }
                  }),
                ),
                HeightSpacer(size: 20),
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
                      signupNotifier.isObsecure = !signupNotifier.isObsecure;
                    },
                    child: Icon(
                      signupNotifier.isObsecure
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(kDarkGrey.value),
                    ),
                  ),
                  obscuretext: signupNotifier.isObsecure,
                  controller: password,
                  textInputTyp: TextInputType.visiblePassword,
                  hinttext: 'password',
                  validator: ((p0) {
                    if (signupNotifier.passwordValidator(p0 ?? '')) {
                      return 'Please input valid password with atleast 1 Uppercase, 1 lowercase alphabet, 1  special character and minimum of 8 total chracters.';
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
                      Get.to(() => LoginPage());
                    },
                    child: ReusableText(
                        text: 'Login',
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
                CustomButton(onTap: () {}, text: 'Sign Up')
              ],
            ),
          ),
        );
      },
    );
  }
}
