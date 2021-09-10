import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KFC App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        backgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
