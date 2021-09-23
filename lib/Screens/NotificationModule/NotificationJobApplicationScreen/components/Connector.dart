import 'package:flutter/material.dart';

class Connector extends StatelessWidget {
  const Connector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 95),
        child: Container(
          height: 20,
          width: 2,
          color: Color(0XFF1F1B58),
        )
    );
  }
}