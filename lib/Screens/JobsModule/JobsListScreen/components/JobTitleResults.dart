import 'package:flutter/material.dart';

class JobTitleResults extends StatelessWidget {
  const JobTitleResults({
    Key? key,
    required this.job,
    required this.results,
  }) : super(key: key);

  final String job;
  final String results;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.3,
            child: Text(
              job,
              style: TextStyle(
                fontSize: 17.5,
                color: Color(0XFF76787A),
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            "$results results found",
            style: TextStyle(
              fontSize: 17.5,
              color: Color(0XFF76787A),
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}