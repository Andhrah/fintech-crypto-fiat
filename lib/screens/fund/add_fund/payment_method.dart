import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syarpa/screens/fund/add_fund/payment_review.dart';
// import 'package:syarpa/screens/send_money/payment_review.dart';
import 'package:syarpa/utils/colors.dart';

class AddFundPaymentMethodScreen extends StatefulWidget {
  static const String id = 'addFundPaymentMethod';

  const AddFundPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  _AddFundPaymentMethodScreenState createState() => _AddFundPaymentMethodScreenState();
}

class _AddFundPaymentMethodScreenState extends State<AddFundPaymentMethodScreen> {
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
          child: Column(
            children: [
              Column(
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
                        "Payment Method",
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
              const SizedBox(height: 24.0),
              SizedBox(
                // color: Colors.pink,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AddFundPaymentReviewScreen.id);
                      },
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/peer_to_peer.png',
                                width: 40.0,
                              ),
                              const SizedBox(width: 16.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Peer to Peer',
                                    style: TextStyle(
                                      color: appPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 6.0),
                                  const Text(
                                    'Transaction Fee (2.2%)',
                                    style: TextStyle(
                                      color: cyanColor, 
                                      fontSize: 13.0
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.chevron_right,
                                color: appPrimaryColor,
                                size: 26.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Image.asset(
                      'assets/images/faded_card_payment.png',
                      width: MediaQuery.of(context).size.width,
                      height: 120.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}