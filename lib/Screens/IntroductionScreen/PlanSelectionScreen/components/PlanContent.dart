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
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Benefits",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontSize: 22.5,
                  fontWeight: FontWeight.w800
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