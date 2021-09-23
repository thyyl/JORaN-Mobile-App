import 'package:flutter/material.dart';

class FeaturedCompanyIndividual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: size.height * 0.15,
        width: size.width * 0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/logo/google.png")),
              Padding(
                padding: const EdgeInsets.only(top: 7.5, bottom: 5.0),
                child: Text(
                  "Google",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "NunitoSans",
                      fontSize: 12.5,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                width: size.width * 0.15,
                child: Text(
                  "12 jobs openings",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "NunitoSans",
                      fontSize: 10,
                      color: Color(0XFF0075F2)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}