import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/components/EditProfileForm.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/components/ProfilePicture.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditScreen/components/TopLevelBar.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/UserProfileOverviewScreen.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final globalKey = GlobalKey<EditProfileFormState>();

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;
    Size size = MediaQuery.of(context).size;

    Future<void> validateForm() async {
      bool nothingToUpdate = true;
      String message = "There is nothing to update!";

      // if (globalKey.currentState!.nameController.text.isNotEmpty) {
      //   if (checkDifference(globalKey.currentState!.nameController.text, user.name)) {
      //
      //    UPDATE ENDPOINT
      //     Map<String, dynamic> response = await updateName(jwt, globalKey.currentState!.nameController.text);
      //
      //     if (response["code"] == 200) {
      //
      //       nothingToUpdate = false;
      //       message = "Change successful!";
      //     }
      //   }
      // }
      //
      // if (globalKey.currentState!.contactController.text.isNotEmpty) {
      //   if (checkDifference(globalKey.currentState!.contactController.text, user.contact)) {
      //
      //     // TODO update database
      //     nothingToUpdate = false;
      //      message = "Change successful!";
      //   }
      // }
      //
      // if (checkDifference(globalKey.currentState!.educationSelection, user.educationLevel)) {
      //
      //   // TODO update database
      //   nothingToUpdate = false;
      //    message = "Change successful!";
      // }
      //
      // if (globalKey.currentState!.specialisationController.text.isNotEmpty) {
      //   if (checkDifference(globalKey.currentState!.specialisationController.text, user.specialisation)) {
      //
      //
      //     // TODO update database
      //     nothingToUpdate = false;
      //      message = "Change successful!";
      //   }
      // }
      //

      if (!nothingToUpdate)

        // TODO PLEASE CHANGE TO POP AND PUSH
        Navigator.pushReplacement(
            context, MaterialPageRoute(
            builder: (context) => UserProfileOverviewScreen()
        ));

      showNotification(message);
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: size.height * 1.215,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopLevelBar(
                  onSaved: validateForm,
                ),
                SizedBox(height: size.height * 0.025),
                ProfilePicture(
                  image: user.userProfilePicture,
                ),
                SizedBox(height: size.height * 0.05),
                EditProfileForm(
                  key: globalKey,
                  educationSelection: user.educationLevel,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool checkDifference(String firstText, String secondText) {
    if (firstText == secondText)
      return false;
    return true;
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





