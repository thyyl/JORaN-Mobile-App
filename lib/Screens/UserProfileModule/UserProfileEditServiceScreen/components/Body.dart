import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Provider/ServiceProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditServiceScreen/components/TopLevelBar.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditServiceScreen/components/EditServiceForm.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditServiceScreen/components/Background.dart';
import 'package:provider/provider.dart';

import 'TopLevelBar.dart';

class Body extends StatelessWidget {
  final Service service;

  const Body({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopLevelBar(
                  deleteFunction: () => deleteServiceFromList(context),
                ),
                SizedBox(height: size.height * 0.05),
                Text(
                  "Edit your service",
                  style: TextStyle(
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                EditServiceForm(
                  service: service,
                  category: service.category,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void deleteServiceFromList(BuildContext context) {
    Provider.of<ServiceProvider>(context, listen: false).deleteService(service.serviceID);

    // TODO UPDATE DATABASE

    Navigator.pop(context);

    showNotification("Successfully deleted.", context);
  }

  ToastFuture showNotification(String content, BuildContext context) {
    return showToast(
      content,
      context: context,
      animation: StyledToastAnimation.fade,
      reverseAnimation: StyledToastAnimation.fade,
      duration: Duration(seconds: 3),
      position: StyledToastPosition.center,
    );
  }
}
