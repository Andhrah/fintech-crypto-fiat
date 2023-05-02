import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/fund/add_fund/add_fund_wallet.dart';
import 'package:syarpa/screens/wallet/dollar_wallet.dart';
import 'package:syarpa/screens/wallet/naira_wallet.dart';
import 'package:syarpa/screens/wallet/pound_sterling_wallet.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/wallet_card.dart';

class WalletScreen extends StatefulWidget {
  
  static const String id = 'wallet';

  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
                  color: appPrimaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height / 3.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Good morning Andra",
                            style: TextStyle(
                              color: whiteColor,
                            ),
                          ),

                          IconButton(
                            onPressed: (){}, 
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
                                    "Total balance",
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
                                "₦ 0.00",
                                style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30.0
                                ),
                              ),
                            ],
                          ),

                          Image.asset(
                            'assets/images/profile_img.png',
                            width: 62,
                            height: 62,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),

                      kSizeBox10,

                      const Text(
                        "\$0.00",
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
                            onTap: (){
                              Navigator.of(context).pushNamed(
                                AddFundWalletScreen.id,
                              );
                            },
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

                 kSizeBox,  kSizeBox,

                Container(
                  // color: Colors.pink,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WalletCard(
                            bgImgUrl: "assets/images/naira_wallet.png", 
                            walletTypeIcon: "assets/images/naira_wallet_icon.png", 
                            walletTypeText: "Naira wallet",
                            walletAmountText: "₦0.00",
                            onPress: (){
                              Navigator.of(context).pushNamed(
                                NairaWalletScreen.id,
                              );
                            },
                          ),

                          WalletCard(
                            bgImgUrl: "assets/images/gbp_wallet.png", 
                            walletTypeIcon: "assets/images/gbp_wallet_icon.png", 
                            walletTypeText: "GBP wallet", 
                            walletAmountText: "£0.00",
                            onPress: (){
                              Navigator.of(context).pushNamed(
                                GBPWalletScreen.id,
                              );
                            },
                          ),
                        ],
                      ),
                      kSizeBox10,

                      Align(
                        alignment: Alignment.centerLeft,
                        child: WalletCard(
                          bgImgUrl: "assets/images/usd_wallet.png", 
                          walletTypeIcon: "assets/images/usd_wallet_icon.png", 
                          walletTypeText: "USD wallet", 
                          walletAmountText: "\$0.00",
                          onPress: (){
                            Navigator.of(context).pushNamed(
                              DollarWalletScreen.id,
                            );
                          },
                        ),
                      ),

                      kSizeBox10,kSizeBox10,

                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 15.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 6.8,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/ads.png"),
                            // fit: BoxFit.cover,
                          ),
                        ),
                        child: TextButton(
                          onPressed: (){}, 
                          child: RichText(
                            textScaleFactor: 1.0,
                            text: const TextSpan(
                              text: "Get the first two\ntransfers\n",
                              style: TextStyle(
                                height: 1.5,
                                color: whiteColor,
                                fontWeight: FontWeight.w700,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "for Free!\n", 
                                  style: TextStyle(
                                    height: 1.5,
                                    fontWeight: FontWeight.bold, 
                                    color: Color(0xFF23C1A9)
                                  )
                                ),

                                TextSpan(
                                  text: "Start now", 
                                  style: TextStyle(
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w400, 
                                    color: whiteColor,
                                  )
                                ),
                              ],
                            ),
                          ),
                        )
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}