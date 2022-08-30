
import 'package:flutter/material.dart';

import 'category_meals_screen.dart';
import 'model/catergory.dart';

class CategoryItem extends StatelessWidget {
  Category item;
  CategoryItem({required this.item});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Color.fromARGB(255, 151, 111, 116),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => CategoryMealsScreen(category: item))));
      },
      child: InkWell(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(item.image),
          ),
          title: Text(item.Name),
        ),
      ),
    );
  }
}
