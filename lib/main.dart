import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/LogInScreen/LogInScreen.dart';
import 'package:joran_app/Screens/SplashScreen/SplashScreen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0XFFEDF1F4),
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JORaN App',
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 400,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(400, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => LogInScreen(),
      },
    );
  }
}
