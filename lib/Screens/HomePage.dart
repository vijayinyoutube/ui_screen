import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
            Container(
              width: 414,
              height: 305,
              child: Lottie.asset('assets/animations/rocket.json'),
            ),
            SizedBox(
              height: 25.00,
            ),
            buildText1(),
            SizedBox(
              height: 25.00,
            ),
            buildText2(),
            Text(
              "with Flutter!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.00,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 69.00,
            ),
            buildBtn(),
            
          ],
        ),
      ),
    );
  }

  Widget buildText2() {
    return Container(
      width: double.infinity,
      height: 50,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Build ',
              style: TextStyle(fontSize: 43.0, color: Colors.white),
            ),
            Container(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40.0,
                  color: Colors.orangeAccent,
                ),
                child: AnimatedTextKit(
                  pause: new Duration(microseconds: 0),
                  isRepeatingAnimation: true,
                  animatedTexts: [
                    RotateAnimatedText('iOS'),
                    RotateAnimatedText('Android'),
                    RotateAnimatedText('Web'),
                    RotateAnimatedText('Desktop'),
                  ],
                ),
              ),
            ),
            const Text(
              ' Apps ',
              style: TextStyle(fontSize: 43.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildText1() {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
          child: AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts: [
              TyperAnimatedText('Want to build an app?'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBtn() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 347,
        height: 53,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.00),
          color: Color.fromRGBO(243, 64, 161, 1),
        ),
        child: Center(
          child: Text(
            "Get Started",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.00,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
