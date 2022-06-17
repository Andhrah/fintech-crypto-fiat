import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/auth/login.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/basic_input_field.dart';
import 'package:syarpa/widgets/button.dart';
import 'package:syarpa/widgets/input_field.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup';

  const SignupScreen({Key? key}) : super(key: key);
  
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kSizeBox,
                const Text(
                  'Good to have you',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: appPrimaryColor),
                ),

                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      LoginScreen.id, (route) => false
                    );
                  }, 
                  child: RichText(
                    textScaleFactor: 0.9,
                    text: const TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: lightGrayColor,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Log in', style: TextStyle(fontWeight: FontWeight.bold, color: appPrimaryColor)),
                      ],
                    ),
                  ),
                ),

                kSizeBox,
                kSizeBox,

                const InputField(
                  labelText: 'Email', 
                  borderColor: blueGrayColor, 
                  obscureText: false,
                  hintText: 'Enter your email address'
                ),

                kSizeBox,
                const SizedBox(height: 10),

                InputField(
                  labelText: 'Password', 
                  borderColor: blueGrayColor, 
                  obscureText: false,
                  hintText: 'Enter password',
                  suffixIcon: InkWell(
                    onTap: () {},
                    // height: MediaQuery.of(context).size.height / 20,
                    // width: MediaQuery.of(context).size.width / 10,
                    child: Image.asset(
                      'assets/images/eye.png',
                    ),
                  )
                ),

                kSizeBox,
                const SizedBox(height: 10),

                InputField(
                  labelText: 'Country of residence', 
                  borderColor: blueGrayColor, 
                  obscureText: false,
                  hintText: 'Select Country',
                  // enabled: false,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Remix.arrow_down_s_line,
                      color: appPrimaryColor,
                    ),
                    tooltip: 'Increase volume by 10',
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        // title: const Text('AlertDialog Title'),
                        contentPadding: const EdgeInsets.all(0.0),
                        content: Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {}, 
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/ng_flag.png',
                                      width: 20.0,
                                      height: 20.0,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'Nigeria',
                                      style: TextStyle(
                                        color: appPrimaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const Divider(color: lightGrayColor, height: 2.0,),

                              TextButton(
                                onPressed: () {}, 
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/uk_flag.png',
                                      width: 20.0,
                                      height: 20.0,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'United Kingdom',
                                      style: TextStyle(
                                        color: appPrimaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                    ),
                  ),
                ),

                kSizeBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'I have an invite code',
                      style: TextStyle(
                        color: lightGrayColor,
                        fontSize: 12.0,
                      ),
                    ),

                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.toggle_on,
                        color: lightBlueColor,
                        size: 40.0,
                      )
                    )
                  ],
                ),

                kSizeBox,

                const BasicInputField(
                  borderColor: blueGrayColor, 
                  obscureText: false,
                  hintText: 'Enter code',
                ),

                kSizeBox,
                kSizeBox,
                kSizeBox,
                const SizedBox(height: 10),

                Button(
                  text: 'Sign Up', 
                  onPress: () {}, 
                  color: secondaryColor, 
                  width: MediaQuery.of(context).size.width,
                  textColor: whiteColor,
                  isLoading: false
                ),

                const SizedBox(height: 8.0),

                TextButton(
                  onPressed: () {}, 
                  child: RichText(
                    textScaleFactor: 1.0,
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'By continuing, I confirm that I have read and accepted ',
                      style: TextStyle(
                        color: lightGrayColor,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Syarpa’s of Terms of Use', style: TextStyle(fontWeight: FontWeight.w400, color: appPrimaryColor)),
                      ],
                    ),
                  ),
                ),
              ]
            ),
          ),
        )
      ),
    );
  }
}