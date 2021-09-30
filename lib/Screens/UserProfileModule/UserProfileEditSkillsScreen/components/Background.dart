import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();

  const Background({
    Key? key,
    required this.children,
  }) : super(key: key);

  final Widget children;
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height - 50,
      color: Color(0XFFEDF1F4),
      child: Stack(
        children: [
          // Positioned(
          //     bottom: 0,
          //     child: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 30.0),
          //       child: SkillsContainer(),
          //     )
          // ),
          widget.children,
        ],
      ),
    );
  }
}



