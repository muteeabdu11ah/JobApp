import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/width_spacer.dart';

class drawerItem extends StatelessWidget {
  final IconData Iconss;
  final String text;
  final Color color;
  final VoidCallback function;

  const drawerItem(
      {super.key,
      required this.Iconss,
      required this.text,
      required this.color, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              Iconss,
              size: 30.h,
              color: color,
            ),
            const WidthSpacer(widt: 20),
            ReusableText(
                text: text, style: appstyle(14, color, FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
