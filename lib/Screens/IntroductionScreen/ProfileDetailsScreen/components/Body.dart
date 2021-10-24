import 'package:concentric_transition/page_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Screens/IntroductionScreen/PlanSelectionScreen/PlanSelectionScreen.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/Background.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/ProfileForm.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/ProfilePicture.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/TopLevelBar.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final globalKey = GlobalKey<ProfileFormState>();

  @override
  Widget build(BuildContext context) {

    Future<void> validateForm() async {
       if (globalKey.currentState!.nameController.text.isEmpty ||
        globalKey.currentState!.contactController.text.isEmpty ||
        globalKey.currentState!.specialisationController.text.isEmpty
        ) {
          showNotification("Please enter all of the field");
          return;
        } else {
           Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
            return PlanSelectionScreen();
           }));
        }
    }


    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopLevelBar(
                  onSaved: () async {
                    validateForm();
                  },
                ),
                SizedBox(height: size.height * 0.025),
                ProfilePicture(image: "assets/pictures/user.png"),
                ProfileForm(
                  key: globalKey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ToastFuture showNotification(String content) {
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


