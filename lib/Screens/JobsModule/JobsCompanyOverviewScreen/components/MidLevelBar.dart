import 'package:flutter/material.dart';

class MidLevelBar extends StatelessWidget {
  const MidLevelBar({
    Key? key,
    required this.companyName,
    required this.companyLocation,
    required this.companyBanner
  }) : super(key: key);

  final String companyName;
  final String companyLocation;
  final String companyBanner;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: size.height * 0.325,
          width: size.width * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          color: Color(0XFF76787A),
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      companyName,
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          color: Color(0XFF76787A),
                          fontSize: 27.5,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          color: Color(0XFF76787A),
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      companyLocation,
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          color: Color(0XFF76787A),
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.375,
          width: size.width * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(-2, -2),
                color: Colors.black.withOpacity(0.35),
                blurRadius: 5.0
              )
            ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
            ),
            child: Image(
              image: AssetImage(companyBanner),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}