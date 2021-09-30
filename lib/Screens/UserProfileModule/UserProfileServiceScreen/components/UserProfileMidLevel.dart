import 'package:flutter/material.dart';

class UserProfileMidLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: size.width * 0.4,
                  child: Text(
                    "Abigail Sarah Williams",
                    style: TextStyle(
                        color: Color(0XFF76787A),
                        fontSize: 25,
                        fontFamily: "NunitoSans",
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.4,
                  child: Text(
                    "Lending a kind hand",
                    style: TextStyle(
                        color: Color(0XFF76787A),
                        fontSize: 25,
                        fontFamily: "NunitoSans",
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.375,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                  child: Image(
                    image: AssetImage("assets/pictures/user.jpg"),
                    fit: BoxFit.cover,
                  )
              ),
              // TODO FADE IN IMAGE FOR USER PROFILE
              // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
            ),
          ),
        ],
      ),
    );
  }
}