import 'dart:async';

import 'package:dajek/widget/map.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../assets/icons.dart';
import '../../../../helper/constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/status_ordering_screen_controller.dart';

class StatusOrderingScreenView extends GetView<StatusOrderingScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: MapWidget(),
        ),
      ),
      bottomNavigationBar: BottomBody(),
    );
  }
}

class BottomBody extends StatefulWidget {
  const BottomBody({Key? key}) : super(key: key);

  @override
  State<BottomBody> createState() => _BottomBodyState();
}

class _BottomBodyState extends State<BottomBody> {

  ///Processing Order Kit
  var processingOrderText = "Your order is being processed...";


  ///Preparing Order Kit
  var preparingColor = lightGrey;
  var textVisiblePreparing = false;
  var preparingIcon = darkGrey1;

  ///Delivering Order Kit
  var deliveringColor = lightGrey;
  var textVisibleDelivering = false;
  var deliveringIcon = darkGrey1;

  ///Button
  var textButton = "Cancel";
  var colorButton = white;
  var textButtonStyle = foodPriceText;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.0),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Status Order",
              style: categoryText,
            ),
            SizedBox(
              height: 25,
            ),

            ///Processing Order
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: peach,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    IconHome.repeat,
                    color: red1,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: true,
                      child: Text(
                        "Processing Order",
                        style: headPaymentText,
                      ),
                    ),
                    Visibility(
                      visible: processingOrderText == "Your order is being processed..." ? true : false,
                      child: Text(
                        processingOrderText,
                        style: hintSearchBarText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: lineGrey,
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),

            ///Preparing Order
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      preparingColor = peach;
                      processingOrderText = "";
                      preparingIcon = Colors.red;
                      textVisiblePreparing = true;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: preparingColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.fastfood_outlined,
                      color: preparingIcon,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Preparing Order",
                      style: headPaymentText,
                    ),
                    Visibility(
                      visible: textVisiblePreparing,
                      child: Text(
                        "Your order is being preparing...",
                        style: hintSearchBarText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: lineGrey,
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),

            ///Delivery Order
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      ///Delivery Order Status
                      deliveringColor = peach;
                      textVisiblePreparing = false;
                      textVisibleDelivering = true;
                      deliveringIcon = Colors.red;
                      ///Button
                      textButton = "Back";
                      colorButton = red1;
                      textButtonStyle = textButtonBoarding;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: deliveringColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.delivery_dining,
                      color: deliveringIcon,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: true,
                      child: Text(
                        "Preparing Order",
                        style: headPaymentText,
                      ),
                    ),
                    Visibility(
                      visible: textVisibleDelivering,
                      child: Text(
                        "Your order is being delivering...",
                        style: hintSearchBarText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: lineGrey,
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),

            ///Button Back
            InkWell(
              onTap: () {
                if(textButton == "Cancel"){
                  Get.back();
                  Get.back();
                  Get.back();
                  Get.back();
                }else{
                  Get.toNamed(Routes.FOOD_SCREEN);
                }
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: colorButton,
                  border: Border.all(color: red1, width: 3),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                    child: Text(
                  textButton,
                  style: textButtonStyle,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
