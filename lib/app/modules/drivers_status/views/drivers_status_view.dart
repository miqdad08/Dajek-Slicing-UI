import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/drivers_status_controller.dart';

class DriversStatusView extends GetView<DriversStatusController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DriversStatusView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DriversStatusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
