import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/FlashyTabBar.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/ChatOverviewScreen.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/HomeOverviewScreen.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/JobsOverviewScreen.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/NotificationOverviewScreen.dart';
import 'package:joran_app/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';


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

  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    User user = Provider.of<UserProvider>(context).user;

    return Container(
      width: size.width,
      height: size.height,
      color: Color(0XFFEDF1F4),
      child: Stack(
        children: [
          Positioned(
            right: size.width * 0.1,
            top: size.height * 0.1,
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.375,
              child: Hero(
                tag: "profile",
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0),
                    ),
                    child: Image(
                      image: AssetImage(user.userProfilePicture),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              // TODO FADE IN IMAGE FOR USER PROFILE
              // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
            ),
          ),
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

                case 3:
                  Navigator.pushReplacement(context, PageTransition(
                      type: PageTransitionType.fade,
                      child: NotificationOverviewScreen())
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



