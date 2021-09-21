import 'package:flutter/material.dart';
import 'package:joran_app/Screens/SplashScreen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JORaN App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
