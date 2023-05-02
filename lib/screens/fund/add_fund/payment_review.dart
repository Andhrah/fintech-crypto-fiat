import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/fund/add_fund/payment_processing.dart';
// import 'package:syarpa/screens/send_money/payment_confirmation.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/button.dart';
import 'package:syarpa/widgets/input_field.dart';

class AddFundPaymentReviewScreen extends StatefulWidget {
  static const String id = 'addFundPaymentReview';

  const AddFundPaymentReviewScreen({Key? key}) : super(key: key);

  @override
  _AddFundPaymentReviewScreenState createState() => _AddFundPaymentReviewScreenState();
}

class _AddFundPaymentReviewScreenState extends State<AddFundPaymentReviewScreen> {

  void showVerifyModal() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0)
          ),
        ),
        contentPadding: const EdgeInsets.all(24.0),
        children: <Widget>[
          const Text(
            'Security Verification',
            style: TextStyle(
              color: appPrimaryColor,
              fontSize: 17.0,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Enter the verification code generated by your Google authenticator application',
            style: TextStyle(
              color: lightGrayColor,
              fontSize: 13.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter code",
              contentPadding: EdgeInsets.all(8.0),
            ),
          ),
          const SizedBox(height: 24.0),
          Button(
            text: 'Verify',
            icon: Container(),
            onPress: () {
              Navigator.pushNamed(context, AddFundPaymentProcessed.id);
            },
            color: appPrimaryColor,
            width: MediaQuery.of(context).size.width,
            textColor: whiteColor,
            isLoading: false,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Setup authenticator',
            style: TextStyle(
              color: lightBlueColor,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: appPrimaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: appPrimaryColor,
                              size: 18.0,
                            ),
                          ),
                          const Text(
                            "Payment Review",
                            style: TextStyle(
                              color: appPrimaryColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: 24.0),
                SizedBox(
                  // color: Colors.pink,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      const Text(
                        "Bank Transfer",
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400
                        ),
                      ),

                      const SizedBox(height: 24),
                      const Text(
                        "Transfer details",
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),

                      kSizeBox10,

                      Column(
                        children: [
                          const Text(
                            "09  :  19",
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "   Minute",
                                style: const TextStyle(
                                  color: lightGrayColor,
                                  fontSize: 9.0,
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              const Text(
                                "    Seconds",
                                style: const TextStyle(
                                  color: lightGrayColor,
                                  fontSize: 9.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 48),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Payee name",
                            style: TextStyle(
                              color: lightGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                            ),
                          ),
                          Text(
                            "Syarpa",
                            style: TextStyle(
                              color: lightGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Amount to send",
                            style: TextStyle(
                              color: lightGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                            ),
                          ),
                          Text(
                            "420.00 GBP",
                            style: TextStyle(color: appPrimaryColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Account Number",
                            style: TextStyle(color: lightGrayColor),
                          ),
                          Text(
                            "2109582383",
                            style: TextStyle(
                              color: lightGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Bank Name",
                            style: TextStyle(color: lightGrayColor),
                          ),
                          Text(
                            "Barclays",
                            style: TextStyle(
                              color: lightGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Sort code",
                            style: TextStyle(
                              color: lightGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                            ),
                          ),
                          Text(
                            "400101",
                            style: TextStyle(color: lightGrayColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Reference ID",
                            style: TextStyle(
                              color: cyanColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                            ),
                          ),
                          Text(
                            "P18303115",
                            style: TextStyle(
                              color: lightGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                            ),
                          ),
                        ],
                      ),
                      kSizeBox, kSizeBox10,

                      const Text(
                        "NB: Ensure to include the\nReference ID in making your payment",
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      const SizedBox(height: 36),
                      Button(
                        text: 'Pay',
                        icon: Container(),
                        onPress: () => showVerifyModal(),
                        color: appPrimaryColor,
                        width: MediaQuery.of(context).size.width,
                        textColor: whiteColor,
                        isLoading: false
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}