import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/components/Body.dart';

class ChatOverviewScreen extends StatefulWidget {
  @override
  _ChatOverviewScreenState createState() => _ChatOverviewScreenState();
}

class _ChatOverviewScreenState extends State<ChatOverviewScreen> {
  // int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // bottomNavigationBar: FlashyTabBar(
      //   animationCurve: Curves.linear,
      //   selectedIndex: _selectedIndex,
      //   backgroundColor: Colors.white,
      //   showElevation: true,
      //   onItemSelected: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //
      //     switch(_selectedIndex) {
      //       case 0:
      //         Navigator.pushReplacement(context, PageTransition(
      //             type: PageTransitionType.fade, child: JobsOverviewScreen())
      //         );
      //         break;
      //
      //       case 2:
      //         Navigator.pushReplacement(context, PageTransition(
      //             type: PageTransitionType.fade, child: HomeOverviewScreen())
      //         );
      //         break;
      //
      //       case 3:
      //         Navigator.pushReplacement(context, PageTransition(
      //             type: PageTransitionType.fade, child: NotificationOverviewScreen())
      //         );
      //         break;
      //
      //       case 4:
      //         Navigator.pushReplacement(context, PageTransition(
      //             type: PageTransitionType.fade, child: UserProfileOverviewScreen())
      //         );
      //         break;
      //     }
      //   },
      //   items: tabBarItemList,
      // ),
    );
  }
}
