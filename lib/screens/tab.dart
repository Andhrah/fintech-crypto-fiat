import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:syarpa/screens/home/home.dart';
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
        return Container();
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
            icon: Icon(
              Remix.home_7_line,
              color: _selectedIndex != 0 ? secondaryColor : grayColor
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Remix.shopping_cart_2_line,
              color: _selectedIndex != 1 ? secondaryColor : grayColor
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Remix.file_list_fill,
              color: _selectedIndex != 2 ? secondaryColor : grayColor
            ),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset("assets/images/cart_icon.svg",
            //   color: _selectedIndex != 3 ? appPrimaryColor : secondaryColor
            // ),
            icon: Icon(
              Remix.wallet_2_line,
              color: _selectedIndex != 3 ? secondaryColor : grayColor
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Remix.user_2_line,
              color: _selectedIndex != 4 ? appPrimaryColor : secondaryColor
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: secondaryColor,
        unselectedItemColor: appPrimaryColor,
        onTap: _onItemTapped,
      )
    );
  }
}

