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
      backgroundColor: Colors.white,
      body: Container(
        // width: 100,
        height: MediaQuery.of(context).size.height / 1.4,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/splash_screen_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/syarpa_logo.png",
            // height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 1.8,
          )
        ),
      ),
    );
  }
}