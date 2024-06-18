import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color(kLightBlue.value),
        child: Column(
          children: [
            Image.asset('assets/images/page1.png'),
            Column(
              children: [
                ReusableText(
                  text: 'Stable Your \n Ability',
                  style: appstyle(
                    18,
                    Color(kDark.value),
                    FontWeight.w500,
                  ),
                ),
                Text(
                  'Stable Your \n Ability',
                  textAlign: TextAlign.center,
                  style: appstyle(
                    18,
                    Color(kDark.value),
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
