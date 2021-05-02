import 'Widgets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(155, 34, 228, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildImage(),
            heightSpacer(25.00),
            buildText1(),
            heightSpacer(25.00),
            buildText2(),
            buildText("with Flutter!"),
            heightSpacer(69.00),
            buildBtn(),
          ],
        ),
      ),
    );
  }
}
