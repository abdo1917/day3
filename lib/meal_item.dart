import 'package:day3/detailsScreen.dart';
import 'package:flutter/material.dart';

import 'model/meal.dart';

class MealItem extends StatelessWidget {
  Meal meal;
  MealItem({required this.meal});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        InkWell(
          onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => DetailsScreen(meal))));
    },
            child: Image(image: NetworkImage(meal.image))),
        Text(meal.Name),
      ]),
    );
  }
}
