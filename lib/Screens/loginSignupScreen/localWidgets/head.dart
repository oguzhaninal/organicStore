import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  final bool isSignupScreen;
  Head({this.isSignupScreen});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      curve: Curves.bounceOut,
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        height: s.height * .35,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/ciftci.jpg"), fit: BoxFit.fill),
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 700),
          curve: Curves.bounceOut,
          padding: EdgeInsets.only(top: s.height * .10, left: s.width * .05),
          color: Color(0xFF3b5999).withOpacity(.55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Organik Store'a",
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                "hoş geldiniz...",
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: s.height * .012,
              ),
              Row(
                children: [
                  Text(
                    "Devam etmek için",
                    style: TextStyle(
                      color: Colors.white60,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    isSignupScreen ? " kayıt olunuz." : " giriş yapınız",
                    style: TextStyle(
                      color: Colors.white60,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
