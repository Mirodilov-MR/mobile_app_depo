import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'Registration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(children: [
        SvgPicture.asset("assets/page1.svg"),
        const SizedBox(height: 20),
        // const Text('CENTRAL SECURITES',
        //     style: TextStyle(
        //          fontSize: 20,
        //          fontWeight: FontWeight.bold,
        //          color: Color.fromRGBO(0, 61, 166, 1))),
        // const SizedBox(height: 5),
        // const Text('DEPOSITORY OF UZBEKISTAN',
        //     style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //         color: Color.fromRGBO(0, 61, 166, 1))),
      ]),
      backgroundColor: Colors.white,
      nextScreen: const SecondRoute(),
      splashIconSize: 250,
    );
  }
}
