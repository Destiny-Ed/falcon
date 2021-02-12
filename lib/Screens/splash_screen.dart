import 'package:falcon/Screens/intro_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    ///
    
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => Intro()), (route) => false);
    });

    ///
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Falcon",
              style: TextStyle(fontSize: 50),
            ),
            Image(
              image: AssetImage('assets/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
