import 'package:flutter/material.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/ui/onboarding/widgets/page_one.dart';
import 'package:jobhub/views/ui/onboarding/widgets/page_three.dart';
import 'package:jobhub/views/ui/onboarding/widgets/page_two.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose(); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<OnBoardNotifier>(
      builder: (context, value, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              physics: value.isLastPage
                  ? const NeverScrollableScrollPhysics()
                  : const AlwaysScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (page) {
                value.isLastPage = page == 2;
              },
              children: const [
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
            ),
            Positioned(
                bottom: hieght * 0.1,
                left: 0,
                right: 0,
                child: value.isLastPage
                    ? const SizedBox.shrink()
                    : Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: WormEffect(
                            dotWidth: 12,
                            dotHeight: 12,
                            spacing: 10,
                            dotColor: Color(kLight.value),
                          ),
                        ),
                      )),
            value.isLastPage
                ? const SizedBox.shrink()
                : Positioned(
                    bottom: hieght * 0.01,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: hieght * 0.02, horizontal: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              pageController.jumpToPage(2);
                            },
                            child: ReusableText(
                              text: 'Skip',
                              style: appstyle(
                                15,
                                Color(kLight.value),
                                FontWeight.w500,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.bounceIn);
                            },
                            child: ReusableText(
                              text: 'Next',
                              style: appstyle(
                                15,
                                Color(kLight.value),
                                FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
          ],
        );
      },
    ));
  }
}
