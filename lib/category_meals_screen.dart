import 'package:day3/data.dart';
import 'package:day3/meal_item.dart';
import 'package:day3/model/meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'model/catergory.dart';


class CategoryMealsScreen extends StatelessWidget {
  Category category;
  Data data = Data();
  CategoryMealsScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Meal> selected =
        data.Meals.where((element) => element.categoryID == category.id)
            .toList();
    print(selected);
    return Scaffold(
      appBar: AppBar(
        title: Text(category.Name),
      ),
      body: (selected.length == 0)
          ? Center(
              child: Text("Loading your meals......."),
            )
          : ListView(
              children: selected.map((item) =>  MealItem(meal: item)).toList(),

            ),
    );
  }
}
