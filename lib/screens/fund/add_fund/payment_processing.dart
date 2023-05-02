import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/tab.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/widgets/button.dart';

class AddFundPaymentProcessed extends StatefulWidget {
  static const String id = 'addFundPaymentProcessed';

  const AddFundPaymentProcessed({Key? key}) : super(key: key);

  @override
  _AddFundPaymentProcessedState createState() => _AddFundPaymentProcessedState();
}

class _AddFundPaymentProcessedState extends State<AddFundPaymentProcessed> {
  bool isChecked = false;

  void showVerifyModal() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        contentPadding: const EdgeInsets.all(24.0),
        children: <Widget>[
          const Text(
            'Have you transferred the funds and provided the correct reference?',
            style: TextStyle(
              color: appPrimaryColor,
              fontSize: 17.0,
              fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              StatefulBuilder(builder: (context, _setState) {
                return Checkbox(
                  checkColor: Colors.white,
                  activeColor: lightBlueColor,
                  value: isChecked,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  side: const BorderSide(color: blueGrayColor),
                  onChanged: (bool? value) {
                    _setState(() {
                      isChecked = value!;
                    });
                  },
                );
              }),
              const Text(
                "Remember me",
                style: TextStyle(
                  fontSize: 16.0,
                  color: lightGrayColor,
                ),
              ),
            ],
          ),
          const Text(
            'I confirm I have transferred thefunds with the correct reference',
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
            onPress: () => showVerifyModal(),
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
              const SizedBox(height: 24.0),
              SizedBox(
                // color: Colors.pink,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24.0),
                    const Text(
                      "Transaction is being \nprocessed",
                      style: TextStyle(
                        color: appPrimaryColor,
                        fontSize: 16.0,
                        height: 1.6,
                        fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 100.0),
                    Image.asset(
                      "assets/images/pending@2x.png",
                      height: 40.0,
                    ),
                    const SizedBox(height: 70),
                    const Text(
                      "Your add fund request is being processed",
                      style: TextStyle(
                        color: lightGrayColor,
                        fontSize: 15.0,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 70),
                    const Text(
                      "GBP 500.00",
                      style: TextStyle(
                        color: appPrimaryColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                    const SizedBox(height: 48),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "into Syarpa GBP wallet",
                          style: TextStyle(color: lightGrayColor),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 80),

                    Container(
                      // alignment: Alignment.bottomRight,
                      // color: Colors.pink,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Button(
                        text: 'Done',
                        icon: Container(),
                        onPress: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            Tabs.id, (route) => false
                          );
                        },
                        color: appPrimaryColor,
                        width: MediaQuery.of(context).size.width,
                        textColor: whiteColor,
                        isLoading: false
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}