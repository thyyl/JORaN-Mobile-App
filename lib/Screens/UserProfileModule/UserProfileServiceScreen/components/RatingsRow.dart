import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/components/RatingContainer.dart';

class RatingsRow extends StatelessWidget {
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
            value: "98%",
          ),
          RatingContainer(
            title: "Services",
            value: "546",
          ),
          RatingContainer(
            title: "Rate",
            value: "4.7",
          ),
          RatingContainer(
            title: "Days",
            value: "200",
          ),
        ],
      ),
    );
  }
}
