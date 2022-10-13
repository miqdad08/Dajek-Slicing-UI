import 'package:dajek/app/modules/order_driver/views/order_driver_view.dart';
import 'package:dajek/app/modules/search_driver/views/search_driver_view.dart';
import 'package:dajek/helper/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/app_pages.dart';
import '../controllers/success_screen_controller.dart';

class SuccessScreenView extends GetView<SuccessScreenController> {
  @override
  Widget build(BuildContext context) {
    // TextEditingController textFieldController = TextEditingController();

    return Scaffold(
      body: _body(context),
    );
  }
}

///Body
Widget _body(BuildContext context) {
  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = "Success";
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            SearchDriverContent(
              text: textToSend,
            )));
  }


  return SafeArea(
    child: Column(
      children: [
        Spacer(
          flex: 5,
        ),

        ///animation Success
        Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_pqnfmone.json',
            width: 120,
            repeat: false),
        SizedBox(
          height: 30,
        ),

        ///Text Success
        Text(
          "Success",
          style: headBottomSheetText,
        ),
        SizedBox(
          height: 10,
        ),

        ///Sub Text Success
        Text("You have successfully ordered", style: descriptionBarText),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
          child: InkWell(
            onTap: () {
              _sendDataToSecondScreen(context);
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: red1, borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Text(
                  "Order",
                  style: textButtonBoarding,
                ),
              ),
            ),
          ),
        ),
        Spacer(
          flex: 6,
        ),
      ],
    ),
  );
}