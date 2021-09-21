import 'package:flutter/material.dart';

class MenuIndividualContainer extends StatelessWidget {
  const MenuIndividualContainer({
    Key? key,
    required this.color,
    required this.title,
    required this.description,
  }) : super(key: key);

  final Color color;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.22,
      width: size.width * 0.375,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.5,
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              description,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w700
              ),
            ),
          ],
        ),
      ),
    );
  }
}