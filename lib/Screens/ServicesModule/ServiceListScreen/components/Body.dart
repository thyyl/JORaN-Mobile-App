import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Provider/MarketServiceProvider.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceListScreen/components/Background.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceListScreen/components/CarouselAdvertisement.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceListScreen/components/ServiceList.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceListScreen/components/TopLevelBar.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Service> marketServiceList = Provider.of<MarketServiceProvider>(context).serviceList;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right:20, top: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 15.0),
                  child: TopLevelBar(),
                ),
                Container(
                  height: size.height * 0.8425,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        CarouselAdvertisement(),
                        SizedBox(height: size.height * 0.025),
                        Container(
                          child: Text(
                            "Found ${marketServiceList.length} results",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "NunitoSans",
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.025),
                        ServiceList()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}


