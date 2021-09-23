import 'package:flutter/material.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/components/AppliedContainerIndividual.dart';

class AppliedContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.475,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AppliedContainerIndividual(
              type: "Job Application",
              image: "assets/logo/USM.png",
            ),
          ],
        ),
      ),
    );
  }
}