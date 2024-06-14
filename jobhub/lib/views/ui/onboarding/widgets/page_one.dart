import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('jobhub/assets/images/page1.png'),
          Column(
            children: [
              ReusableText(
                text: 'Stable Your \n Ability',
                style: appstyle(
                  18,
                  Color(kLight.value),
                  FontWeight.w500,
                ),
              ),
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
    );
  }
}
