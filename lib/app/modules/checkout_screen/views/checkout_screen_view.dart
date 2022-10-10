import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../helper/utils.dart';
import '../../../../model/food_model.dart';
import '../../../routes/app_pages.dart';
import '../controllers/checkout_screen_controller.dart';

class CheckoutScreenView extends GetView<CheckoutScreenController> {
  final FoodModel food;

  CheckoutScreenView({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// InfoScreen & Back Button
                TopBody(food: food),

                ///-------------------------
                Divider(
                  color: lightGrey,
                  thickness: 10,
                ),

                ///Method Payment & Order List
                MidBody(food: food),

                ///Total Price
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBody(food: food));
  }
}

///TopBody
class TopBody extends StatelessWidget {
  final FoodModel food;

  const TopBody({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// InfoScreen & Back Button
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
                food.mart,
                style: screenInfoText,
              ),
            ],
          ),
          SizedBox(height: 25),
          Text(
            "Deliver to",
            style: categoryText,
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: lightGrey, width: 1)),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 5, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Udacoding Official",
                          style: headDescriptionText,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "South Tangerang City, Banten 15414\n0822-1376-1973",
                          style: descriptionBarText,
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        ))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

///MidBody
class MidBody extends StatefulWidget {
  final FoodModel food;

  const MidBody({Key? key, required this.food}) : super(key: key);

  @override
  State<MidBody> createState() => _MidBodyState();
}

class _MidBodyState extends State<MidBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Method Payment
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Text(
            "Payment Method",
            style: categoryText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
          child: Container(
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: lightGrey, width: 1)),
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
                              border: Border.all(color: grey1, width: 2)),
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
                              "IDR ${widget.food.price}",
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
        ),
        Divider(
          color: lightGrey,
          thickness: 10,
        ),

        ///Order List
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Text(
            "Order lists",
            style: categoryText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Container(
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: lightGrey, width: 1)),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                  image: NetworkImage(widget.food.imageUrls),
                                  fit: BoxFit.cover),
                              border: Border.all(color: lightGrey, width: 1)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.food.nameFood,
                              style: headDescriptionText,
                            ),
                            Text(
                              "IDR ${widget.food.price}",
                              style: descriptionBarText,
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        ))
                  ],
                )),
          ),
        ),
      ],
    );
  }
}

///Bottom Body
class BottomBody extends StatelessWidget {
  final FoodModel food;

  const BottomBody({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int shippingFee = 20000;
    return Container(
      height: 220,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.0),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping fee",
                  style: screenInfoText,
                ),
                Text(
                  "IDR ${shippingFee}",
                  style: priceCheckoutText,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: screenInfoText,
                ),
                Text(
                  "IDR ${food.price}",
                  style: priceCheckoutText,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: categoryText,
                ),
                Text(
                  "IDR ${int.tryParse(food.price)! + shippingFee}",
                  style: foodPriceText,
                ),
              ],
            ),
            Spacer(),

            ///Button Order Now
            InkWell(
              onTap: () {
                ///Bottom Sheet
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 280,
                        child: Column(
                          children: [
                            ListTile(
                              trailing: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                    size: 30,
                                  )),
                            ),
                            Padding(
                              padding: const  EdgeInsets.fromLTRB(30, 0, 30, 30),
                              child: ListTile(
                                title: Column(
                                  children: [
                                    Text("Check Again", style: headBottomSheetText,),
                                    SizedBox(height: 20,),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "Please re-check your order to facilitate\nthe ordering process",
                                      style: descriptionBarText,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const  EdgeInsets.fromLTRB(30, 0, 30, 30),
                              child: ListTile(
                                title: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: red1, width: 3),
                                              borderRadius: BorderRadius.circular(50)),
                                          child: Center(
                                            child: Text(
                                              "Check", style: foodPriceText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Expanded(
                                      flex: 2,
                                      child: InkWell(
                                        onTap: () {
                                          Get.toNamed(Routes.SUCCESS_SCREEN);
                                        },
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: red1,
                                              borderRadius: BorderRadius.circular(50)),
                                          child: Center(
                                            child: Text(
                                              "Order", style: textButtonBoarding,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: red1),
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
}
