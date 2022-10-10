import 'package:get/get.dart';

import '../controllers/success_screen_controller.dart';

class SuccessScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessScreenController>(
      () => SuccessScreenController(),
    );
  }
}
