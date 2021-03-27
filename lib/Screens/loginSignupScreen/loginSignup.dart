import 'package:flutter/material.dart';
import 'package:organic_store/Screens/loginSignupScreen/localWidgets/bottom.dart';
import 'package:organic_store/Screens/loginSignupScreen/localWidgets/button.dart';
import 'package:organic_store/Screens/loginSignupScreen/localWidgets/head.dart';
import 'package:organic_store/Screens/loginSignupScreen/localWidgets/signInScreen.dart';
import 'package:organic_store/Screens/loginSignupScreen/localWidgets/signUpScreen.dart';
import 'package:organic_store/Screens/navigationBar/navigationBar.dart';
import 'package:organic_store/config/colors.dart';

class LoginSignup extends StatefulWidget {
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  bool isSignupScreen = true;

  bool isRememberMe = false;

  tryRoute() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => MyNavBar(),
        ),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MainColors.backgroundColor,
        body: Stack(
          children: [
            Head(
              isSignupScreen: isSignupScreen,
            ),
            LoginSignupButton(
              showShadow: true,
              isSignupScreen: isSignupScreen,
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceOut,
              top: s.height * .27,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 700),
                curve: Curves.bounceOut,
                padding: EdgeInsets.all(20),
                height: isSignupScreen ? s.height * .54 : s.height * .4,
                width: s.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Giriş Yap",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen
                                          ? MainColors.textColor1
                                          : MainColors.activeColor),
                                ),
                                if (!isSignupScreen)
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 700),
                                    curve: Curves.bounceOut,
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.orange,
                                  ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Kayıt Ol",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen
                                          ? MainColors.activeColor
                                          : MainColors.textColor1),
                                ),
                                if (isSignupScreen)
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 700),
                                    curve: Curves.bounceOut,
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.orange,
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      if (isSignupScreen) SignUpScreen(),
                      if (!isSignupScreen) SignInScreen(),
                    ],
                  ),
                ),
              ),
            ),
            LoginSignupButton(
              showShadow: false,
              isSignupScreen: isSignupScreen,
            ),
            //social buttons

            if (!isSignupScreen) Bottom(route: tryRoute),
          ],
        ),
      ),
    );
  }
}
