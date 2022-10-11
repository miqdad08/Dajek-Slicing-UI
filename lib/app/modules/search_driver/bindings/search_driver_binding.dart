import 'package:get/get.dart';

import '../controllers/search_driver_controller.dart';

class SearchDriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchDriverController>(
      () => SearchDriverController(),
    );
  }
}
