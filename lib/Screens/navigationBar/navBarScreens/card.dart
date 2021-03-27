import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Default Tab Bar Deneme"),
      ),
      body: Container(
        child: Column(
          children: [
            Positioned(
                top: s.height * .1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat1"),
                        style: TextButton.styleFrom(
                            side: BorderSide(width: 1, color: Colors.grey),
                            minimumSize: Size(s.width * .25, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            primary: Colors.white,
                            backgroundColor: Colors.grey[400]),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat 2"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat 3"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat 4"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat 5"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat 6"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat 7"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat 8"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Kat 9"),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
