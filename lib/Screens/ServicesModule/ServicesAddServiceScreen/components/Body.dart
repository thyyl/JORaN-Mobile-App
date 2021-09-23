import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesAddServiceScreen/components/AddServiceForm.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesAddServiceScreen/components/Background.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesAddServiceScreen/components/TopLevelBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopLevelBar(),
              SizedBox(height: size.height * 0.05),
              Text(
                "Let's start a \nservice",
                style: TextStyle(
                  color: Color(0XFF76787A),
                  fontFamily: "NunitoSans",
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: size.height * 0.05),
              AddServiceForm()
            ],
          ),
        ),
      ),
    );
  }
}
