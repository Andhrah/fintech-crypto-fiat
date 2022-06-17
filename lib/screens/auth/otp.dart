import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:syarpa/screens/auth/otp_verified.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/back_icon.dart';
import 'package:syarpa/widgets/button.dart';

class OtpScreen extends StatefulWidget {
  static const String id = 'otp';

  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                    'Verify your account',
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

              Image.asset(
                'assets/images/verify.png',
                width: MediaQuery.of(context).size.width / 3.8,
              ),

              kSizeBox,
              kSizeBox,

              RichText(
                textScaleFactor: 1.2,
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'We’ve sent a unique OTP to\n',
                  style: TextStyle(
                    color: lightGrayColor,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'alexandra.c@syarpa.com\n', style: TextStyle(fontWeight: FontWeight.w400, color: appPrimaryColor)),
                    TextSpan(text: 'Enter it below to verify your account.')
                  ],
                ),
              ),

              kSizeBox,kSizeBox,
              

              PinCodeTextField(
                appContext: context,
                pastedTextStyle: const TextStyle(
                  // color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
                length: 6,
                obscureText: true,
                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                // obscuringWidget: ,
                // validator: (v) {
                //   if (v! == int) {
                //     return "I'm from validator";
                //   } else {
                //     return null;
                //   }
                // },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  inactiveColor: blueGrayColor,
                  activeColor: blueGrayColor,
                  selectedColor: blueGrayColor,
                  inactiveFillColor: whiteColor,
                  activeFillColor: whiteColor,
                  selectedFillColor: whiteColor,
                  errorBorderColor: appPrimaryColor,
                ),
                cursorColor: appPrimaryColor,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                // errorAnimationController: errorController,
                // controller: textEditingController,
                keyboardType: TextInputType.emailAddress,
                onCompleted: (v) {
                  debugPrint("Completed");
                  // snackBar(
                  //   "Code Verified!!",
                  //   green,
                  // );
                  // Navigator.of(context).pushNamed(
                  //   ResetPassword.id,
                  //   arguments: {
                  //     "code": code,
                  //   }
                  // );
                },
                // onTap: () {
                //   print("Pressed");
                // },
                onChanged: (value) {
                  debugPrint(value);
                  setState(() {
                    // code = value;
                  });
                },
                beforeTextPaste: (text) {
                  debugPrint("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),

              kSizeBox,kSizeBox,

              Button(
                text: 'Continue', 
                onPress: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    OtpVerifiedScreen.id, (route) => false
                  );
                }, 
                color: disabledColor, 
                width: MediaQuery.of(context).size.width,
                textColor: disabledTextColor, 
                isLoading: false
              )
            ],
          ),
        ),
      ),
    );
  }
}