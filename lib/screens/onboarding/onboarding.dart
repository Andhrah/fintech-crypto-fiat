import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:syarpa/screens/auth/login.dart';
import 'package:syarpa/screens/auth/signup.dart';
import 'package:syarpa/utils/colors.dart';

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
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(active ? 5 : 5),
        color: active ? appPrimaryColor :  lightGrayColor.withOpacity(.3)
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
      'image': 'assets/images/syarpa_onboarding1.png',
      'pageText': [
        'Choose Safe️',
        'We make sure your money travels safely from the \nmoment you hit send',
      ],
    },
    {
      'image': 'assets/images/syarpa_onboarding2.png',
      'pageText':  [
        'Swift',
        'Shopping? Paying bills? Sending money to family? \nGet stuff done in minutes',
      ],
    },
    {
      'image': 'assets/images/syarpa_onboarding3.png',
      'pageText':  [
        'Simple',
        'With only a few clicks on your device, you can send \nmoney across the world',
      ]
    },
    {
      'image': 'assets/images/syarpa_onboarding4.png',
      'pageText':  [
        'Sync',
        'Connect your existing crypto wallet to your Syarpa \nwallet for fund transfer',
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
          // const SizedBox(height: 10.0),
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
                        height: MediaQuery.of(context).size.height / 1.4,
                        width: MediaQuery.of(context).size.width / 2.4,
                        alignment: Alignment.bottomCenter,
                        child: Image(
                          image: AssetImage(screenState['image']),
                          fit: BoxFit.fill,
                        ),
                      
                      );
                    }).toList(),
                  ),
                  key: const Key('image-container')
                ),
              ],
            ),
          ),

          Expanded(
           flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 70.0),
                      
                      SizedBox(
                        height: 50.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 100),
                            opacity: _widget_opacity,
                            curve: _animation_curve,
                            child: Text(
                              screenStates[currentScreenIndex]['pageText'][0],
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.0,
                                color: grayColor,
                              ),
                              textAlign: TextAlign.center,
                            )
                          )
                        )
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width,
                        // color: appPrimaryColor,
                        child: SizedBox(
                          height: 40.0,
                          width: 300.0,
                          child: Center(
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
                                      color: lightGrayColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          )
                        )
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 70, bottom: 70.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IndicatorCircle(currentScreen == 1),
                            IndicatorCircle(currentScreen == 2),
                            IndicatorCircle(currentScreen == 3),
                            IndicatorCircle(currentScreen == 4)
                          ],
                        ),
                      ),
                      Button(
                        text: 'Create account',
                        color: appPrimaryColor,
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
                  )
                ),
              ],
            )
          ),
        ]
      ),
    );
  }
}