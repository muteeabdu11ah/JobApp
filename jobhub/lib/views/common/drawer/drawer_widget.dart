import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: Provider.of<MyDrawerController>(context, listen: false).toggleDrawer,
         
          child: SvgPicture.asset(
            "assets/icons/menu.svg",
            width: 10.w,
            height: 30.h,
          ),
        );
      }
    
  }

