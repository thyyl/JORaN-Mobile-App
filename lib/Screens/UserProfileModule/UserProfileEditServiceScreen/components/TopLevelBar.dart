import 'package:flutter/material.dart';

class TopLevelBar extends StatelessWidget {
  const TopLevelBar({
    Key? key, required this.deleteFunction,
  }) : super(key: key);

  final VoidCallback deleteFunction;

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
          "Edit Service",
          style: TextStyle(
              color: Color(0XFF76787A),
              fontSize: 25,
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.bold
          ),
        ),
        GestureDetector(
          onTap: deleteFunction,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.close),
          ),
        ),
      ],
    );
  }
}