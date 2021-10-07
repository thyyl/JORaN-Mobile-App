import 'package:flutter/material.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/JobContainerIndividual.dart';

class JobContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        JobContainerIndividual(),
        SizedBox(height: size.height * 0.025),
        JobContainerIndividual(),
      ],
    );
  }
}
