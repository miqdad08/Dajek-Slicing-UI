import 'dart:async';

import 'package:dajek/app/modules/success_screen/views/success_screen_view.dart';
import 'package:dajek/widget/map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../helper/constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/search_driver_controller.dart';



class SearchDriverView extends GetView<SearchDriverController> {
  final String text;
  SearchDriverView({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SearchDriverContent(text: text,);
  }
}

class SearchDriverContent extends StatefulWidget {
  final String text;
  const SearchDriverContent({Key? key, required this.text}) : super(key: key);

  @override
  State<SearchDriverContent> createState() => _SearchDriverContentState();
}

class _SearchDriverContentState extends State<SearchDriverContent> {


  searchDriverDelay() async {
    var duration = Duration(seconds: 1);
    return Timer(duration, () {
      if (widget.text == "Success") {
        Get.toNamed(Routes.STATUS_ORDERING_SCREEN);
      }else{
        Get.toNamed(Routes.DRIVERS_STATUS);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    searchDriverDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapWidgetWoMarker(),
          Center(
            child: Image.asset(
              pointer,
              width: 160,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            height: double.infinity,
            width: double.infinity,
          ),
        ],
      ),
      backgroundColor: darkGrey1,
      bottomNavigationBar: BottomBody(),
    );
  }
}

class BottomBody extends StatelessWidget {
  const BottomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
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
              "Search Driver...",
              style: categoryText,
            ),

            ///Set Quantity
            Spacer(),

            ///Button Cancel
            InkWell(
              onTap: () {
                Get.back();
                Get.back();
                Get.back();
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: red1, width: 3),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                    child: Text(
                  "Cancel",
                  style: foodPriceText,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
