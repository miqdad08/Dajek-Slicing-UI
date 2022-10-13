import 'package:dajek/app/modules/checkout_screen/views/checkout_screen_view.dart';
import 'package:dajek/widget/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import 'package:get/get.dart';

import '../../../../helper/constant.dart';
import '../../../../helper/helper.dart';
import '../../../routes/app_pages.dart';
import '../../search_driver/views/search_driver_view.dart';
import '../controllers/order_driver_controller.dart';

class OrderDriverView extends GetView<OrderDriverController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [MapWidget(), _topBody()],
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: _bottomBody(context),
    );
  }
}

///Top Body
Widget _topBody() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      height: 125,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.0),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on),
                Container(
                    height: 37,
                    child: Dash(
                        direction: Axis.vertical,
                        length: 37,
                        dashLength: 3,
                        dashColor: Colors.grey)),
                Icon(
                  Icons.location_on,
                  color: Colors.deepOrange,
                )
              ],
            ),
            Spacer(),
            IntrinsicWidth(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jl Medan Merdeka, Jakarta Timur",
                    style: descriptionBarText,
                  ),
                  Container(
                    child: Divider(
                      color: grey1,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    "Jl Duren sawit, Kota jakarta Timur",
                    style: descriptionBarText,
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    ),
  );
}

Widget _bottomBody(BuildContext context) {
  ///Fungsi Ngirim Data
  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = "Order";
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SearchDriverContent(
                  text: textToSend,
                )));
  }

  return Container(
    height: 270,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 0.0),
          ),
        ]),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(30, 25, 30, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///Text Method Payment
          Text(
            "Payment",
            style: categoryText,
          ),

          ///Payment
          Container(
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: lightGrey, width: 2)),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: lightGrey,
                          ),
                          child: Center(
                            child: Image.asset(
                              gopay,
                              width: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Gopay",
                              style: headDescriptionText,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Rp 23.000",
                              style: descriptionBarText,
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.PAYMENT_METHOD);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        ))
                  ],
                )),
          ),

          ///Button Cancel
          InkWell(
            onTap: () {
              _sendDataToSecondScreen(context);
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: red1,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: Text(
                "Order Now",
                style: textButtonBoarding,
              )),
            ),
          ),
        ],
      ),
    ),
  );
}
