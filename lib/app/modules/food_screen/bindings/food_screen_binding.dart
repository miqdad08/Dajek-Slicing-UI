import 'package:get/get.dart';

import '../controllers/food_screen_controller.dart';

class FoodScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodScreenController>(
      () => FoodScreenController(),
    );
  }
}
