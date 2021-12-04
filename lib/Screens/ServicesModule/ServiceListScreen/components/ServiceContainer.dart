import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Models/SkillsModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/ServiceDetailScreen.dart';
import 'package:page_transition/page_transition.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    Key? key,
    required this.serviceProvider,
    required this.service,
  }) : super(key: key);

  final Service service;
  final User serviceProvider;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context, PageTransition(
            type: PageTransitionType.fade,
            child: ServiceDetailScreen(
              service: service,
              skills: getSkills(serviceProvider.userID),
              serviceProvider: serviceProvider,
            ))
        ),
        child: Container(
          width: size.width * 0.8,
          height: size.height * 0.15,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: Offset(1, 1),
                blurRadius: 5
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.25,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  child: Image(
                    image: AssetImage(serviceProvider.userProfilePicture),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 15.0, 0, 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      serviceProvider.name,
                      style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.w700,
                        fontFamily: "NunitoSans"
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          service.title,
                          style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.w700,
                              fontFamily: "NunitoSans"
                          ),
                        ),
                        Text(
                          "RM ${service.price} / service",
                          style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.w700,
                              fontFamily: "NunitoSans"
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Skills> getSkills(String id) {
    return skillData;
  }


}