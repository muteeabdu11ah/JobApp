import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color.fromARGB(255, 62, 88, 118),
        child: Column(
          children: [
            const HeightSpacer(size: 40),
            Image.asset('assets/images/page1.png'),
            Column(
              children: [
                Text(
                  'Stable Your \n Ability',
                  textAlign: TextAlign.center,
                  style: appstyle(
                    18,
                    Color(kLight.value),
                    FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
