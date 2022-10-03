import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TransactionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TransactionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
