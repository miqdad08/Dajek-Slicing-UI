import 'package:get/get.dart';

import '../controllers/drivers_status_controller.dart';

class DriversStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DriversStatusController>(
      () => DriversStatusController(),
    );
  }
}
