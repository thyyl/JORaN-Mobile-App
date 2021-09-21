import 'package:flutter/material.dart';

class TextFieldLabel extends StatelessWidget {
  const TextFieldLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0XFF76787A),
        fontFamily: "NunitoSans",
        fontWeight: FontWeight.w600,
        fontSize: 17.5,
      ),
    );
  }
}