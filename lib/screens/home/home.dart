import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  
  static const String id = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/home_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: Center(
                  //   child: Image.asset(
                  //     "assets/images/syarpa_logo.png",
                  //     // height: MediaQuery.of(context).size.height / 3,
                  //     width: MediaQuery.of(context).size.width / 1.8,
                  //   )
                  // ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}