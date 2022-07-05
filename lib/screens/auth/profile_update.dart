import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/auth/otp.dart';
import 'package:syarpa/screens/auth/otp2.dart';

import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/basic_input_field.dart';
import 'package:syarpa/widgets/button.dart';
import 'package:syarpa/widgets/input_field.dart';

class ProfileUpdate extends StatefulWidget {
  static const String id = 'profileUpdate';

  const ProfileUpdate({Key? key}) : super(key: key);

  @override
  _ProfileUpdateState createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: ashColor,
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    height: 100.0,
                    width: 100.0,
                    child: Image.asset(
                      'assets/images/avatar.png',
                      width: 80,
                      height: 80,
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),

                kSizeBox,

                const Text(
                  'Your Personal Details',
                  textScaleFactor: 1.1,
                  style: TextStyle(
                    color: appPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                kSizeBox,
                kSizeBox,

                const InputField(
                  labelText: 'First Name', 
                  borderColor: blueGrayColor, 
                  obscureText: false,
                  hintText: 'Enter your first name'
                ),

                kSizeBox,const SizedBox(height: 10),

                const InputField(
                  labelText: 'Last Name', 
                  borderColor: blueGrayColor, 
                  obscureText: false,
                  hintText: 'Enter your last name'
                ),

                kSizeBox,const SizedBox(height: 10),

                const InputField(
                  labelText: 'Username', 
                  borderColor: blueGrayColor, 
                  obscureText: false,
                  hintText: 'Enter your username'
                ),

                kSizeBox,const SizedBox(height: 10),

                const Text(
                  'Date of birth',
                  textScaleFactor: 0.9,
                  style: TextStyle(
                    color: appPrimaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 10.0),

                Row(
                  children: [
                    Expanded(
                      child: BasicInputField(
                      // labelText: 'Country of residence',
                        borderColor: blueGrayColor, 
                        obscureText: false,
                        hintText: 'Day',
                        // enabled: false,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Remix.arrow_down_s_line,
                            color: appPrimaryColor,
                          ),
                          onPressed: () {}
                        ),
                      ),
                    ),

                    const SizedBox(width: 8.0),

                    Expanded(
                      child: BasicInputField(
                      // labelText: 'Country of residence',
                        borderColor: blueGrayColor, 
                        obscureText: false,
                        hintText: 'Month',
                        // enabled: false,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Remix.arrow_down_s_line,
                            color: appPrimaryColor,
                          ),
                          onPressed: () {}
                        ),
                      ),
                    ),

                    const SizedBox(width: 8.0),

                    Expanded(
                      child: BasicInputField(
                      // labelText: 'Country of residence',
                        borderColor: blueGrayColor, 
                        obscureText: false,
                        hintText: 'Year',
                        // enabled: false,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Remix.arrow_down_s_line,
                            color: appPrimaryColor,
                          ),
                          onPressed: () {}
                        ),
                      ),
                    ),
                  ],
                ),

                kSizeBox,const SizedBox(height: 10),

                const Text(
                  'Identification',
                  textScaleFactor: 0.9,
                  style: TextStyle(
                    color: appPrimaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 10.0),

                Row(
                  children: [
                    Expanded(
                      child: BasicInputField(
                      // labelText: 'Country of residence',
                        borderColor: blueGrayColor, 
                        obscureText: false,
                        hintText: 'bvn',
                        // value: 'BVN',
                        // enabled: false,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Remix.arrow_down_s_line,
                            color: appPrimaryColor,
                          ),
                          onPressed: () {}
                        ),
                      ),
                    ),

                    const SizedBox(width: 8.0),

                    SizedBox(
                      width: MediaQuery.of(context).size.width /1.6,
                      child: const Expanded(
                        child: BasicInputField(
                        // labelText: 'Country of residence',
                          borderColor: blueGrayColor, 
                          obscureText: false,
                          hintText: 'Verification Number',
                        ),
                      ),
                    ),
                  ],
                ),

                kSizeBox,const SizedBox(height: 10),

                const Text(
                  'Phone Number',
                  textScaleFactor: 0.9,
                  style: TextStyle(
                    color: appPrimaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 10.0),

                Row(
                  children: [
                    Expanded(
                      child: BasicInputField(
                      // labelText: 'Country of residence',
                        borderColor: blueGrayColor, 
                        obscureText: false,
                        hintText: '+234',
                        // value: 'BVN',
                        // enabled: false,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Remix.arrow_down_s_line,
                            color: appPrimaryColor,
                          ),
                          onPressed: () {}
                        ),
                      ),
                    ),

                    const SizedBox(width: 8.0),

                    SizedBox(
                      width: MediaQuery.of(context).size.width /1.7,
                      child: const Expanded(
                        child: BasicInputField(
                        // labelText: 'Country of residence',
                          borderColor: blueGrayColor, 
                          obscureText: false,
                          hintText: 'Phone Number',
                        ),
                      ),
                    ),
                  ],
                ),

                kSizeBox,

                const Text(
                  'Verify your number, an OTP will be sent to you',
                  textScaleFactor: 0.9,
                  style: TextStyle(
                    color: lightGrayColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                kSizeBox,

                Button(
                  text: 'Next',
                  icon: Container(),
                  onPress: () {
                    Navigator.of(context).pushNamed(
                      OtpScreen2.id,
                    );
                  }, 
                  color: appPrimaryColor, 
                  width: MediaQuery.of(context).size.width,
                  textColor: whiteColor,
                  isLoading: false
                ),

                kSizeBox,
                
              ],
            ),
          ),
        ),
      )
    );
  }
}