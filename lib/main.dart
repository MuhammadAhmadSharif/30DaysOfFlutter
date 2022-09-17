import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/home_page.dart';
import 'package:flutter_catalog/Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home_page(),
      theme: ThemeData.light(),
      initialRoute: "/loginPage",
      routes: {
        "/": (context) => loginPage(),
        "/loginPage": (context) => Home_page(),
      },
    );
  }
}
