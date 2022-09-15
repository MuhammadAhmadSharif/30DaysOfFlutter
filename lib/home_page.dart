import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 30;
    var temp = 40.5;
    return Scaffold(
      appBar:AppBar(
        title: Text("Catelog App"),
        backgroundColor: Color.fromARGB(255, 1, 224, 1),
      ),
        body: Center(
            child: Container(
      child: Text("today Temperatur is $temp degree "),
    ),
    ),
    drawer: Drawer(),
    );
  }
}
