import 'package:dajek/helper/utils.dart';
import 'package:dajek/model/food_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widget/list_item.dart';
import '../../../routes/app_pages.dart';
import '../controllers/food_screen_controller.dart';

class FoodScreenView extends GetView<FoodScreenController> {
  final List<FoodModel> foods = foodList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 40),
          child: Column(
            children: [
              /// Location, Back Button & Search
              TopBody(),
              ///Image & Features
              MidBody(),
              ///Content
              BottomBody()
            ],
          ),
        )),
      ),
    );
  }
}

class TopBody extends StatelessWidget {
  const TopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Location & Back Button
        Row(
          children: [
            ///Icon Back
            IconButton(
              onPressed: () {
                Get.offAllNamed(Routes.MAIN_SCREEN);
              },
              icon: Icon(Icons.arrow_back_ios, size: 20),
            ),
            SizedBox(
              width: 8,
            ),

            ///Location Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "My location",
                      style: myLocText,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 15,
                      color: orange2,
                    )
                  ],
                ),
                Text(
                  "Jl Condet Raya",
                  style: locationText,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 25),

        /// TextField Search
        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: lightGrey),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: textOnBoardingSub),
            ),
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}

class MidBody extends StatelessWidget {
  const MidBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Image
        Image.asset(
          content3,
          scale: 1,
        ),
        SizedBox(
          height: 25,
        ),

        ///Features
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///Nearby
            Column(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: peach),
                  child: Image.asset(
                    nearby,
                    scale: 3,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Nearby",
                  style: featuresText,
                )
              ],
            ),

            ///Promo
            Column(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: peach),
                  child: Image.asset(
                    promo,
                    scale: 3,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Promo",
                  style: featuresText,
                )
              ],
            ),

            ///Favorite
            Column(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: peach),
                  child: Image.asset(
                    favorite,
                    scale: 3,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "More",
                  style: featuresText,
                )
              ],
            ),

            ///More
            Column(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: peach),
                  child: Image.asset(
                    more,
                    scale: 3,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "More",
                  style: featuresText,
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}

class BottomBody extends StatelessWidget {
  const BottomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Content List
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Today's",
                  style: categoryText,
                ),
                Text(
                  "See all",
                  style: textDate,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListItem(),
          ],
        ),
      ],
    );
  }
}




