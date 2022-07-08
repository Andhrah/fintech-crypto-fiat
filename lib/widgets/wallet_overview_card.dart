import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
    required this.bgImgUrl,
    required this.bgcolor,
    required this.walletTypeIcon,
    required this.walletTypeText,
    required this.walletAmountText,
    this.onPress
  }) : super(key: key);

  final String bgImgUrl;
  final Color bgcolor;
  final String walletTypeIcon;
  final String walletTypeText;
  final String walletAmountText;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
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
    );
  }
}
