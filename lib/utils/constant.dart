import 'package:flutter/material.dart';
import 'package:syarpa/utils/colors.dart';

const TextStyle kTextHeavyWeight = TextStyle(fontWeight: FontWeight.w600);
const String kImageUrl = 'assets/images';
const TextStyle kAuthTextBig = TextStyle(color: kTextColor, fontSize: 25.0);
const TextStyle kAuthTextSmall = TextStyle(color: kTextColor, fontSize: 13.0, fontWeight: FontWeight.w500);
const TextStyle kGreyTextSmall = TextStyle(color: kShadowColor, fontSize: 13.0, fontWeight: FontWeight.w500);
const TextStyle kBlueTextSmall = TextStyle(color: teal, fontSize: 13.0, fontWeight: FontWeight.w500);
const TextStyle kHeaderBig = TextStyle(color: appPrimaryColor, fontSize: 17.0, fontWeight: FontWeight.bold, fontFamily: 'Raleway');
const SizedBox kSizeBox = SizedBox(height: 20.0);
const SizedBox kSizeBox10 = SizedBox(height: 10.0);
const BorderRadius kAppBorderRadius = BorderRadius.all(Radius.circular(6.0));
const BorderRadius kAppCircle = BorderRadius.all(Radius.circular(50.0));
const BorderRadius kAppBorderRadiusMini =
BorderRadius.all(Radius.circular(5.0));
const BorderRadius kAppBorderRadiusSemi =
BorderRadius.all(Radius.circular(8.0));
const BorderRadius kAppInnerBorderRadius =
BorderRadius.all(Radius.circular(25.0));
const BorderRadius kAppInnerBorderPartialRadius = BorderRadius.only(
  topRight: Radius.circular(10.0),
  bottomRight: Radius.circular(10.0),
);
const Widget kAppDivider = Divider(color: Color(0XFFD8D8D8), thickness: 1);