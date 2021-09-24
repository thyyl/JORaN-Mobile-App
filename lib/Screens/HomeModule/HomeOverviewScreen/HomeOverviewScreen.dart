import 'package:flutter/material.dart';
import 'package:joran_app/FlashyTabBar.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/ChatOverviewScreen.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/Body.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/JobsOverviewScreen.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/NotificationOverviewScreen.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/UserProfileOverviewScreen.dart';
import 'package:joran_app/constants.dart';
import 'package:page_transition/page_transition.dart';


class HomeOverviewScreen extends StatefulWidget {
  @override
  _HomeOverviewScreenState createState() => _HomeOverviewScreenState();
}

class _HomeOverviewScreenState extends State<HomeOverviewScreen> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        backgroundColor: Colors.white,
        showElevation: true,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });

          switch(_selectedIndex) {
            case 0:
              Navigator.pushReplacement(context, PageTransition(
                  type: PageTransitionType.fade, child: JobsOverviewScreen())
              );
              break;

            case 1:
              Navigator.pushReplacement(context, PageTransition(
                  type: PageTransitionType.fade, child: ChatOverviewScreen())
              );
              break;

            case 3:
              Navigator.pushReplacement(context, PageTransition(
                  type: PageTransitionType.fade, child: NotificationOverviewScreen())
              );
              break;

            case 4:
              Navigator.pushReplacement(context, PageTransition(
                type: PageTransitionType.fade, child: UserProfileOverviewScreen())
              );
              break;
          }
        },
        items: tabBarItemList,
      ),
    );
  }
}
