import 'package:flutter/material.dart';

import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';

class OtpVerifiedScreen2 extends StatefulWidget {
  static const String id = 'otpVerified2';

  const OtpVerifiedScreen2({Key? key}) : super(key: key);

  @override
  _OtpVerifiedScreen2State createState() => _OtpVerifiedScreen2State();
}

class _OtpVerifiedScreen2State extends State<OtpVerifiedScreen2> with SingleTickerProviderStateMixin {

  // late AnimationController controller;
  // late Animation animation;

  // @override
  // void initState() {
  //   super.initState();
  //   controller = AnimationController(
  //     duration: const Duration(seconds: 2), 
  //     vsync: this, // the SingleTickerProviderStateMixin
  //   );
    
  //   controller.forward();
  //   // add listner to animation status and
  //   // navigate to getStarted screen if animation status is completed
  //   controller.addStatusListener((status) { 
  //     print('status:$status');
  //     if (status == AnimationStatus.completed){
  //       Navigator.of(context).pushNamedAndRemoveUntil(
  //         ProfileUpdate.id, (route) => false
  //       );
  //     }
  //   });
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          // color: Colors.blue,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(
                'assets/images/verify.png',
                width: MediaQuery.of(context).size.width / 3.8,
              ),

              kSizeBox,

              const Text(
                'Verification Successful!',
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: greenColor,
                  fontWeight: FontWeight.w600,
                ),
              ),

              kSizeBox,

              const Text(
                'Congratulations! You’re all signed up \nwith us. Redirecting',
                textScaleFactor: 1.0,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: lightGrayColor,
                  fontWeight: FontWeight.w400,
                ),
              ),

              kSizeBox,kSizeBox,
              
            ],
          ),
        ),
      ),
    );
  }
}
