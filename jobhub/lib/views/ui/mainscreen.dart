import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/common/drawer/drawer_screen.dart';
import 'package:jobhub/views/ui/bookmarks/bookmarks.dart';
import 'package:jobhub/views/ui/chat/chatpage.dart';
import 'package:jobhub/views/ui/device_mgt/devices_info.dart';
import 'package:jobhub/views/ui/homepage.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyDrawerController>(
        builder: (BuildContext context, zoomNotifier, child) {
      return ZoomDrawer(
        controller: zoomNotifier.zoomDrawerController,
        menuScreen: DrawerScreen(
          currentIndex: (value) {
           value  = value;
          },
        ),
        mainScreen: currentscreen(),
        borderRadius: 30,
        showShadow: true,
        angle: 0.0,
        slideWidth: 250,
        menuBackgroundColor: Color(kLightBlue.value),
      );
    });
  }

  Widget currentscreen() {
    var zoomNotifier = Provider.of<ZoomNotifier>(context);
    switch (zoomNotifier.currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return ChatsPage();
        
      case 2:
        return BookMarkPage();
      case 3:
        return DeviceManagement();
      case 4:
        return ChatsPage();

      default:
        return HomePage();
    }
  }
}
