import 'package:flutter/material.dart';
import 'package:joran_app/Models/NotificationModel.dart';

class AppliedContainerIndividual extends StatelessWidget {
  const AppliedContainerIndividual({
    Key? key,
    required this.notification,
  }) : super(key: key);

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    String inMinutes = DateTime.now().difference(notification.notificationDate).inMinutes.toString();
    String inHours = DateTime.now().difference(notification.notificationDate).inHours.toString();
    String inDays = DateTime.now().difference(notification.notificationDate).inDays.toString();

    bool displayHours = DateTime.now().difference(notification.notificationDate).inHours > 0;
    bool displayDays = DateTime.now().difference(notification.notificationDate).inDays > 0;
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.135,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    notification.notificationType,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "NunitoSans",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    (() {
                      if (displayDays)
                       return "$inDays day(s) ago";

                      else if (displayHours)
                        return "$inHours hour(s) ago";

                      return "$inMinutes minute(s) ago";
                    }()),

                    style: TextStyle(
                        color: Color(0XFF76787A),
                        fontSize: 15,
                        fontFamily: "NunitoSans",
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              Text(
                notification.notificationDetails,
                style: TextStyle(
                    color: Color(0XFF76787A),
                    fontSize: 15,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}