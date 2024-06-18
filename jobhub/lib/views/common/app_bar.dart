import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/exports.dart';

class CustomAppBar extends StatelessWidget {
  final String? text;
  final Widget child;
  final List<Widget>? actions;
  const CustomAppBar({super.key, required this.text, required this.child, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(),
      backgroundColor: Color(kLight.value),
      automaticallyImplyLeading: false,
      leadingWidth: 70.w,
      leading: child,
      actions: actions,
      title: ReusableText(text: text??'', style: appstyle(16, Color(kDark.value), FontWeight.w600)),
    centerTitle: true,
    );
  }
}