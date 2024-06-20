import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/width_spacer.dart';

class drawerItem extends StatelessWidget {
  final IconData Iconss;
  final String text;
  final Color color;

  const drawerItem({super.key, required this.Iconss, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: null,
      child: Container(
        child: Row(
          children: [
            Icon(Iconss,size: 30.h,),
            const WidthSpacer(widt: 12),
            ReusableText(text: text, style: appstyle(14, color, FontWeight.w600))
          ],
        ),
      ),
    );
  }
}