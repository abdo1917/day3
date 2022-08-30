import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'category_item.dart';
import 'data.dart';

class CategoryScreen extends StatelessWidget {
  Data data = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Container(alignment: Alignment.center,
            child: Text('Cetagories',style: TextStyle(fontSize: 26),)),
        SizedBox(width: 120,),


        Icon(Icons.settings,color: Colors.black,),
      ],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, childAspectRatio: 3 / 2),
        children:
            data.Categories.map((item) => CategoryItem(item: item)).toList(),
      ),
    );
  }
}
