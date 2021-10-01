import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.bottomLeft,
      height: size.height * 0.125,
      width: size.width,
      decoration: BoxDecoration(
          color: Color(0XFFEDF1F4),
          boxShadow: [
            BoxShadow(
                offset: Offset(-1, 1),
                color: Colors.black.withOpacity(0.2),
                blurRadius: 2.0
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat('d MMMM y').format(DateTime.now()),
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: "NunitoSans",
                  color: Colors.black.withOpacity(0.5)
              ),
            ),
            Text(
              "Chat",
              style: TextStyle(
                  fontSize: 32.5,
                  fontWeight: FontWeight.w800,
                  fontFamily: "NunitoSans",
                  color: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}
