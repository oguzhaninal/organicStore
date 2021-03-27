import 'package:flutter/material.dart';

class LoginSignupButton extends StatelessWidget {
  final bool isSignupScreen;
  final bool showShadow;
  LoginSignupButton({this.showShadow, this.isSignupScreen});
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      curve: Curves.bounceOut,
      top: isSignupScreen ? s.height * .76 : s.height * .615,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(s.height * .01),
          height: s.height * .1,
          width: s.height * .2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: [
              if (showShadow)
                BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 10,
                    spreadRadius: 1.5),
            ],
          ),
          child: !showShadow
              ? Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.orange[200],
                      Colors.red[400],
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      isSignupScreen ? "Kayıt Ol" : "Giriş Yap",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: isSignupScreen ? 30 : 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              : Center(),
        ),
      ),
    );
  }
}
