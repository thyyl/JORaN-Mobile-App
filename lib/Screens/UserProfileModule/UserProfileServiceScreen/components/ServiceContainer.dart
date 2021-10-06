import 'package:flutter/material.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditServiceScreen/UserProfileEditServiceScreen.dart';
import 'package:page_transition/page_transition.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    Key? key,
    required this.service,
  }) : super(key: key);

  final Service service;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(
          type: PageTransitionType.fade,
          child: UserProfileEditServiceScreen(service: service))
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          height: size.height * 0.1,
          width: size.width * 0.8,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  service.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "NunitoSans",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "RM ${service.price} / service",
                  style: TextStyle(
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
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