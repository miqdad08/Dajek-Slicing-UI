import 'package:dajek/helper/utils.dart';
import 'package:dajek/model/food_model.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,

      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final FoodModel food = foodList[index];
        return Container(
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
              SizedBox(height: 5),
              Text(
                food.nameFood,
                maxLines: 1, style: foodNameText,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(food.price, style: foodPriceText),
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
        );
      },
      itemCount: foodList.length,
    );
  }
}
