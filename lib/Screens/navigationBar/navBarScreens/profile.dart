import 'package:flutter/material.dart';
import 'package:organic_store/config/colors.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.activeColor,
        title: Text("Profil Sayfası"),
      ),
      body: Center(
        child: Text("Profil Sayfası"),
      ),
    );
  }
}
