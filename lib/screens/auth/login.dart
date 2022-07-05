import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/auth/forgot_password.dart';
import 'package:syarpa/screens/auth/signup.dart';
import 'package:syarpa/screens/auth/two_FA.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/button.dart';
import 'package:syarpa/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';

  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isChecked = false;

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
                  'Welcome back!',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: appPrimaryColor),
                ),

                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      SignupScreen.id, (route) => false
                    );
                  }, 
                  child: RichText(
                    textScaleFactor: 0.9,
                    text: const TextSpan(
                      text: 'Not using syarpa yet? ',
                      style: TextStyle(
                        color: lightGrayColor,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Sign Up', style: TextStyle(fontWeight: FontWeight.bold, color: appPrimaryColor)),
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
                    child: Image.asset(
                      'assets/images/eye.png',
                    ),
                  )
                ),

                const SizedBox(height: 5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          // fillColor: Colors.blue![400],
                          activeColor: lightBlueColor,
                          value: isChecked,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          side: const BorderSide(color: blueGrayColor),
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),

                        const Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: lightGrayColor,
                          ),
                        ),
                      ],
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            ForgotPasswordScreen.id,
                          );
                        }, 
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: lightBlueColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                
                

                kSizeBox,
                kSizeBox,

                Button(
                  text: 'Continue', 
                  icon: Container(),
                  onPress: () {
                    Navigator.of(context).pushNamed(
                      TwoFAScreen.id,
                    );
                  }, 
                  color: appPrimaryColor, 
                  width: MediaQuery.of(context).size.width,
                  textColor: whiteColor,
                  isLoading: false
                ),

                const SizedBox(height: 8.0),
              ]
            ),
          ),
        )
      ),
    );
  }
}