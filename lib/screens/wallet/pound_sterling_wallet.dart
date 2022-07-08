import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';

class GBPWalletScreen extends StatefulWidget {
  
  static const String id = 'gbpWallet';

  const GBPWalletScreen({Key? key}) : super(key: key);

  @override
  _GBPWalletScreenState createState() => _GBPWalletScreenState();
}

class _GBPWalletScreenState extends State<GBPWalletScreen> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Color(0xFF008E16),
    //     statusBarIconBrightness: Brightness.light,
    //   ),
    // );
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: appPrimaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                height: MediaQuery.of(context).size.height / 3.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {Navigator.pop(context);}, 
                          child: const Icon(
                            Remix.arrow_left_line,
                            color: whiteColor,
                          ),
                        ),

                        IconButton(
                          onPressed: () {Navigator.pop(context);}, 
                          icon: Image.asset(
                            "assets/images/notification_icon.png",
                            height: 20.0,
                            width: 20.0,
                          )
                        )
                      ],
                    ),

                    // kSizeBox10,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Wallet balance",
                                  style: TextStyle(
                                    color: whiteColor,
                                  ),
                                ),

                                IconButton(
                                  onPressed: (){}, 
                                  icon: Image.asset(
                                    "assets/images/eye_icon.png",
                                    height: 10.0,
                                    width: 10.0,
                                  )
                                )
                              ],
                            ),

                            const Text(
                              "£ 420.00",
                              style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 30.0
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    kSizeBox10,

                    const Text(
                      "\$6,909.98",
                      style: TextStyle(
                        color: lightLilacColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0
                      ),
                    ),

                    kSizeBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              height: 31.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/send_img.png',
                                    width: 14.2,
                                    height: 16.2,
                                    fit: BoxFit.fill,
                                  ),

                                  const SizedBox(width: 10.0),

                                  const Text(
                                    "Send Money",
                                    style: TextStyle(
                                      color: appPrimaryColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ),
                        ),

                        InkWell(
                          onTap: (){},
                          child: Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 4,
                              height: 31.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Remix.add_line,
                                    color: lightBlueColor,
                                  ),

                                  const SizedBox(width: 10.0),

                                  const Text(
                                    "Add",
                                    style: TextStyle(
                                      color: appPrimaryColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ),
                        ),

                        InkWell(
                          onTap: (){},
                          child: Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 4,
                              height: 31.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 
                                  SvgPicture.asset("assets/images/withdraw_icon.svg"),

                                  const SizedBox(width: 10.0),

                                  const Text(
                                    "Withdraw",
                                    style: TextStyle(
                                      color: appPrimaryColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ),
                        )
                      ],
                    )
                  ]
                ),
              ),

               kSizeBox,

              Container(
                // color: Colors.pink,
                // alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Transcation",
                      style: TextStyle(
                        color: lightBlueColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0
                      ),
                    ),

                    kSizeBox10,

                    const Divider(
                      color: ashColor,
                      height: 2.0,
                      thickness: 0.7,
                    ),

                    kSizeBox,

                    const Text(
                      "10 FEB 2022, THURSDAY",
                      style: TextStyle(
                        color: ashColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0
                      ),
                    ),

                    kSizeBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/withdrawal_icon.png',
                              width: 28,
                              height: 28,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Shola Peters",
                                  style: TextStyle(
                                    color: appPrimaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.0
                                  ),
                                ),

                                Text(
                                  "Withdrawal fee",
                                  style: TextStyle(
                                    color: ashColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "-GBP 5,000",
                              style: TextStyle(
                                color: secondaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0
                              ),
                            ),

                            const Text(
                              "-USD 5,000",
                              style: TextStyle(
                                color: ashColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    kSizeBox10,

                    const Divider(
                      color: ashColor,
                      height: 2.0,
                      thickness: 0.7,
                    ),

                    kSizeBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/card_fee_icon.png',
                              width: 28,
                              height: 28,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Shola Peters",
                                  style: TextStyle(
                                    color: appPrimaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.0
                                  ),
                                ),

                                Text(
                                  "Card fee",
                                  style: TextStyle(
                                    color: ashColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "GBP 5,000",
                              style: TextStyle(
                                color: lightBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0
                              ),
                            ),

                            const Text(
                              "-USD 5,000",
                              style: TextStyle(
                                color: ashColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    kSizeBox10,

                    const Divider(
                      color: ashColor,
                      height: 2.0,
                      thickness: 0.7,
                    ),

                    kSizeBox,

                    const Text(
                      "10 FEB 2022, THURSDAY",
                      style: TextStyle(
                        color: ashColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0
                      ),
                    ),

                    kSizeBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/withdrawal_icon.png',
                              width: 28,
                              height: 28,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Shola Peters",
                                  style: TextStyle(
                                    color: appPrimaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.0
                                  ),
                                ),

                                Text(
                                  "Withdrawal fee",
                                  style: TextStyle(
                                    color: ashColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "-GBP 5,000",
                              style: TextStyle(
                                color: secondaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0
                              ),
                            ),

                            const Text(
                              "-USD 5,000",
                              style: TextStyle(
                                color: ashColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    kSizeBox10,

                    const Divider(
                      color: ashColor,
                      height: 2.0,
                      thickness: 0.7,
                    ),

                    kSizeBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/card_fee_icon.png',
                              width: 28,
                              height: 28,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Shola Peters",
                                  style: TextStyle(
                                    color: appPrimaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.0
                                  ),
                                ),

                                Text(
                                  "Card fee",
                                  style: TextStyle(
                                    color: ashColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "GBP 5,000",
                              style: TextStyle(
                                color: lightBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0
                              ),
                            ),

                            const Text(
                              "-USD 5,000",
                              style: TextStyle(
                                color: ashColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              )
            ],
          ),
        )
      ),
    );
  }
}
