import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syarpa/screens/onboarding/onboarding.dart';
import 'package:syarpa/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: appPrimaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2), 
      vsync: this, // the SingleTickerProviderStateMixin
    );
    
    controller.forward();
    // add listner to animation status and
    // navigate to getStarted screen if animation status is completed
    controller.addStatusListener((status) { 
      print('status:$status');
      if (status == AnimationStatus.completed){
        Navigator.of(context).pushNamedAndRemoveUntil(
          OnboardingScreen.id, (route) => false
        );
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: appPrimaryColor,
    //     statusBarIconBrightness: Brightness.light,
    //   ),
    // );
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