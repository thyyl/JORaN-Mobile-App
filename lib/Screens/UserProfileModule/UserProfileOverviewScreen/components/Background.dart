import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.children,
  }) : super(key: key);

  final Widget children;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Color(0XFFEDF1F4),
      child: Stack(
        children: [
          Positioned(
            right: size.width * 0.1,
            top: size.height * 0.1,
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.375,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: AssetImage("assets/pictures/user.jpg"),
                    fit: BoxFit.cover,
                  )
              ),
              // TODO FADE IN IMAGE FOR USER PROFILE
              // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
            ),
          ),
          children,
        ],
      ),
    );
  }
}


