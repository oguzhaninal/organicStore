import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:organic_store/Screens/loginSignupScreen/localWidgets/socialButton.dart';
import 'package:organic_store/config/colors.dart';

class Bottom extends StatelessWidget {
  final Function route;
  Bottom({this.route});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Positioned(
        top: s.height * .8,
        right: 0,
        left: 0,
        child: Column(
          children: [
            SizedBox(
              height: s.height * .035,
            ),
            Text("ya da"),
            Container(
              margin:
                  EdgeInsets.only(right: 20, left: 20, top: s.height * .015),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialButton(
                    icon: FlutterIcons.facebook_mco,
                    title: "Facebook",
                    backgroundColor: MainColors.facebookColor,
                    route: route,
                  ),
                  SocialButton(
                    icon: FlutterIcons.google_mco,
                    title: "Google",
                    backgroundColor: MainColors.googleColor,
                    route: route,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
