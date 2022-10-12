import 'package:dajek/widget/list_item.dart';
import 'package:dajek/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../helper/constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/nearby_screen_controller.dart';

class NearbyScreenView extends GetView<NearbyScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(168),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: SafeArea(
            ///Button Back & Search
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
              child: TopBody(),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                ///Content
                SizedBox(
                  height: 20,
                ),
                ListItem(),
              ],
            ),
          ),
        ),
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
        /// InfoScreen & Back Button
        Row(
          children: [
            ///Icon Back
            IconButton(
              onPressed: () {
                Get.offAllNamed(Routes.FOOD_SCREEN);
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nearby",
                  style: screenInfoText,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 25),

        ///Search
        SearchBar(),
      ],
    );
  }
}
