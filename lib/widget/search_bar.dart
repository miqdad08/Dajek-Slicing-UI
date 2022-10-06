import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/routes/app_pages.dart';
import '../helper/utils.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.SEARCH);
      },
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: lightGrey),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              Text("Find your favorite food today...", style: hintSearchBarText,)
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBarOnFocus extends StatefulWidget {
  const SearchBarOnFocus({Key? key}) : super(key: key);

  @override
  State<SearchBarOnFocus> createState() => _SearchBarOnFocusState();
}

class _SearchBarOnFocusState extends State<SearchBarOnFocus> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: lightGrey),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            Text("Find your favorite food today...", style: hintSearchBarText,),
            IconButton(onPressed: (){
              Get.back();
            }, icon: Icon(Icons.close)),
          ],
        ),
      ),
    );
  }
}

