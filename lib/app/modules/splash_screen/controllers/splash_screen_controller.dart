import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {

  void moveSCreen(){
    Get.offAllNamed(Routes.HOME);
  }
}
