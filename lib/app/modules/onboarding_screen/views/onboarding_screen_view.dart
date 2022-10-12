import 'package:dajek/widget/dot_indicator.dart';
import 'package:dajek/helper/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../model/onboard_model.dart';
import '../../../routes/app_pages.dart';
import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  @override
  Widget build(BuildContext context) {
    return OnboardingStful();
  }
}

class OnboardingStful extends StatefulWidget {
  const OnboardingStful({Key? key}) : super(key: key);

  @override
  State<OnboardingStful> createState() => _OnboardingStfulState();
}

class _OnboardingStfulState extends State<OnboardingStful> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                      }, icon: Icon(Icons.arrow_back, size: 24)),
                  TextButton(onPressed: () {
                    Get.offAllNamed(Routes.LOGIN_SCREEN);
                  }, child: Text("Skip", style: textButtonSkipBoarding,))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemCount: onboard_data.length,
                  controller: _pageController,
                  itemBuilder: (context, index) =>
                      OnboardingContent(image: onboard_data[index].image)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboard_data.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 15),
                          child: DotIndicator(
                            isActive: index == _pageIndex,
                          ),
                        )),
              ],
            ),
            //Button
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: InkWell(
                onTap: () {
                  if(_pageIndex == onboard_data.length -1){
                    Get.offAllNamed(Routes.LOGIN_SCREEN);
                  }
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), color: red1),
                  child: Center(
                      child: Text(
                    _pageIndex == onboard_data.length - 1 ? "Get Started" : "Next",
                    style: textButtonBoarding,
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 85,
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(image, width: 270),
            Spacer(),
            Text("Relaxing Trip", style: textOnBoardingHead),
            Text(
              "our drivers prioritize comfort and\n safety on the way.",
              textAlign: TextAlign.center,
              style: textOnBoardingSub,
            ),
          ],
        ),
      ),
    ));
  }
}
