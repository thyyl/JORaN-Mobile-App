import 'package:flutter/material.dart';

class AboutYouContainer extends StatelessWidget {
  const AboutYouContainer({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.15,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.75),
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About you",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "NunitoSans"
              ),
            ),
            Container(
              height: size.height * 0.09,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: "NunitoSans"
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}