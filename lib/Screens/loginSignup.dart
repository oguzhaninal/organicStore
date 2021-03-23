import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:organic_store/config/colors.dart';

class LoginSignup extends StatefulWidget {
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  bool isSignupScreen = true;

  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MainColors.backgroundColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceOut,
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: s.height * .4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ciftci.jpg"),
                    fit: BoxFit.fill),
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 700),
                curve: Curves.bounceOut,
                padding: EdgeInsets.only(
                    top: isSignupScreen ? s.height * .10 : s.height * .13,
                    left: s.width * .05),
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
          ),
          buildButtonContainerPositioned(true),
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceOut,
            top: isSignupScreen ? s.height * .26 : s.height * .3,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceOut,
              padding: EdgeInsets.all(20),
              height: isSignupScreen ? s.height * .52 : s.height * .4,
              width: s.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      blurRadius: 15,
                      spreadRadius: 5),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Giriş Yap",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? MainColors.textColor1
                                        : MainColors.activeColor),
                              ),
                              if (!isSignupScreen)
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 700),
                                  curve: Curves.bounceOut,
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Kayıt Ol",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? MainColors.activeColor
                                        : MainColors.textColor1),
                              ),
                              if (isSignupScreen)
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 700),
                                  curve: Curves.bounceOut,
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (isSignupScreen) buildSignupScreen(),
                    if (!isSignupScreen) buildSigninScrenn()
                  ],
                ),
              ),
            ),
          ),
          buildButtonContainerPositioned(false),
          //social buttons

          Positioned(
              top: s.height - 100,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  SizedBox(
                    height: s.height * .035,
                  ),
                  Text("ya da"),
                  Container(
                    margin: EdgeInsets.only(
                        right: 20, left: 20, top: s.height * .015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildSocialButton(FlutterIcons.facebook_mco, "Facebook",
                            MainColors.facebookColor),
                        buildSocialButton(FlutterIcons.google_mco, "Google",
                            MainColors.googleColor)
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Container buildSigninScrenn() {
    Size s = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: s.width * .015),
      child: Column(
        children: [
          buildTextField(MaterialCommunityIcons.account_outline,
              "Kullanıcı Adınız", false, false, false),
          buildTextField(
              FlutterIcons.lock_outline_mco, "Şifreniz", true, false, false),
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

  buildSignupScreen() {
    Size s = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: s.width * .015),
        child: Column(
          children: [
            buildTextField(MaterialCommunityIcons.account_outline,
                "Adınız Soyadınız", false, false, false),
            buildTextField(
                Icons.alternate_email, "Kullanıcı Adınız", false, false, false),
            buildTextField(
                Icons.mail_outline, "E-Postanız", false, true, false),
            buildTextField(FlutterIcons.phone_faw, "Telefon Numaranız", false,
                false, true),
            buildTextField(
                FlutterIcons.lock_outline_mco, "Şifreniz", true, false, false),
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

  TextButton buildSocialButton(
      IconData icon, String title, Color backgroundColor) {
    return TextButton(
      onPressed: () {},
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

  buildButtonContainerPositioned(bool showShadow) {
    Size s = MediaQuery.of(context).size;

    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      curve: Curves.bounceOut,
      top: isSignupScreen ? s.height * .75 : s.height * .65,
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

  buildTextField(
    IconData icon,
    String hintText,
    bool isPassword,
    bool isEmail,
    bool isPhone,
  ) {
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
