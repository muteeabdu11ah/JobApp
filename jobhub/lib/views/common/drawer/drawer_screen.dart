import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/common/drawer/drawer_item.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatelessWidget {
  final ValueSetter currentIndex;
  const DrawerScreen({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Consumer<ZoomNotifier>(builder: (context, zoomnotifier, child) {
      return GestureDetector(
        onDoubleTap: () {
          ZoomDrawer.of(context)?.toggle();
        },
        child: Scaffold(
          backgroundColor: Color(kLightBlue.value),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              drawerItem(
                Iconss: AntDesign.home,
                text: 'Home',
                color: zoomnotifier.currentIndex == 0
                    ? Color(kLight.value)
                    : Color(kLightGrey.value), 
                    function: () { zoomnotifier.currentIndex = 0; },
              ),
              drawerItem( function: () { zoomnotifier.currentIndex = 1; },
                Iconss: Ionicons.chatbubbles_outline,
                text: 'Chat',
                color: zoomnotifier.currentIndex == 1
                    ? Color(kLight.value)
                    : Color(kLightGrey.value),
              ),
              drawerItem( function: () { zoomnotifier.currentIndex = 2; },
                Iconss: Feather.bookmark,
                text: 'BookMarks',
                color: zoomnotifier.currentIndex == 2
                    ? Color(kLight.value)
                    : Color(kLightGrey.value),
              ),
              drawerItem( function: () { zoomnotifier.currentIndex = 3; },
                Iconss: MaterialCommunityIcons.devices,
                text: 'Device Mgmt',
                color: zoomnotifier.currentIndex == 3
                    ? Color(kLight.value)
                    : Color(kLightGrey.value),
              ),
              drawerItem( function: () { zoomnotifier.currentIndex = 4; },
                Iconss: FontAwesome5Regular.user_circle,
                text: 'Profile',
                color: zoomnotifier.currentIndex == 4
                    ? Color(kLight.value)
                    : Color(kLightGrey.value),
              ),
              
            ],
          ),
        ),
      );
    });
  }
}
