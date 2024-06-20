import 'package:flutter/material.dart';
import 'package:protofilo/widget/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // تعيين الثيم الداك هنا

      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
