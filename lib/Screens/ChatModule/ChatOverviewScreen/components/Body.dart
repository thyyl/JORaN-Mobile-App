import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/components/ChatContainer.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/components/HeaderContainer.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Column(
          children: [
            HeaderContainer(),
            Container(
              height: size.height * 0.715,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ChatContainer(),
                      ChatContainer(),
                      ChatContainer(),
                      ChatContainer(),
                      ChatContainer(),
                      ChatContainer(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
