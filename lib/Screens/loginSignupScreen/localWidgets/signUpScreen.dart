import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'myTextField.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: s.width * .015),
        child: Column(
          children: [
            MyTextField(
                icon: MaterialCommunityIcons.account_outline,
                hintText: "Adınız Soyadınız",
                isPassword: false,
                isEmail: false,
                isPhone: false),
            MyTextField(
                icon: Icons.alternate_email,
                hintText: "Kullanıcı Adınız",
                isPassword: false,
                isEmail: false,
                isPhone: false),
            MyTextField(
                icon: Icons.mail_outline,
                hintText: "E-Postanız",
                isPassword: false,
                isEmail: true,
                isPhone: false),
            MyTextField(
                icon: FlutterIcons.phone_faw,
                hintText: "Telefon Numaranız",
                isPassword: false,
                isEmail: false,
                isPhone: true),
            MyTextField(
                icon: FlutterIcons.lock_outline_mco,
                hintText: "Şifreniz",
                isPassword: true,
                isEmail: false,
                isPhone: false),
            Container(
              width: s.width * .8,
              margin: EdgeInsets.only(top: s.width * .02),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Kayıt ol butonuna basarak",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: " Gizlilik Politikamızı ve Şartlarımızı",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.underline,
                        color: Colors.yellow[700],
                      ),
                    ),
                    TextSpan(text: " kabul etmiş olursunuz!")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
