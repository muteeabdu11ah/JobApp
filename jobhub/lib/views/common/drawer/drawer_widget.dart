import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Provider.of<ZoomNotifier>(context, listen: false).toggleDrawer,
      child: Container(
        margin: EdgeInsets.only(
          top: 10.h,
          bottom: 10.h,
        ),
        child: SvgPicture.asset(
          "assets/icons/menu.svg",
        ),
      ),
    );
  }
}
