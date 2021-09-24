import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.175,
      width: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image(
            image: AssetImage("assets/logo/joran.png"),
            width: size.width * 0.55,
          ),
        ],
      ),
    );
  }
}
