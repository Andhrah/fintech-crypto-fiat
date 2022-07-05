import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/home/home.dart';
import 'package:syarpa/screens/wallet/wallet.dart';
import 'package:syarpa/utils/colors.dart';


class Tabs extends StatefulWidget {
  static const String id = 'tab';

  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  // _fetchUser() async {
  //   var box = await Hive.openBox('userData');
  //   setState(() {
  //     userType = box.get("userType");
  //   });
  //   print("<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>");
  //   print(userType);
  // }

  
  
  int _selectedIndex = 0;
  String userType =  "user";

  String currentTitle = 'Home';

  Widget _currentUserPage (_selectedIndex){
    switch (_selectedIndex){
      case 0 :
        currentTitle = 'Home';
        return const HomeScreen();
      case 1 :
        currentTitle = 'Wallet';
        return const WalletScreen();
      case 2 :
        currentTitle = 'Order';
        return Container();
      case 3 :
        currentTitle = 'Wallet';
        return Container();
      default:
        currentTitle = 'Profile';
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // _fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentUserPage(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/home_icon.svg",
              color: _selectedIndex == 0 ? secondaryColor : lightGrayColor
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/wallet_icon.svg",
              color: _selectedIndex == 1 ? secondaryColor : lightGrayColor
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Card(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: SvgPicture.asset("assets/images/send_icon.svg",
                  color: _selectedIndex == 2 ? secondaryColor : lightGrayColor
                ),
              )
              
            ),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/recipient_icon.svg",
              color: _selectedIndex == 3 ? secondaryColor : lightGrayColor
            ),
            label: 'Recipient',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/profile_icon.svg",
              color: _selectedIndex == 4 ? secondaryColor : lightGrayColor
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: secondaryColor,
        unselectedItemColor: lightGrayColor,
        onTap: _onItemTapped,
      )
    );
  }
}

