import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/UserProfileOverviewScreen.dart';
import 'package:page_transition/page_transition.dart';

class TopLevelBar extends StatelessWidget {
  const TopLevelBar({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context, PageTransition(
              type: PageTransitionType.fade, child: UserProfileOverviewScreen())
          ),
          child: Container(
            height: 45,
            width: 45,
            child: Hero(
              tag: "profile",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: size.width * 0.05),
        Text(
          "Hello, $name!",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              fontFamily: "NunitoSans",
              color: Colors.black.withOpacity(0.65)
          ),
        )
      ],
    );
  }
}