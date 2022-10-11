import 'package:flutter/material.dart';
import 'package:uplabslesson2/const/AppColor.dart';
import 'package:uplabslesson2/homePage/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.scafoldColor,
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
            backgroundColor: Colors.transparent,
            elevation: 0),
      ),
      home: const HomePage(),
    );
  }
}
