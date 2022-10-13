import 'package:dajek/helper/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_screen_controller.dart';

class ChatScreenView extends GetView<ChatScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(83),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0.2,
          flexibleSpace: SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: _topBody(),
          )),
        ),
      ),
      body: Stack(children: [
        _midBody(),
        _bottomBody(),
      ]),
    );
  }
}

Widget _topBody() {
  return Column(
    children: [
      Row(
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back)),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            profil,
            width: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mang Ojeg",
                style: textName,
              ),
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: darkGrey1,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Online",
                    style: myLocText,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ],
  );
}

Widget _midBody() {
  return Expanded(
    child: ListView(
      physics: BouncingScrollPhysics(),
      children: [
        _itemChat(chat: 0,message: "Pagi mang, bisa order kah?.\n saya sudah set locnya ya..",),
        _itemChat(message: "Sankyuu mang...", chat: 0),
        _itemChat(message: "Bisa mas, mohon di tunngu ya\nsaya sedang putbal...", chat: 1),
      ],
    ),
  );
}

Widget _bottomBody() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type your message...',
                  hintStyle: myLocText,
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: lineGrey, width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: lineGrey, width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15,),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: red1
              ),
              child: Icon(Icons.send, size: 25, color: Colors.white,),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _itemChat({required String message, required int chat}) {
  return Row(
    mainAxisAlignment:
        chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Flexible(
          child: Container(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        margin: EdgeInsets.only(left: 30, right: 30, top: 30),
        decoration: BoxDecoration(
            color: chat == 0 ? lightPeach : Colors.white,
            borderRadius: chat == 0
                ? BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
                : BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
        child: Text('${message}', style: myLocText,),
      ))
    ],
  );
}

