import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Models/FeaturedCompanyModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/AdvetisementContainerList.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/FeaturedCompanyList.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/TopLevelBar.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {

  const Body({
    Key? key,
    required this.featuredCompanyList
  }) : super(key: key);

  final List<FeaturedCompany> featuredCompanyList;

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
                SizedBox(height: size.height * 0.025),
                Text(
                  "Featured Job of the Week",
                  style: TextStyle(
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF76787A),
                      fontSize: 22.5
                  ),
                ),
                SizedBox(height: size.height * 0.025),
                AdvertisementContainerList(),
                SizedBox(height: size.height * 0.05),
                FeaturedCompanyList(
                    featuredCompanyList: featuredCompanyList
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






