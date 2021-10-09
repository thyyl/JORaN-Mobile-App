import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:joran_app/Models/ApplicationModel.dart';
import 'package:joran_app/Models/NotificationModel.dart';
import 'package:joran_app/Provider/NotificationProvider.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/ApplicationAcceptedRejected.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/AppliedContainerIndividual.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/Background.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/Connector.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/StatusContainer.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/TopLevelBar.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.notification,
  }) : super(key: key);

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    List<Application> applicationList = Provider.of<NotificationProvider>(context).applicationList;
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopLevelBar(),
                SizedBox(height: size.height * 0.03),
                AppliedContainerIndividual(
                  notification: notification
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 0, 35.0, 10),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.8,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(applicationList.length, (index) {
                        return (applicationList[index].applicationCategory == "Accepted"
                          || applicationList[index].applicationCategory == "Rejected")
                          ? ApplicationAcceptedRejected(
                            date: DateFormat("MMM d").format(applicationList[index].dateTime),
                            status: applicationList[index].applicationCategory,
                          )

                          : Column(
                            children: [
                              StatusContainer(
                                date: DateFormat("MMM d").format(applicationList[index].dateTime),
                                status: applicationList[index].applicationCategory,
                              ),
                              Connector(),
                            ],
                          );
                      })
                      // children: [
                      //   StatusContainer(
                      //     date: "8 Sep",
                      //     status: "Application",
                      //   ),
                      //   Connector(),
                      //   StatusContainer(
                      //     date: "9 Sep",
                      //     status: "Interview",
                      //   ),
                      //   Connector(),
                      //   StatusContainer(
                      //     date: "9 Sep",
                      //     status: "Practical",
                      //   ),
                      //   Connector(),
                      //   ApplicationAcceptedRejected(
                      //     date: "10 Sep",
                      //     status: "Accepted",
                      //   ),
                      //
                      // ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


