import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ChatModule/ChatScreen/components/HeaderContainer.dart';

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
          children,
          HeaderContainer(),
        ],
      )
    );
  }
}
