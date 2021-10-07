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
    List<Service> marketServiceList = Provider.of<MarketServiceProvider>(context).serviceList;
    Size size = MediaQuery.of(context).size;

    return Wrap(
      direction: Axis.horizontal,
      spacing: size.width * 0.05,
      children: List.generate(marketServiceList.length, (index) =>
        ServiceContainer(
          serviceProvider: getServiceProvider(marketServiceList[index].userID),
          service: marketServiceList[index],
        )
      ),
    );
  }

  User getServiceProvider(String id) {
    return fakeUserData;
  }
}
