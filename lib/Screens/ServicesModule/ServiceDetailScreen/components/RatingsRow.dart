import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/RatingContainer.dart';

class RatingsRow extends StatelessWidget {
  final DateTime dateJoined;

  const RatingsRow({
    Key? key,
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
            value: "100%",
          ),
          RatingContainer(
            title: "Services",
            value: "500",
          ),
          RatingContainer(
            title: "Rate",
            value: "4.5",
          ),
          RatingContainer(
            title: "Days",
            value: "233",
          ),
        ],
      ),
    );
  }
}
