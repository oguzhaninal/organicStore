import 'package:flutter/material.dart';
import 'package:organic_store/config/colors.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.activeColor,
        title: Text("Sepet Sayfası"),
      ),
      body: Container(
        child: Center(
          child: Text("Sepet Sayfası"),
        ),
      ),
    );
  }
}
