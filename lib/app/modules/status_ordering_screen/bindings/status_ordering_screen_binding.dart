import 'package:get/get.dart';

import '../controllers/status_ordering_screen_controller.dart';

class StatusOrderingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatusOrderingScreenController>(
      () => StatusOrderingScreenController(),
    );
  }
}
