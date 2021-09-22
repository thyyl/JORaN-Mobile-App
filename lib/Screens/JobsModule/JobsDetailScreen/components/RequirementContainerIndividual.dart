import 'package:flutter/material.dart';

class RequirementContainerIndividual extends StatelessWidget {
  const RequirementContainerIndividual({
    Key? key,
    required this.requirement,
  }) : super(key: key);

  final String requirement;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.08,
      width: size.width * 0.25,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0XFFEAFFFE).withOpacity(0.5),
              Color(0XFFCDC9F1).withOpacity(0.5),
            ],
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              requirement,
              style: TextStyle(
                  color: Color(0XFF76787A),
                  fontWeight: FontWeight.w600,
                  fontSize: 17.5,
                  fontFamily: "Nunito"
              ),
            )
          ],
        ),
      ),
    );
  }
}