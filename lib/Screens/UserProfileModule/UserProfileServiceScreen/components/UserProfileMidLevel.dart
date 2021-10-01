import 'package:flutter/material.dart';

class UserProfileMidLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
        height: size.height * 0.325,
        width: size.width * 0.5,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(
              image: AssetImage("assets/pictures/user.jpg"),
              fit: BoxFit.cover,
            )
        ),
        // TODO FADE IN IMAGE FOR USER PROFILE
        // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
      ),
    );
  }
}