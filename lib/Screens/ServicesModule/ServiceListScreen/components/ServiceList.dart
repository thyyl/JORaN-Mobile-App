import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/MarketServiceProvider.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceListScreen/components/ServiceContainer.dart';
import 'package:provider/provider.dart';

class ServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Service> marketServiceList = Provider.of<MarketServiceProvider>(context).serviceList;

    return Column(
      children:
        marketServiceList.length > 0
          ? List.generate(marketServiceList.length, (index) =>
            ServiceContainer(
              serviceProvider: getServiceProvider(marketServiceList[index].userID),
              service: marketServiceList[index],
            )
          )
          : [
            Container(
              height: size.height * 0.35,
              child: Image(
                image: AssetImage("assets/pictures/notFound.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "There hasn't been any user providing that service yet...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            )
          ]
    );
  }

  User getServiceProvider(String id) {
    return fakeUserData;
  }
}
