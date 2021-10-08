import 'package:flutter/material.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Models/UserRatingsModel.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Provider/UserRatingProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/RatingContainer.dart';
import 'package:provider/provider.dart';

class RatingsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;
    UserRatings userRatings = Provider.of<UserRatingsProvider>(context).userRatings;
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RatingContainer(
            title: "Success",
            value: "${userRatings.successRate}%",
          ),
          RatingContainer(
            title: "Services",
            value: userRatings.servicesOffered.toString(),
          ),
          RatingContainer(
            title: "Rate",
            value: userRatings.ratings.toString(),
          ),
          RatingContainer(
            title: "Days",
            value: DateTime.now().difference(user.dateJoined).inDays.toString(),
          ),
        ],
      ),
    );
  }
}
