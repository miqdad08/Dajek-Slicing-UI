import 'package:get/get.dart';

import '../controllers/nearby_screen_controller.dart';

class NearbyScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NearbyScreenController>(
      () => NearbyScreenController(),
    );
  }
}
