import 'package:get/get.dart';

import '../controllers/checkout_screen_controller.dart';

class CheckoutScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutScreenController>(
      () => CheckoutScreenController(),
    );
  }
}
