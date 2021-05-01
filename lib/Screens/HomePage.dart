import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color secondaryColor = Color.fromRGBO(150, 64, 186, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Image.asset(
            "assets/animations/rocket.gif",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
