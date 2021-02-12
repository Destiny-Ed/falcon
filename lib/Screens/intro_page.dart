import 'package:falcon/boardingPackage/boarding_screen.dart';
import 'package:falcon/boardingPackage/page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final List<Pages> boardingPages = [
    Pages(
      description:
          'We help you with the right furniture because it leads you to an overall improvement in your lifestyle.',
      imagePath: 'assets/chair.png',
    ),
    Pages(
      description:
          "How long your furniture has served. there comes a time when you say 'Bye', and say hello to Us",
      imagePath: 'assets/chair_two.png',
    ),
    Pages(
      description:
          'We help you with the right furniture because it leads you to an overall improvement in your lifestyle.',
      imagePath: 'assets/chair.png',
    ),
    Pages(
      description:
          "How long your furniture has served. there comes a time when you say 'Bye', and say hello to Us",
      imagePath: 'assets/chair_two.png',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      boardingPages,
      appName: 'Falcon',
      appLogo: Image(
        image: AssetImage('assets/logo.png'),
        width: 100,
      ),
      signIn: () {
        print("Sign In Page");
      },
      signUp: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => HomePage()),
        );
      },
    );
  }
}
