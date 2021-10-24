import 'package:flutter/material.dart';

class TopLevelBar extends StatelessWidget {
  final VoidCallback onSaved;

  const TopLevelBar({
    Key? key,
    required this.onSaved
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "About You",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "NunitoSans",
              fontSize: 27.5,
              fontWeight: FontWeight.w700
          ),
        ),
        GestureDetector(
          onTap: onSaved,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.done),
          ),
        ),
      ],
    );
  }
}