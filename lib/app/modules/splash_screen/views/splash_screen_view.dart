import 'dart:async';

import 'package:dajek/app/modules/home/views/home_view.dart';
import 'package:dajek/helper/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  
  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  startSplashScreen()async{
    var duration = Duration(seconds: 3);
    return Timer(duration, (){
     Get.offAllNamed(Routes.ONBOARDING_SCREEN);
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", width: 225,),
            Text(
              'Ojeknyo Rang Ranah Minang',
              style: splashText,
            ),
          ],
        ),
      ),
    );
  }
}
