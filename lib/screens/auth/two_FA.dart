import 'package:flutter/material.dart';

import 'package:syarpa/screens/auth/otp_verified.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/back_icon.dart';
import 'package:syarpa/widgets/button.dart';

enum SingingCharacter { google, sms, email, others }

class TwoFAScreen extends StatefulWidget {
  static const String id = 'twoFA';

  const TwoFAScreen({Key? key}) : super(key: key);

  @override
  _TwoFAScreenState createState() => _TwoFAScreenState();
}

class _TwoFAScreenState extends State<TwoFAScreen> {
  
  SingingCharacter? _character = SingingCharacter.google;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
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
                      'Protect your account',
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
                  'assets/images/protect.png',
                  width: MediaQuery.of(context).size.width / 5.3,
                ),

                kSizeBox,
                kSizeBox,

                const Text(
                  'Setting up a two factor will add an extra\nlayer of security to your account',
                  textScaleFactor: 1.1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: lightGrayColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                kSizeBox,kSizeBox,kSizeBox,

                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Google Authenticator App',
                        textScaleFactor: 1.1,
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 8.0),

                      const Text(
                        'Use the authenticator app to generate',
                        textScaleFactor: 0.9,
                        style: TextStyle(
                          color: lightGrayColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  trailing: Radio<SingingCharacter>(
                    value: SingingCharacter.google,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),

                kSizeBox,

                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Text Message',
                        textScaleFactor: 1.1,
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 8.0),

                      const Text(
                        'Verification codes are sent by text message',
                        textScaleFactor: 0.9,
                        style: TextStyle(
                          color: lightGrayColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  trailing: Radio<SingingCharacter>(
                    value: SingingCharacter.sms,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),

                kSizeBox,

                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email',
                        textScaleFactor: 1.1,
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 8.0),

                      const Text(
                        'Verification codes are sent by email',
                        textScaleFactor: 0.9,
                        style: TextStyle(
                          color: lightGrayColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  trailing: Radio<SingingCharacter>(
                    value: SingingCharacter.email,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),

                kSizeBox,

                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Don’t show me this message again (you can always update via settings)',
                        textScaleFactor: 0.9,
                        style: TextStyle(
                          color: lightGrayColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  trailing: Radio<SingingCharacter>(
                    value: SingingCharacter.email,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),

                kSizeBox,kSizeBox,

                Button(
                  text: 'Confirm', 
                  onPress: () {
                    // Navigator.of(context).pushNamedAndRemoveUntil(
                    //   OtpVerifiedScreen.id, (route) => false
                    // );
                  }, 
                  color: appPrimaryColor, 
                  width: MediaQuery.of(context).size.width,
                  textColor: whiteColor, 
                  isLoading: false
                ),

                kSizeBox,

                TextButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamedAndRemoveUntil(
                    //   LoginScreen.id, (route) => false
                    // );
                  }, 
                  child: const Text(
                    'Skip for now',
                    style: TextStyle(
                      color: appPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    ),
                  )
                ),

                kSizeBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}