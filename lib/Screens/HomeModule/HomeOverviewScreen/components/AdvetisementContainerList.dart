import 'package:flutter/material.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/AdvertisementContainerIndividual.dart';

class AdvertisementContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.35,
      width: size.width - 30,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            AdvertisementContainerIndividual(),
            SizedBox(width: size.width * 0.1),
            AdvertisementContainerIndividual(),
            SizedBox(width: size.width * 0.1),
          ],
        ),
      ),
    );
  }
}