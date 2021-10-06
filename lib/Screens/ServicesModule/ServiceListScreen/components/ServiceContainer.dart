import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/ServiceDetailScreen.dart';
import 'package:page_transition/page_transition.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    Key? key,
    required this.name,
    required this.service,
    required this.fee,
    required this.image,
  }) : super(key: key);

  final String name;
  final String service;
  final String fee;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context, PageTransition(
            type: PageTransitionType.fade, child: ServiceDetailScreen())
        ),
        child: Container(
          width: size.width * 0.4,
          height: size.height * 0.325,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.165,
                width: size.width * 0.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)
                  ),
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.w800,
                        fontFamily: "NunitoSans",
                      ),
                    ),
                    Text(
                      service,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: "NunitoSans",
                        color: Colors.black.withOpacity(0.5)
                      ),
                    ),
                    Text(
                      "RM $fee / service",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: "NunitoSans",
                        color: Colors.black.withOpacity(0.5)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}