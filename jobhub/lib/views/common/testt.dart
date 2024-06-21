// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/config.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:jobhub/controllers/exports.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => MyDrawerController()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Zoom Drawer Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<MyDrawerController>(
//       builder: (context, drawerController, child) {
//         return ZoomDrawer(
//           controller: drawerController.zoomDrawerController,
//           menuScreen: MenuScreen(),
//           mainScreen: MainScreen(),
//           borderRadius: 24.0,
//           showShadow: true,
//           angle: -12.0,
//           drawerShadowsBackgroundColor: Colors.grey,
//           slideWidth: MediaQuery.of(context).size.width * 0.65,
//         );
//       },
//     );
//   }
// }

// class MenuScreen extends StatelessWidget {
//   const MenuScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: Provider.of<MyDrawerController>(context, listen: false).toggleDrawer,
//       child: Container(
//         color: Colors.yellow,
//       ),
//     );
//   }
// }

// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.pink,
//       child: Center(
//         child: ElevatedButton(
//           onPressed: Provider.of<ZoomNotifier>(context, listen: false).toggleDrawer,
//           child: Text("Toggle Drawer"),
//         ),
//       ),
//     );
//   }
// }

// class MyDrawerController extends ChangeNotifier {
//   final zoomDrawerController = ZoomDrawerController();

//   void toggleDrawer() {
//     print("Toggle drawer");
//     zoomDrawerController.toggle?.call();
//     notifyListeners();
//   }
// }
