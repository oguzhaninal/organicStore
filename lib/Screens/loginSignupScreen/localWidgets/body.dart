import 'package:flutter/material.dart';
import 'package:organic_store/Screens/loginSignupScreen/localWidgets/signInScreen.dart';
import 'package:organic_store/Screens/loginSignupScreen/localWidgets/signUpScreen.dart';
import 'package:organic_store/config/colors.dart';

// ignore: must_be_immutable
class Body extends StatefulWidget {
  bool isSignupScreen = true;
  Body(this.isSignupScreen);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      curve: Curves.bounceOut,
      top: s.height * .27,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 700),
        curve: Curves.bounceOut,
        padding: EdgeInsets.all(20),
        height: widget.isSignupScreen ? s.height * .54 : s.height * .4,
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
                        widget.isSignupScreen = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "Giriş Yap",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: widget.isSignupScreen
                                  ? MainColors.textColor1
                                  : MainColors.activeColor),
                        ),
                        if (!widget.isSignupScreen)
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
                        widget.isSignupScreen = true;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "Kayıt Ol",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: widget.isSignupScreen
                                  ? MainColors.activeColor
                                  : MainColors.textColor1),
                        ),
                        if (widget.isSignupScreen)
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
              if (widget.isSignupScreen) SignUpScreen(),
              if (!widget.isSignupScreen) SignInScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
