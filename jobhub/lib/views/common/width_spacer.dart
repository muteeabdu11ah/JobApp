import 'package:flutter/material.dart';
import 'package:jobhub/constants/app_constants.dart';

class WidthSpacer extends StatelessWidget {
  final double widt;
  const WidthSpacer({super.key, required this.widt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widt,
    );
  }
}