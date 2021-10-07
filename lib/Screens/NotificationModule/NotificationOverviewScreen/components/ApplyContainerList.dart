import 'package:flutter/material.dart';
import 'package:joran_app/Models/NotificationModel.dart';
import 'package:joran_app/Provider/NotificationProvider.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/components/AppliedContainerIndividual.dart';
import 'package:provider/provider.dart';

class AppliedContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<NotificationModel> notificationList
      = Provider.of<NotificationProvider>(context).notificationList;

    return Column(
      children: List.generate(notificationList.length, (index) =>
          AppliedContainerIndividual(
            notification: notificationList[index],
          ),
      ),
      // children: [
      //   AppliedContainerIndividual(
      //     type: "Job Application",
      //   ),
      // ],
    );
  }
}