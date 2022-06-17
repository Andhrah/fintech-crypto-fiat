import 'package:flutter/material.dart';
import 'package:syarpa/screens/auth/login.dart';
import 'package:syarpa/screens/auth/profile_update.dart';

import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/button.dart';

class PasswordSuccess extends StatefulWidget {
  static const String id = 'passwordSuccess';

  const PasswordSuccess({Key? key}) : super(key: key);

  @override
  _PasswordSuccessState createState() => _PasswordSuccessState();
}

class _PasswordSuccessState extends State<PasswordSuccess>  {
  
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
                'assets/images/password_success.png',
                width: MediaQuery.of(context).size.width / 3.8,
              ),

              kSizeBox,

              const Text(
                'Password updated!',
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: greenColor,
                  fontWeight: FontWeight.w600,
                ),
              ),

              kSizeBox,

              const Text(
                'Login to your account with your new\npassword.',
                textScaleFactor: 1.1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: lightGrayColor,
                  fontWeight: FontWeight.w400,
                ),
              ),

              kSizeBox,kSizeBox,

              Button(
                text: 'Login', 
                onPress: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    LoginScreen.id, (route) => false
                  );
                }, 
                color: appPrimaryColor, 
                width: MediaQuery.of(context).size.width,
                textColor: whiteColor, 
                isLoading: false
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
