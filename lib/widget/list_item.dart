import 'package:dajek/app/modules/detail_screen/views/detail_screen_view.dart';
import 'package:dajek/helper/constant.dart';
import 'package:dajek/model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/routes/app_pages.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 30),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final FoodModel food = foodList[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreenView(food: food,)));
          },
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(food.imageUrls),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  food.nameFood,
                  maxLines: 1,
                  style: foodNameText,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("IDR ${food.price}", style: foodPriceListText),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 15),
                        SizedBox(width: 3),
                        Text(food.rating, style: foodRatingText),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: foodList.length,
    );
  }
}
