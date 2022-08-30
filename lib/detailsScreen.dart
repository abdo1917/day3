import 'package:flutter/material.dart';

import 'model/catergory.dart';
import 'model/meal.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName='route';
  Meal meal;
  DetailsScreen( this.meal);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Column(
        children: [
          Image(image: NetworkImage(meal.image)),
          SizedBox(height: 20,),
          Text(meal.Name),
          SizedBox(height: 20,),
        Text('price :  123')],
      ),
    );
  }
}
