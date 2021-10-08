import 'package:flutter/material.dart';
import 'package:joran_app/Models/UserRatingsModel.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/RatingContainer.dart';

class RatingsRow extends StatelessWidget {
  final UserRatings serviceRatings;
  final DateTime dateJoined;

  const RatingsRow({
    Key? key,
    required this.serviceRatings,
    required this.dateJoined,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RatingContainer(
            title: "Success",
            value: "${serviceRatings.successRate}%",
          ),
          RatingContainer(
            title: "Services",
            value: serviceRatings.servicesOffered.toString(),
          ),
          RatingContainer(
            title: "Rate",
            value: serviceRatings.ratings.toString(),
          ),
          RatingContainer(
            title: "Days",
            value: DateTime.now().difference(dateJoined).inDays.toString(),
          ),
        ],
      ),
    );
  }
}
