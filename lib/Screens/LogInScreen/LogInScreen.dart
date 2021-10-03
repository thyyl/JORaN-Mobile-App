import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/LogInScreen/components/Body.dart';
import 'package:joran_app/Screens/NoConnectionScreen/NoConnectionScreen.dart';
import 'package:joran_app/Screens/SplashScreen/SplashScreen.dart';
import 'package:joran_app/Services/ConnectionServices.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0XFFEDF1F4)),
        toolbarOpacity: 0,
        backgroundColor: Color(0XFFEDF1F4),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Body(),
    );
    
    // return FutureBuilder(
    //   future: checkConnection(),
    //   builder: (context, snapshot) {
    //     if (snapshot.hasError) {
    //       print(snapshot.error);
    //       return Scaffold(
    //         body: NoConnectionScreen(),
    //       );
    //     }
    //
    //     return snapshot.hasData
    //         ? Scaffold(
    //           appBar: AppBar(
    //             systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0XFFEDF1F4)),
    //             toolbarOpacity: 0,
    //             backgroundColor: Color(0XFFEDF1F4),
    //             elevation: 0,
    //             toolbarHeight: 0,
    //           ),
    //           body: Body(),
    //         )
    //         : SplashScreen();
    //   }
    // );
  }
}
