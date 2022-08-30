import 'package:flutter/material.dart';

import 'category_screen.dart';
import 'home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme:
          AppBarTheme(backgroundColor: Color.fromARGB(255, 209, 139, 134))),
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
        "category": (context) => CategoryScreen(),
      },
    );
  }
}
