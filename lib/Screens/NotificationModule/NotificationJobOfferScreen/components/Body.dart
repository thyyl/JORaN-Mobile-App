import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobOfferScreen/components/Background.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobOfferScreen/components/InformationContainerList.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobOfferScreen/components/MidLevelBar.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobOfferScreen/components/TopLevelBar.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopLevelBar(),
              SizedBox(height: size.height * 0.05),
              MidLevelBar(),
              SizedBox(height: size.height * 0.05),
              InformationContainerList(),
              SizedBox(height: size.height * 0.05),
              ConfirmationSlider(
                onConfirmation: () {},
                height: size.height * 0.075,
                width: size.width * 0.85,
                foregroundColor: Color(0XFF87A5A6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


