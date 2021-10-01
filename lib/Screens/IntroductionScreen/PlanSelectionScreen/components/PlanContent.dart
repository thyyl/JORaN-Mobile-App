import 'package:flutter/material.dart';

class PlanContent extends StatelessWidget {
  const PlanContent({
    Key? key, required this.plan, required this.charges, required this.serviceOffer,
  }) : super(key: key);

  final String plan;
  final String charges;
  final String serviceOffer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              "$plan Plan",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontSize: 27.5,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          Text(
            charges,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 20,
                fontWeight: FontWeight.w700
            ),
          ),
          Text(
            serviceOffer,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 20,
                fontWeight: FontWeight.w700
            ),
          ),
          Text(
            "Job Finder",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 20,
                fontWeight: FontWeight.w700
            ),
          ),
        ],
      ),
    );
  }
}