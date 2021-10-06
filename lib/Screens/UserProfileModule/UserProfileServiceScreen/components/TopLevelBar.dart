import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesAddServiceScreen/ServicesAddServiceScreen.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TopLevelBar extends StatelessWidget {
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
          "Your Services",
          style: TextStyle(
              color: Color(0XFF76787A),
              fontSize: 25,
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.bold
          ),
        ),
        GestureDetector(
          onTap: () => showCupertinoModalBottomSheet(
            context: context, builder: (context) => ServicesAddServiceScreen()
          ),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}