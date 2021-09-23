import 'package:flutter/material.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/components/ApplyContainerList.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/components/CarouselAdvertisement.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselAdvertisement(),
              SizedBox(height: size.height * 0.025),
              Text(
                "Notification",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  fontFamily: "NunitoSans",
                  color: Color(0XFF76787A)
                ),
              ),
              SizedBox(height: size.height * 0.025),
              AppliedContainerList()
            ],
          )
        ),
      ),
    );
  }
}


