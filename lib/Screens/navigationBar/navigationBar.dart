import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:organic_store/Screens/navigationBar/navBarScreens/card.dart';
import 'package:organic_store/Screens/navigationBar/navBarScreens/categories.dart';
import 'package:organic_store/Screens/navigationBar/navBarScreens/home/home.dart';
import 'package:organic_store/Screens/navigationBar/navBarScreens/profile.dart';
import 'package:organic_store/config/colors.dart';

class MyNavBar extends StatefulWidget {
  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int selectedIndex = 0;

  static List _widgetOptions = [
    HomeScreen(),
    CategoriesScreen(),
    CardScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  rippleColor: Colors.grey[300],
                  hoverColor: Colors.grey[100],
                  gap: 8,
                  activeColor: MainColors.activeColor,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey[100],
                  tabs: [
                    GButton(
                      curve: Curves.bounceIn,
                      icon: FlutterIcons.home_sli,
                      text: 'Ana Sayfa',
                    ),
                    GButton(
                      curve: Curves.easeInBack,
                      icon: FlutterIcons.search_fea,
                      text: 'Kategoriler',
                    ),
                    GButton(
                      icon: FlutterIcons.basket_sli,
                      text: 'Sepet',
                    ),
                    GButton(
                      icon: FlutterIcons.user_sli,
                      text: 'Hesabım',
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
