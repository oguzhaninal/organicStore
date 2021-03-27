import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;
  final Function route;
  SocialButton({this.icon, this.title, this.backgroundColor, this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: route,
      style: TextButton.styleFrom(
          side: BorderSide(width: 1, color: Colors.grey),
          minimumSize: Size(155, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: backgroundColor),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
