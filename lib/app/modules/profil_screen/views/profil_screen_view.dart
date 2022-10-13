import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_screen_controller.dart';

class ProfilScreenView extends GetView<ProfilScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfilScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfilScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
