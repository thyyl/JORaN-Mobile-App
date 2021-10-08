import 'package:flutter/material.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Models/SkillsModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Models/UserRatingsModel.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/Body.dart';

class ServiceDetailScreen extends StatelessWidget {

  final User serviceProvider;
  final Service service;
  final List<Skills> skills;
  final UserRatings serviceRatings;

  const ServiceDetailScreen({
    Key? key,
    required this.serviceProvider,
    required this.service,
    required this.skills,
    required this.serviceRatings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(
        serviceProvider: serviceProvider,
        service: service,
        skills: skills,
        serviceRatings: serviceRatings,
      ),
    );
  }
}
