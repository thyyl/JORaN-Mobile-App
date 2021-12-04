import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:joran_app/Provider/StringProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/MenuContainer.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/UserProfileMidLevel.dart';
import 'package:joran_app/Services/User.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String jwt = Provider.of<StringProvider>(context).jwt;
    String userID = Provider.of<StringProvider>(context).id;

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: FutureBuilder(
        future: getUserInfo(jwt, userID),
        builder: (context, snapshot) {
          if (!snapshot.hasError) {
            // show error
          }

          if (snapshot.connectionState == ConnectionState.done) {
            final userInfo = snapshot.data as Map<String, dynamic>;

            return Background(
              children: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "My Profile",
                          style: TextStyle(
                              color: Color(0XFF76787A),
                              fontSize: 25,
                              fontFamily: "NunitoSans",
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                      UserProfileMidLevel(
                        userInfo: userInfo,
                      ),
                      SizedBox(height: size.height * 0.05),
                      MenuContainer(
                        userInfo: userInfo,
                      )
                    ],
                  ),
                ),
              ),
            );
          }

          // return loading state
          return(
            SpinKitPulse(
              color: Colors.white,
              size: 50.0,
            )
          );
        }
      )
    );
  }
}





