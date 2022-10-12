import 'package:get/get.dart';

import '../controllers/order_driver_controller.dart';

class OrderDriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDriverController>(
      () => OrderDriverController(),
    );
  }
}
