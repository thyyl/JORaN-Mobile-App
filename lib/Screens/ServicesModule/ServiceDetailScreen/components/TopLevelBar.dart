import 'package:flutter/material.dart';

class TopLevelBar extends StatelessWidget {
  const TopLevelBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        Text(
          "Service Detail",
          style: TextStyle(
              color: Color(0XFF76787A),
              fontSize: 25,
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.bold
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15)
          ),
        ),
      ],
    );
  }
}