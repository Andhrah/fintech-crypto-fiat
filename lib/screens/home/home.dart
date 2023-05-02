import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/fund/add_fund/add_fund_wallet.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/button.dart';

class HomeScreen extends StatefulWidget {
  
  static const String id = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

                Container(
                  // color: Colors.pink,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/fund_img.png',
                        width: 76,
                        height: 76,
                      ),

                      kSizeBox10,

                      const Text(
                        "You haven't sent or received\nany funds yet",
                        style: TextStyle(
                          color: lightGrayColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0
                        ),
                        textAlign: TextAlign.center,
                      ),

                      kSizeBox,kSizeBox10,

                      Button(
                        text: 'Add your first fund',
                        icon: const Icon(Remix.arrow_right_line),
                        onPress: () {
                          // Navigator.of(context).pushNamed(
                          //   Send.id,
                          // );
                        }, 
                        color: ashCyanColor, 
                        width: MediaQuery.of(context).size.width,
                        textColor: whiteColor,
                        isLoading: false
                      ),
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