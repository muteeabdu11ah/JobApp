import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';

class ZoomNotifier extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

  final zoomDrawerController = ZoomDrawerController();
  void toggleDrawer() {
    print("Toggle drawer");

    zoomDrawerController.toggle?.call();
    print("Toggle drawer1");

    notifyListeners();
  }
}

