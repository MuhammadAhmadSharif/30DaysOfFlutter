import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/home_page.dart';
import 'package:flutter_catalog/utils/routes.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                scale: 5,
              ),
              SizedBox(height: 20.0),
              Text(
                "WELCOME $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 22.0, horizontal: 50.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          hintText: "Please Enter Username",
                          labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Please Enter Password",
                          labelText: "Password"),
                    ),
                    SizedBox(height: 20.0),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 70 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(changeButton? 50 : 10),
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                    //ElevatedButton(
                    // onPressed: (() {
                    //    Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //  }),
                    //  child: Text("Login"),
                    // style: TextButton.styleFrom(),
                    //)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
