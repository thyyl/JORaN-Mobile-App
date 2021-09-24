import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditServiceScreen/UserProfileEditServiceScreen.dart';
import 'package:page_transition/page_transition.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    Key? key,
    required this.name,
    required this.service,
    required this.fee,
    required this.ratings,
    required this.image,
  }) : super(key: key);

  final String name;
  final String service;
  final String fee;
  final String ratings;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(
          type: PageTransitionType.fade, child: UserProfileEditServiceScreen())
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0, bottom: 20.0),
        child: Container(
          height: size.height * 0.15,
          width: size.width * 0.55,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.25,
                      child: Text(
                        name,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0XFF76787A),
                          fontFamily: "NunitoSans",
                          fontSize: 15.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    service,
                    style: TextStyle(
                      color: Color(0XFF76787A),
                      fontFamily: "NunitoSans",
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "RM $fee / service",
                        style: TextStyle(
                          color: Color(0XFF76787A),
                          fontFamily: "NunitoSans",
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image(image: AssetImage("assets/pictures/star.png")),
                          ),
                          Text(
                            ratings,
                            style: TextStyle(
                              color: Color(0XFF76787A),
                              fontFamily: "NunitoSans",
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}