import 'package:flutter/material.dart';

class RatingContainer extends StatelessWidget {

  const RatingContainer({
    Key? key,
    required this.title,
    required this.value
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      width: size.width * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 15,
                fontFamily: "NunitoSans",
                color: Color(0XFF76787A).withOpacity(0.5),
                fontWeight: FontWeight.w800
            ),
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: 20,
                fontFamily: "NunitoSans",
                color: Colors.black,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
}
