import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import 'package:syarpa/screens/auth/forgot_password_otp.dart';
import 'package:syarpa/screens/auth/password_success.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/back_icon.dart';
import 'package:syarpa/widgets/button.dart';
import 'package:syarpa/widgets/input_field.dart';

class ResetPassword extends StatefulWidget {
  static const String id = 'resetPassword';

  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                    'Create a new password',
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

              InputField(
                labelText: 'Password', 
                borderColor: blueGrayColor, 
                obscureText: false,
                hintText: 'Enter password',
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/eye.png',
                  ),
                )
              ),

              kSizeBox,const SizedBox(height: 15),

              InputField(
                labelText: 'Confirm Password', 
                borderColor: blueGrayColor, 
                obscureText: false,
                hintText: 'Enter password',
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/eye.png',
                  ),
                )
              ),

              kSizeBox,kSizeBox,

              Button(
                text: 'Submit',
                icon: const Icon(Remix.arrow_right_line),
                onPress: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    PasswordSuccess.id, (route) => false
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