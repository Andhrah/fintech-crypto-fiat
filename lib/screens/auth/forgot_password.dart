import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:syarpa/screens/auth/forgot_password_otp.dart';
import 'package:syarpa/screens/auth/otp_verified.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/back_icon.dart';
import 'package:syarpa/widgets/button.dart';
import 'package:syarpa/widgets/input_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String id = 'forgotPassword';

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              Row(
                children: [
                  BackIcon(
                    onPress: () {Navigator.pop(context);},
                  ),

                  const SizedBox(width: 25.0),

                  const Text(
                    'Forgot Password',
                    textScaleFactor: 1.4,
                    style: TextStyle(
                      color: appPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),

              kSizeBox,
              kSizeBox,
              kSizeBox,

              const Text(
                'Don’t worry! it happens. Please enter the email address associated with your account.',
                textScaleFactor: 1.1,
                style: TextStyle(
                  color: lightGrayColor,
                  fontWeight: FontWeight.w400,
                ),
              ),

              kSizeBox,kSizeBox,

              const InputField(
                  labelText: 'Email', 
                  borderColor: blueGrayColor, 
                  obscureText: false,
                  hintText: 'Enter your email address'
                ),

              kSizeBox,kSizeBox,

              Button(
                text: 'Submit', 
                onPress: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    ForgotPasswordOtp.id, (route) => false
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