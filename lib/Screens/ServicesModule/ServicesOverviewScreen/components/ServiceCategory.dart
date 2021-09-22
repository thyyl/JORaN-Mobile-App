import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/ServiceContainer.dart';

class ServiceCategory extends StatelessWidget {
  const ServiceCategory({
    Key? key,
    required this.service,
  }) : super(key: key);

  final String service;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              service,
              style: TextStyle(
                color: Color(0XFF76787A),
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: size.width * 0.91,
            height: size.height * 0.15,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  ServiceContainer(
                    image: "assets/pictures/user.jpg",
                    name: "Adeline Lim Hui Kee",
                    service: "C++ assignment",
                    fee: "50",
                    ratings: "4.0",
                  ),
                  ServiceContainer(
                    image: "assets/pictures/user.jpg",
                    name: "Adeline Lim Hui Kee",
                    service: "C++ assignment",
                    fee: "50",
                    ratings: "4.0",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}