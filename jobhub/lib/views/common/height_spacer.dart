import 'package:flutter/material.dart';

class HeightSpacer extends StatelessWidget {
  final double size;
  const HeightSpacer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
    );
  }
}
