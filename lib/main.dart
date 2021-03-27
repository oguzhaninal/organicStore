import 'package:flutter/material.dart';
import 'Screens/loginSignupScreen/loginSignup.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Organik Ürün Mağazası",
      home: LoginSignup(),
    );
  }
}
