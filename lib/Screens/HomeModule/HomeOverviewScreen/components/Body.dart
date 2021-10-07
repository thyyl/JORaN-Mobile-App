import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/AdvetisementContainerList.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/JobContainerList.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/TopLevelBar.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopLevelBar(
                  image: user.userProfilePicture,
                ),
                SizedBox(height: size.height * 0.05),
                AdvertisementContainerList(),
                SizedBox(height: size.height * 0.05),
                Text(
                  "Featured Job of the Week",
                  style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF76787A),
                    fontSize: 17.5
                  ),
                ),
                SizedBox(height: size.height * 0.025),
                JobContainerList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}






