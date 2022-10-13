import 'package:get/get.dart';

import '../controllers/profil_screen_controller.dart';

class ProfilScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilScreenController>(
      () => ProfilScreenController(),
    );
  }
}
