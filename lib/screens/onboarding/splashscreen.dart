import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splashScreen';

  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('splash_screens_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        // child: Center(
        //   child: Image.asset(
        //     "assets/images/syarpa_logo.png",
        //     height: 250.0,
        //   )
        // ),
      ),
    );
  }
}