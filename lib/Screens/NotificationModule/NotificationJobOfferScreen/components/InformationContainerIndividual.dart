import 'package:flutter/material.dart';

class InformationContainerIndividual extends StatelessWidget {

  const InformationContainerIndividual({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: size.height * 0.125,
        width: size.width * 0.2,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    color: Color(0XFF76787A),
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}