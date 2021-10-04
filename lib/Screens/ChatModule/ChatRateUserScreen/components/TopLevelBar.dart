import 'package:flutter/material.dart';

class TopLevelBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.close_rounded,
                  size: 40,
                ),
              ),
              Text(
                "User Rating",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "NunitoSans",
                    fontSize: 22.5
                ),
              ),
              Container(
                width: 40,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 30.0, 10, 0),
            child: Text(
              "How was the service offered?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w900,
              ),
            ),
          )
        ],
      ),
    );
  }
}
