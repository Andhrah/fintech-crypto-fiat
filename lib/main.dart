import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syarpa/screens/auth/forgot_password.dart';
import 'package:syarpa/screens/auth/forgot_password_otp.dart';
import 'package:syarpa/screens/auth/login.dart';
import 'package:syarpa/screens/auth/otp.dart';
import 'package:syarpa/screens/auth/otp2.dart';
import 'package:syarpa/screens/auth/otp_verified.dart';
import 'package:syarpa/screens/auth/otp_verified2.dart';
import 'package:syarpa/screens/auth/password_success.dart';
import 'package:syarpa/screens/auth/profile_update.dart';
import 'package:syarpa/screens/auth/reset_password.dart';
import 'package:syarpa/screens/auth/signup.dart';
import 'package:syarpa/screens/auth/two_FA.dart';
import 'package:syarpa/screens/fund/add_fund/add_fund_wallet.dart';
import 'package:syarpa/screens/fund/add_fund/payment_method.dart';
import 'package:syarpa/screens/fund/add_fund/payment_processing.dart';
import 'package:syarpa/screens/fund/add_fund/payment_review.dart';
import 'package:syarpa/screens/onboarding/onboarding.dart';
import 'package:syarpa/screens/onboarding/splashscreen.dart';
import 'package:syarpa/screens/tab.dart';
import 'package:syarpa/screens/wallet/dollar_wallet.dart';
import 'package:syarpa/screens/wallet/naira_wallet.dart';
import 'package:syarpa/screens/wallet/pound_sterling_wallet.dart';
import 'package:syarpa/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      title: 'Syarpa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
      ),
      initialRoute: Tabs.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        SignupScreen.id: (context) => const SignupScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        OtpScreen.id: (context) => const OtpScreen(),
        OtpVerifiedScreen.id: (context) => const OtpVerifiedScreen(),
        ProfileUpdate.id: (context) => const ProfileUpdate(),
        OtpScreen2.id: (context) => const OtpScreen2(),
        OtpVerifiedScreen2.id: (context) => const OtpVerifiedScreen2(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        ForgotPasswordOtp.id: (context) => const ForgotPasswordOtp(),
        ResetPassword.id: (context) => const ResetPassword(),
        PasswordSuccess.id: (context) => const PasswordSuccess(),
        TwoFAScreen.id: (context) => const TwoFAScreen(),
        Tabs.id: (context) => const Tabs(),
        NairaWalletScreen.id: (context) => const NairaWalletScreen(),
        DollarWalletScreen.id: (context) => const DollarWalletScreen(),
        GBPWalletScreen.id: (context) => const GBPWalletScreen(),
        AddFundWalletScreen.id: (context) => const AddFundWalletScreen(),
        AddFundPaymentMethodScreen.id: (context) => const AddFundPaymentMethodScreen(),
        AddFundPaymentReviewScreen.id: (context) => const AddFundPaymentReviewScreen(),
        AddFundPaymentProcessed.id: (context) => const AddFundPaymentProcessed(),
      }
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
