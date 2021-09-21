import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/components/EditProfileForm.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/components/ProfilePicture.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/components/TopLevelBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: size.height * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopLevelBar(),
                SizedBox(height: size.height * 0.025),
                ProfilePicture(
                  image: "assets/pictures/user.jpg",
                ),
                SizedBox(height: size.height * 0.05),
                EditProfileForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



