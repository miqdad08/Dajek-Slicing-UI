import 'package:dajek/helper/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../assets/icons.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: Column(
            children: [
              ///Logo, Profile & Date
              _topBody(),

              ///Wallet info
              _midBody(),

              ///Content
              _bottomBody(),
            ],
          ),
        ),
      ),
    ));
  }
}

///TopBody
Widget _topBody(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageDajek,
            width: 100,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Ahmad",
                    style: textName,
                  ),
                  Text(
                    "2 Oct 22",
                    style: textDate,
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.account_circle_rounded,
                size: 45,
              )
            ],
          ),
        ],
      ),
      SizedBox(height: 25),
    ],
  );
}

///MidBody
Widget _midBody(){
  return Column(
    children: [
      Container(
        width: double.infinity,
        height: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: red1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Balance",
                    style: textMyBalance,
                  ),
                  Text(
                    "Rp 99.880",
                    style: textButtonBoarding,
                  )
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Icon(
                IconHome.add,
                size: 30,
                color: Colors.white,
              ),
              Spacer(),
              Icon(
                IconHome.repeat,
                size: 25,
                color: Colors.white,
              ),
              Spacer(),
              Icon(
                Icons.history,
                size: 28,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      ///Features
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///Dacar
          Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: peach),
                child: Image.asset(
                  car,
                  scale: 3,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Dacar",
                style: featuresText,
              )
            ],
          ),
          ///Daride
          Column(
            children: [
              InkWell(
                onTap: (){
                  Get.toNamed(Routes.ORDER_DRIVER);
                },
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: peach),
                  child: Image.asset(
                    bike,
                    scale: 3,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Daride",
                style: featuresText,
              )
            ],
          ),
          ///Dafood
          Column(
            children: [
              InkWell(
                onTap: (){
                  Get.offAllNamed(Routes.FOOD_SCREEN);
                },
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: peach),
                  child: Icon(
                    Icons.no_food,
                    color: red1,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Dafood",
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

///BottomBody

Widget _bottomBody(){
  return Column(
    children: [
      Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Promo",
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
            Image.asset(
              content1,
              scale: 1,
            )
          ],
        ),
      ),
      SizedBox(height: 25,),
      ///Content 2
      Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Articles",
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
            Image.asset(
              content2,
              scale: 1,
            )
          ],
        ),
      ),
    ],
  );
}


