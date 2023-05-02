import 'package:flutter/material.dart';
import 'package:syarpa/screens/fund/add_fund/payment_method.dart';
import 'package:syarpa/utils/colors.dart';
import 'package:flutter/services.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/utils/constant.dart';
import 'package:syarpa/widgets/button.dart';
import 'package:syarpa/widgets/input_field.dart';

class AddFundWalletScreen extends StatefulWidget {
  static const String id = 'addFundWallet';

  const AddFundWalletScreen({Key? key}) : super(key: key);

  @override
  _AddFundWalletScreenState createState() => _AddFundWalletScreenState();
}

class _AddFundWalletScreenState extends State<AddFundWalletScreen> {
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: whiteColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "How much do you want \nto add?",
                        style: TextStyle(color: whiteColor, fontSize: 18.0),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24.0),
                    ]
                  ),
                ),

                const SizedBox(height: 36),
              
                SizedBox(
                  // color: Colors.pink,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Minimum amount is 2,280.00 GBP',
                            style: TextStyle(
                              color: lightGrayColor, 
                              fontSize: 12.5
                            ),
                          ),
                          Text(
                            'You send',
                            style: TextStyle(color: lightGrayColor, fontSize: 13.0),
                          ),
                        ],
                      ),

                      kSizeBox10,

                      InputField(
                        borderColor: blueGrayColor,
                        obscureText: false,
                        hintText: null,
                        initialValue: '0.00',
                        textColor: appPrimaryColor,
                        textAlign: TextAlign.end,
                        prefixIcon: InkWell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                            decoration: const BoxDecoration(
                              color: appPrimaryColor,
                              borderRadius:
                                BorderRadius.horizontal(left: Radius.circular(8.0)
                              )
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/uk_flag.png',
                                  width: 23.0,
                                ),
                                const SizedBox(width: 14.0),
                                const Text(
                                  'GBP',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                const Icon(
                                  Remix.arrow_down_s_line,
                                  color: lightBlueColor,
                                ),
                              ],
                            ),
                          ),
                          onTap: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                            contentPadding: const EdgeInsets.all(16.0),
                            content: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/ng_flag.png',
                                          width: 25.0,
                                        ),
                                        const SizedBox(width: 16),
                                        const Text(
                                          'NGN',
                                          style: TextStyle(
                                            color: appPrimaryColor, 
                                            fontSize: 16.0
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 4.0),
                                  const Divider(
                                    color: lightGrayColor,
                                    height: 2.0,
                                  ),
                                  const SizedBox(height: 4.0),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/uk_flag.png',
                                          width: 25.0,
                                        ),
                                        const SizedBox(width: 16),
                                        const Text(
                                          'GBP',
                                          style: TextStyle(
                                            color: appPrimaryColor, 
                                            fontSize: 16.0
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ),
                          ),
                        ),
                      ),

                      kSizeBox,kSizeBox,

                      Button(
                        text: 'Confirm',
                        icon: const Icon(Remix.arrow_right_line), 
                        onPress: (){
                          Navigator.of(context).pushNamed(
                            AddFundPaymentMethodScreen.id,
                          );
                        },
                        color: appPrimaryColor,
                        width: MediaQuery.of(context).size.width,
                        textColor: whiteColor,
                        isLoading: false
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
  // Column _cashTab(BuildContext context) {
  //   return Column(
  //     children: [
  //       Container(
  //         width: double.maxFinite,
  //         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
  //         decoration: BoxDecoration(
  //             color: lightLilacColor, borderRadius: BorderRadius.circular(8.0)),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             const Text(
  //               'Delivery method',
  //               style: TextStyle(color: lightGrayColor),
  //             ),
  //             const SizedBox(height: 4.0),
  //             const Text(
  //               'Bank transfer',
  //               style: const TextStyle(color: appPrimaryColor),
  //             ),
  //           ],
  //         ),
  //       ),
  //       const SizedBox(height: 36),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           const Text(
  //             'Minimum amount is 2,280.00 GBP',
  //             style: const TextStyle(color: lightGrayColor, fontSize: 12.5),
  //           ),
  //           const Text(
  //             'You send',
  //             style: TextStyle(color: lightGrayColor, fontSize: 13.0),
  //           ),
  //         ],
  //       ),
  //       const SizedBox(height: 8),
  //       InputField(
  //         borderColor: blueGrayColor,
  //         obscureText: false,
  //         hintText: null,
  //         initialValue: '0.00',
  //         textColor: appPrimaryColor,
  //         textAlign: TextAlign.end,
  //         prefixIcon: InkWell(
  //           child: Container(
  //             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
  //             decoration: const BoxDecoration(
  //                 color: appPrimaryColor,
  //                 borderRadius:
  //                     BorderRadius.horizontal(left: Radius.circular(8.0))),
  //             child: Row(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 Image.asset(
  //                   'assets/images/uk_flag.png',
  //                   width: 23.0,
  //                 ),
  //                 const SizedBox(width: 14.0),
  //                 const Text(
  //                   'GBP',
  //                   style: TextStyle(
  //                       fontSize: 15.0,
  //                       color: whiteColor,
  //                       fontWeight: FontWeight.bold),
  //                 ),
  //                 const SizedBox(width: 8.0),
  //                 const Icon(
  //                   Remix.arrow_down_s_line,
  //                   color: lightBlueColor,
  //                 ),
  //               ],
  //             ),
  //           ),
  //           onTap: () => showDialog<String>(
  //             context: context,
  //             builder: (BuildContext context) => AlertDialog(
  //                 // title: const Text('AlertDialog Title'),
  //                 contentPadding: const EdgeInsets.all(16.0),
  //                 content: Container(
  //                   width: MediaQuery.of(context).size.width,
  //                   child: Column(
  //                     mainAxisSize: MainAxisSize.min,
  //                     children: [
  //                       TextButton(
  //                         onPressed: () => Navigator.pop(context),
  //                         child: Row(
  //                           children: [
  //                             Image.asset(
  //                               'assets/images/ng_flag.png',
  //                               width: 25.0,
  //                             ),
  //                             const SizedBox(width: 16),
  //                             const Text(
  //                               'NGN',
  //                               style: const TextStyle(
  //                                   color: appPrimaryColor, fontSize: 16.0),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                       const SizedBox(height: 4.0),
  //                       const Divider(
  //                         color: lightGrayColor,
  //                         height: 2.0,
  //                       ),
  //                       const SizedBox(height: 4.0),
  //                       TextButton(
  //                         onPressed: () => Navigator.pop(context),
  //                         child: Row(
  //                           children: [
  //                             Image.asset(
  //                               'assets/images/uk_flag.png',
  //                               width: 25.0,
  //                             ),
  //                             const SizedBox(width: 16),
  //                             const Text(
  //                               'GBP',
  //                               style: const TextStyle(
  //                                   color: appPrimaryColor, fontSize: 16.0),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )),
  //           ),
  //         ),
  //       ),
  //       const SizedBox(height: 24),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         children: [
  //           const Text(
  //             'They receive',
  //             style: const TextStyle(color: lightGrayColor, fontSize: 13.0),
  //           ),
  //         ],
  //       ),
  //       const SizedBox(height: 8),
  //       InputField(
  //         borderColor: blueGrayColor,
  //         obscureText: false,
  //         hintText: null,
  //         initialValue: '0.00',
  //         textColor: appPrimaryColor,
  //         textAlign: TextAlign.end,
  //         prefixIcon: InkWell(
  //           child: Container(
  //             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
  //             decoration: const BoxDecoration(
  //                 color: appPrimaryColor,
  //                 borderRadius:
  //                     BorderRadius.horizontal(left: const Radius.circular(8.0))),
  //             child: Row(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 Image.asset(
  //                   'assets/images/ng_flag.png',
  //                   width: 23.0,
  //                 ),
  //                 const SizedBox(width: 14.0),
  //                 const Text(
  //                   'NGN',
  //                   style: const TextStyle(
  //                       fontSize: 15.0,
  //                       color: whiteColor,
  //                       fontWeight: FontWeight.bold),
  //                 ),
  //                 const SizedBox(width: 8.0),
  //                 const Icon(
  //                   Remix.arrow_down_s_line,
  //                   color: lightBlueColor,
  //                 ),
  //               ],
  //             ),
  //           ),
  //           onTap: () => showDialog<String>(
  //             context: context,
  //             builder: (BuildContext context) => AlertDialog(
  //                 // title: const Text('AlertDialog Title'),
  //                 contentPadding: const EdgeInsets.all(16.0),
  //                 content: Container(
  //                   width: MediaQuery.of(context).size.width,
  //                   child: Column(
  //                     mainAxisSize: MainAxisSize.min,
  //                     children: [
  //                       TextButton(
  //                         onPressed: () => Navigator.pop(context),
  //                         child: Row(
  //                           children: [
  //                             Image.asset(
  //                               'assets/images/ng_flag.png',
  //                               width: 25.0,
  //                             ),
  //                             const SizedBox(width: 16),
  //                             const Text(
  //                               'NGN',
  //                               style: TextStyle(
  //                                   color: appPrimaryColor, fontSize: 16.0),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                       const SizedBox(height: 4.0),
  //                       const Divider(
  //                         color: lightGrayColor,
  //                         height: 2.0,
  //                       ),
  //                       const SizedBox(height: 4.0),
  //                       TextButton(
  //                         onPressed: () => Navigator.pop(context),
  //                         child: Row(
  //                           children: [
  //                             Image.asset(
  //                               'assets/images/uk_flag.png',
  //                               width: 25.0,
  //                             ),
  //                             const SizedBox(width: 16),
  //                             const Text(
  //                               'GBP',
  //                               style: const TextStyle(
  //                                   color: appPrimaryColor, fontSize: 16.0),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )),
  //           ),
  //         ),
  //       ),
  //       const SizedBox(height: 16),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Image.asset(
  //             "assets/images/timer.png",
  //             height: 20.0,
  //             width: 20.0,
  //           ),
  //           const SizedBox(width: 8),
  //           const Text(
  //             'Should arrive by ',
  //             style: TextStyle(color: lightGrayColor, fontSize: 12.5),
  //           ),
  //           const Text(
  //             'January 22nd',
  //             style: TextStyle(color: appPrimaryColor, fontSize: 13.0),
  //           ),
  //         ],
  //       ),
  //       const SizedBox(height: 16),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           const Text(
  //             'Rate',
  //             style: const TextStyle(color: lightGrayColor, fontSize: 12.5),
  //           ),
  //           const Text(
  //             'NGN 1 = GBP 0.0018',
  //             style: const TextStyle(color: lightGrayColor, fontSize: 13.0),
  //           ),
  //         ],
  //       ),
  //       const SizedBox(height: 48),
        
  //     ],
  //   );
  // }
}