import 'package:flutter/material.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
    required this.bgImgUrl,
    required this.walletTypeIcon,
    required this.walletTypeText,
    required this.walletAmountText,
    this.onPress
  }) : super(key: key);

  final String bgImgUrl;
  final String walletTypeIcon;
  final String walletTypeText;
  final String walletAmountText;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.2,
      height: MediaQuery.of(context).size.height / 6.4,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(bgImgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                walletTypeIcon,
                width: 30,
                height: 30,
              ),

              const SizedBox(width: 10.0),

              Text(
                walletTypeText,
                style: const TextStyle(
                  color: whiteColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400
                ),
              )
            ],
          ),

          kSizeBox,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                walletAmountText,
                style: const TextStyle(
                  color: whiteColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400
                ),
              ),

              InkWell(
                onTap: onPress,
                child: Image.asset(
                  'assets/images/add_wallet.png',
                  width: 30,
                  height: 30,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
