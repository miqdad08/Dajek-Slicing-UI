import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_screen_controller.dart';

class ChatScreenView extends GetView<ChatScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ChatScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
