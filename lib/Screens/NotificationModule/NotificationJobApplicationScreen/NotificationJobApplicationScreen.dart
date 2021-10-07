import 'package:flutter/material.dart';
import 'package:joran_app/Models/NotificationModel.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/components/Body.dart';

class NotificationJobApplicationScreen extends StatelessWidget {
  const NotificationJobApplicationScreen({
    Key? key,
    required this.notification,
  }) : super(key: key);

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(
        notification: notification
      ),
    );
  }
}
