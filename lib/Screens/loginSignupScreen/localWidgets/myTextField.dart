import 'package:flutter/material.dart';
import 'package:organic_store/config/colors.dart';

class MyTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;
  final bool isEmail;
  final bool isPhone;
  MyTextField({
    this.icon,
    this.hintText,
    this.isPassword,
    this.isEmail,
    this.isPhone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail
            ? TextInputType.emailAddress
            : isPhone
                ? TextInputType.phone
                : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: MainColors.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[400],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[600],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          contentPadding: EdgeInsets.all(15),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: MainColors.textColor1),
        ),
      ),
    );
  }
}
