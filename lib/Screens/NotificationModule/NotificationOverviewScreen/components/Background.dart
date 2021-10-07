import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/FlashyTabBar.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/ChatOverviewScreen.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/HomeOverviewScreen.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/JobsOverviewScreen.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/UserProfileOverviewScreen.dart';
import 'package:joran_app/constants.dart';
import 'package:page_transition/page_transition.dart';


class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();

  const Background({
    Key? key,
    required this.children,
  }) : super(key: key);

  final Widget children;
}

class _BackgroundState extends State<Background> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Color(0XFFEDF1F4),
      child: Stack(
        children: [
          widget.children,

          FlashyTabBar(
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
                      type: PageTransitionType.fade,
                      child: JobsOverviewScreen(
                        featuredCompanyList: fakeFeaturedCompany,
                      ))
                  );
                  break;

                case 1:
                  Navigator.pushReplacement(context, PageTransition(
                      type: PageTransitionType.fade,
                      child: ChatOverviewScreen())
                  );
                  break;

                case 2:
                  Navigator.pushReplacement(context, PageTransition(
                      type: PageTransitionType.fade,
                      child: HomeOverviewScreen())
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
        ],
      ),
    );
  }
}

