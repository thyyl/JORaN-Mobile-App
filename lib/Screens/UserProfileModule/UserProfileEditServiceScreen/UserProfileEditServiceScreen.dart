import 'package:flutter/material.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditServiceScreen/components/Body.dart';

class UserProfileEditServiceScreen extends StatelessWidget {

  final Service service;

  const UserProfileEditServiceScreen({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(
        service: service
      ),
    );
  }
}
