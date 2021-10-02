import 'package:flutter/material.dart';
import 'package:joran_app/Screens/IntroductionScreen/PlanSelectionScreen/components/MenuContainer.dart';

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
      color: Color(0XFF83C5BE),
      child: Stack(
        children: [
          children,
          MenuContainer(),

        ],
      ),

    );
  }
}
