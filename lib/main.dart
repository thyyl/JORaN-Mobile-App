
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:joran_app/Models/HomeModel.dart';
import 'package:joran_app/Provider/MarketJobProvider.dart';
import 'package:joran_app/Provider/MarketServiceProvider.dart';
import 'package:joran_app/Provider/NotificationProvider.dart';
import 'package:joran_app/Provider/ServiceProvider.dart';
import 'package:joran_app/Provider/SkillsProvider.dart';
import 'package:joran_app/Screens/LogInScreen/LogInScreen.dart';
import 'package:joran_app/Screens/SplashScreen/SplashScreen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:provider/provider.dart';

import 'Provider/StringProvider.dart';
import 'Provider/UserProvider.dart';

Future main() async {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0XFFEDF1F4),
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ));

  await dotenv.load(fileName: ".env");

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeModel()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => ServiceProvider()),
        ChangeNotifierProvider(create: (_) => SkillsProvider()),
        ChangeNotifierProvider(create: (_) => NotificationProvider()),
        ChangeNotifierProvider(create: (_) => MarketJobProvider()),
        ChangeNotifierProvider(create: (_) => MarketServiceProvider()),
        ChangeNotifierProvider(create: (_) => StringProvider()),
      ],
      child: MyApp(),
    ),
  );
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
