import 'package:dajek/app/modules/checkout_screen/views/checkout_screen_view.dart';
import 'package:dajek/model/food_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../helper/utils.dart';
import '../../../routes/app_pages.dart';
import '../controllers/detail_screen_controller.dart';

class DetailScreenView extends GetView<DetailScreenController> {
  final FoodModel food;

  DetailScreenView({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///TopBody
          TopBody(food: food),

          ///MidBody
          MidBody(food: food)
        ],
      ),
      bottomNavigationBar: BottomBody(
        food: food,
      ),
    );
  }
}

class TopBody extends StatelessWidget {
  final FoodModel food;

  const TopBody({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          child: Image.network(
            food.imageUrls,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 30,
          ),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}

class MidBody extends StatelessWidget {
  final FoodModel food;

  const MidBody({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Nama Makanan & Harga
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                food.nameFood,
                style: categoryText,
              ),
              Text(
                "IDR ${food.price}",
                style: foodPriceListText,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ///Deskripsi
          Text(
            "+ 1 Kepal Nasi, + 2 paha Ayam, + 4 Iris Mentimun",
            style: hintSearchBarText,
          ),
          SizedBox(
            height: 5,
          ),
          Text("+ 2 Potong Tomat & + 1 Buah Jeruk nipis",
              style: hintSearchBarText),
          SizedBox(
            height: 25,
          ),
          ///Catatan
          Text("Catatan", style: categoryText),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: lightGrey),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Text(
                "Tidak pakai sambal & juga kol jangan lupa di bungkus rapih plus nasinya tambahakan dikit",
                style: hintSearchBarText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///BottomBody
class BottomBody extends StatefulWidget {
  final FoodModel food;

  const BottomBody({Key? key, required this.food}) : super(key: key);

  @override
  State<BottomBody> createState() => _BottomBodyState();
}

class _BottomBodyState extends State<BottomBody> {
  int? _quantity = 0;

  void _decrementQuantity() {
    setState(() {
      _quantity = _quantity! - 1;
    });
  }

  void _incrementQuantity() {
    setState(() {
      _quantity = _quantity! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
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
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Price",
                      style: locationText,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "IDR ${int.tryParse(widget.food.price)! * _quantity!}",
                      style: foodPriceListText,
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: _decrementQuantity,
                        child: Image.asset(
                          removeIcon,
                          width: 35,
                          height: 35,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      _quantity.toString(),
                      style: foodPriceListText,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: _incrementQuantity,
                        child: Image.asset(
                          addIcon,
                          width: 35,
                          height: 35,
                        )),
                  ],
                ),
              ],
            ),
            ///Set Quantity
            Spacer(),
            ///Button Next
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutScreenView(food: widget.food,)));
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: red1),
                child: Center(
                    child: Text(
                  "Next",
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
