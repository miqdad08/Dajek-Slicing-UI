import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../helper/constant.dart';
import '../../../../widget/list_item.dart';
import '../../../../widget/search_bar.dart';
import '../../../routes/app_pages.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(95),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation:  0,
          flexibleSpace : SafeArea(
            ///Button Back & Search
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
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
                SizedBox(height: 20,),
                ///Content
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
        ///Search
        SearchBarOnFocus(),
      ],
    );
  }
}