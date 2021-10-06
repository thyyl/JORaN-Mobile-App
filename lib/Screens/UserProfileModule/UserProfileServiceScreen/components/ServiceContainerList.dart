import 'package:flutter/material.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Provider/ServiceProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/components/ServiceContainer.dart';
import 'package:provider/provider.dart';

class ServiceContainerList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Service> serviceList = Provider.of<ServiceProvider>(context).serviceList;

    return Column(
      children: List.generate(serviceList.length, (index) {
        return ServiceContainer(
          service: serviceList[index],
        );
      })
    );
  }
}