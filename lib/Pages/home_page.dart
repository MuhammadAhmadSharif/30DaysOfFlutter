import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var temp = 40.5;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the Catelog App"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
