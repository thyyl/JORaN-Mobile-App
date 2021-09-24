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
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white
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