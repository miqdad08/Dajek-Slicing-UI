import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../helper/constant.dart';
import '../controllers/payment_method_controller.dart';

class PaymentMethodView extends GetView<PaymentMethodController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 15),
          child: Column(
            children: [
              PaymentMethodContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethodContent extends StatefulWidget {
  const PaymentMethodContent({Key? key}) : super(key: key);

  @override
  State<PaymentMethodContent> createState() => _PaymentMethodContentState();
}

class _PaymentMethodContentState extends State<PaymentMethodContent> {

  var payment = "";

  void selectRadio(String value) {
    setState(() {
      this.payment = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ///Icon Back
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 8,
            ),

            ///Info Screen
            Text(
              "Payment Method",
              style: categoryText,
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        ///Dana  Method
        Row(
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
                      border: Border.all(color: lightGrey, width: 1)),
                  child: Center(
                    child: Image.asset(dana, width: 30,),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dana", style: headPaymentText,),
                    SizedBox(height: 5),
                    Text("Balance: Rp10.000", style: descriptionBarText,),
                  ],
                ),
              ],
            ),

            Radio(
              value: "Dana",
              groupValue: payment,
              onChanged: (value) {
                selectRadio(value.toString());
              },
            ),
          ],
        ),
        SizedBox(height: 20,),
        ///Gopay  Method
        Row(
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
                      border: Border.all(color: lightGrey, width: 1)),
                  child: Center(
                    child: Image.asset(gopay, width: 30,),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Gopay", style: headPaymentText,),
                    SizedBox(height: 5),
                    Text("Balance: Rp10.000", style: descriptionBarText,),
                  ],
                ),
              ],
            ),

            Radio(
              value: "Gopay",
              groupValue: payment,
              onChanged: (value) {
                selectRadio(value.toString());
              },
            ),
          ],
        ),
        SizedBox(height: 20,),
        ///Link Aja  Method
        Row(
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
                      border: Border.all(color: lightGrey, width: 1)),
                  child: Center(
                    child: Image.asset(linkaja, width: 30,),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Link Aja", style: headPaymentText,),
                    SizedBox(height: 5),
                    Text("Balance: Rp20.000", style: descriptionBarText,),
                  ],
                ),
              ],
            ),

            Radio(
              value: "Link Aja",
              groupValue: payment,
              onChanged: (value) {
                selectRadio(value.toString());
              },
            ),
          ],
        ),
        SizedBox(height: 20,),
        ///Ovo  Method
        Row(
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
                      border: Border.all(color: lightGrey, width: 1)),
                  child: Center(
                    child: Image.asset(ovo, width: 30,),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ovo", style: headPaymentText,),
                    SizedBox(height: 5),
                    Text("Balance: Rp50.000", style: descriptionBarText,),
                  ],
                ),
              ],
            ),

            Radio(
              value: "Ovo",
              groupValue: payment,
              onChanged: (value) {
                selectRadio(value.toString());
              },
            ),
          ],
        ),
        SizedBox(height: 40,),
        ///Button Order Now
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: red1),
            child: Center(
                child: Text(
                  "Save",
                  style: textButtonBoarding,
                )),
          ),
        ),
      ],
    );
  }
}
