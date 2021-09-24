import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/components/ServiceContainer.dart';

class ServiceContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.425,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ServiceContainer(
              name: "Abigail Sarah Williams",
              image: "assets/pictures/user.jpg",
              service: "C++ Assignment",
              fee: "50",
              ratings: "4.0",
            ),
            ServiceContainer(
              name: "Abigail Sarah Williams",
              image: "assets/pictures/user.jpg",
              service: "C++ Assignment",
              fee: "50",
              ratings: "4.0",
            ),
            ServiceContainer(
              name: "Abigail Sarah Williams",
              image: "assets/pictures/user.jpg",
              service: "C++ Assignment",
              fee: "50",
              ratings: "4.0",
            ),
          ],
        ),
      ),
    );
  }
}