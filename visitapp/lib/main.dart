// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/pages/first_page.dart';
import 'package:visitapp/themes/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visit App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: whiteColor,
        appBarTheme: AppBarTheme(backgroundColor: whiteColor),
      ),
      home: FirstPage(),
    );
  }
}
