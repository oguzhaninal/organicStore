import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:organic_store/config/colors.dart';

import 'myTextField.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: s.width * .09),
      child: Column(
        children: [
          MyTextField(
            icon: Icons.mail_outline,
            hintText: "E-Postanız",
            isPassword: false,
            isEmail: false,
            isPhone: false,
          ),
          MyTextField(
            icon: FlutterIcons.lock_outline_mco,
            hintText: "Şifreniz",
            isPassword: true,
            isEmail: false,
            isPhone: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      activeColor: MainColors.textColor1,
                      value: isRememberMe,
                      onChanged: (value) {
                        setState(() {
                          isRememberMe = !isRememberMe;
                        });
                      }),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isRememberMe = !isRememberMe;
                      });
                    },
                    child: Text(
                      "Beni Hatırla",
                      style:
                          TextStyle(fontSize: 14, color: MainColors.textColor1),
                    ),
                  )
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Şifremi Unuttum",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: MainColors.textColor2,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
