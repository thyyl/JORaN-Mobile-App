import 'package:flutter/material.dart';

class TopLevelBar extends StatelessWidget {
  const TopLevelBar({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: size.width * 0.05),
        Text(
          "Hello, $name!",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              fontFamily: "NunitoSans",
              color: Colors.black.withOpacity(0.65)
          ),
        )
      ],
    );
  }
}