import 'package:flutter/material.dart';
import 'package:flutter_nike_store/screens/first_screen.dart';
import 'package:flutter_nike_store/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: FirstScreen(),

    );
  }
}
