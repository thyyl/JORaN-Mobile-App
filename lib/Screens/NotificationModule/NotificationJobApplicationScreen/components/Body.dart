import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/ApplicationAcceptedRejected.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/AppliedContainerIndividual.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/Background.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/Connector.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/StatusContainer.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/TopLevelBar.dart';

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
              TopLevelBar(),
              SizedBox(height: size.height * 0.03),
              AppliedContainerIndividual(),
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
                    children: [
                      StatusContainer(
                        date: "8 Sep",
                        status: "Application",
                      ),
                      Connector(),
                      StatusContainer(
                        date: "9 Sep",
                        status: "Interview",
                      ),
                      Connector(),
                      StatusContainer(
                        date: "9 Sep",
                        status: "Practical",
                      ),
                      Connector(),
                      ApplicationAcceptedRejected(
                        date: "10 Sep",
                        status: "Accepted",
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


