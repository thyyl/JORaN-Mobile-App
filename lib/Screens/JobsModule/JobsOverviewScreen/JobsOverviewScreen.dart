import 'package:flutter/material.dart';
import 'package:joran_app/FlashyTabBar.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/HomeOverviewScreen.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/Body.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/UserProfileOverviewScreen.dart';
import 'package:joran_app/constants.dart';
import 'package:page_transition/page_transition.dart';

class JobsOverviewScreen extends StatefulWidget {
  @override
  _JobsOverviewScreenState createState() => _JobsOverviewScreenState();
}

class _JobsOverviewScreenState extends State<JobsOverviewScreen> {
  int _selectedIndex = 0;

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
            case 2:
              Navigator.pushReplacement(context, PageTransition(
                  type: PageTransitionType.fade, child: HomeOverviewScreen())
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
