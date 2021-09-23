import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
    required this.function,
    required this.image,
  }) : super(key: key);

  final String image;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              image: AssetImage(image),
              width: size.width * 0.75,
              fit: BoxFit.cover,
            ),
            // TODO FADE IN IMAGE FOR USER PROFILE
            // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image)
          ),
        ),
        Positioned(
          bottom: 15,
          child: GestureDetector(
            onTap: function,
            child: GlassmorphicContainer(
              width: size.width * 0.5,
              height: size.height * 0.05,
              borderRadius: 10,
              blur: 20,
              alignment: Alignment.bottomCenter,
              border: 0,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.1),
                    Color(0xFFFFFFFF).withOpacity(0.05),
                  ],
                  stops: [
                    0.1,
                    1,
                  ]),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFffffff).withOpacity(0.5),
                  Color((0xFFFFFFFF)).withOpacity(0.5),
                ],
              ),
              child: Center(
                child: Text(
                  "Chat Now!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}