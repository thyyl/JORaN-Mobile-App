import 'package:flutter/material.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/UserProfileEditScreen.dart';
import 'package:provider/provider.dart';

class UserProfileMidLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    User user = Provider.of<UserProvider>(context).user;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.4,
            child: Text(
              user.name,
              style: TextStyle(
                  color: Color(0XFF76787A),
                  fontSize: 25,
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          GestureDetector(
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => UserProfileEditScreen()
              )
            ),
            child: Text(
              "Edit Profile",
              style: TextStyle(
                color: Color(0XFF5783C3),
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Change Plan",
              style: TextStyle(
                color: Color(0XFF5783C3),
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}