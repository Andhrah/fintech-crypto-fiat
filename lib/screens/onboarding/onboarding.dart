import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/auth/login.dart';
import 'package:syarpa/screens/auth/signup.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:syarpa/utils/constant.dart';

import 'package:syarpa/widgets/button.dart';

class OnboardingScreen extends StatefulWidget {
  static String id = 'onboardingScreen';

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class IndicatorCircle extends StatelessWidget {
  final bool active;

  const IndicatorCircle(this.active, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(active ? 5 : 5),
        color: active ? secondaryColor :  neutralGray
      ),
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn
    );
  }
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  CarouselController buttonCarouselController = CarouselController();

  int currentScreen = 1;
  double _widget_opacity = 1;
  Curve _animation_curve = Curves.fastLinearToSlowEaseIn;

  List<Map> screenStates = [
    {
      'image': 'assets/images/onboarding_img.png',
      'pageText': [
        'Safe️',
        'We make sure your money travels safely from the moment you hit send',
      ],
    },
    {
      'image': 'assets/images/syarpa_onboarding2.png',
      'pageText':  [
        'Swift',
        'Shopping? Paying bills? Sending money to family? Get stuff done in minutes',
      ],
    },
    {
      'image': 'assets/images/syarpa_onboarding3.png',
      'pageText':  [
        'Simple',
        'With only a few clicks on your device, you can send money across the world',
      ]
    },
    {
      'image': 'assets/images/syarpa_onboarding4.png',
      'pageText':  [
        'Sync',
        'Connect your existing crypto wallet to your Syarpa wallet for fund transfer',
      ]
    }
  ];

  handleCarouselPageChange(int index, reason) {
    setState(() {
      currentScreen = index + 1;
    });
  }

  String reason = '';

  onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = changeReason.toString();
    });
  }

  @override
  Widget build(BuildContext context) {

    int currentScreenIndex = currentScreen - 1;

    return Scaffold(
      body: Column(
        children: [
          kSizeBox,kSizeBox,kSizeBox,
          Container(
            // width: 100,
            // alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            height: MediaQuery.of(context).size.height / 1.4,
            // width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage('assets/images/onboarding_img.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CarouselSlider(
                          carouselController: buttonCarouselController,
                          options: CarouselOptions(
                            aspectRatio: MediaQuery.of(context).size.aspectRatio,
                            viewportFraction: 1.2,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 5),
                            autoPlayAnimationDuration: const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            onPageChanged: handleCarouselPageChange,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: screenStates.map((screenState) {
                            return Container(
                              // margin: const EdgeInsets.only(top: 20.0),
                              // height: MediaQuery.of(context).size.height / 1.4,
                              // width: MediaQuery.of(context).size.width / 2.4,
                              // alignment: Alignment.bottomCenter,
                              // child: Image(
                              //   image: AssetImage(screenState['image']),
                              //   fit: BoxFit.fill,
                              // ),
                            
                            );
                          }).toList(),
                        ),
                        key: const Key('image-container')
                      ),
                    ],
                  ),
                ),

                Expanded(
                flex: 1,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 100.0),
                            
                            SizedBox(
                              // color: Colors.pink,
                              height: 45.0,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: AnimatedOpacity(
                                  duration: const Duration(milliseconds: 100),
                                  opacity: _widget_opacity,
                                  curve: _animation_curve,
                                  child: Text(
                                    screenStates[currentScreenIndex]['pageText'][0],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.0,
                                      color: whiteColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                )
                              )
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: const EdgeInsets.only(top: 15),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 12,
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 100),
                                opacity: _widget_opacity,
                                curve: _animation_curve,
                                child: Column(
                                  children: [
                                    Text(
                                      screenStates[currentScreenIndex]['pageText'][1],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                IndicatorCircle(currentScreen == 1),
                                IndicatorCircle(currentScreen == 2),
                                IndicatorCircle(currentScreen == 3),
                                IndicatorCircle(currentScreen == 4)
                              ],
                            ),
                          ],
                        )
                      ),
                    ],
                  )
                ),
              ]
            ),
          ),

          kSizeBox,

          Button(
            text: 'Create a free account',
            color: appPrimaryColor,
            icon: const Icon(Remix.arrow_right_line),
            textColor: const Color(0XFFFFFFFF),
            isLoading: false,
            width: MediaQuery.of(context).size.width / 1.2,
            onPress: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                SignupScreen.id, (route) => false
              );
            },
          ),

          const SizedBox(height: 20.0),

          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                LoginScreen.id, (route) => false
              );
            }, 
            child: const Text(
              'Login to account',
              style: TextStyle(
                color: appPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            )
          ),
        ],
      ),
    );
  }
}
