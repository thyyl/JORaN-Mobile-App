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

    return Stack(
      children: [
        Container(
          height: size.height * 0.2,
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
                  "About",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "NunitoSans"
                  ),
                ),
                Container(
                  height: size.height * 0.1,
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
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: size.height * 0.05,
              width: size.width * 0.35,
              decoration: BoxDecoration(
                color: Color(0XFF87A5A6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0)
                )
              ),
              child: Center(
                child: Text(
                  "Apply Now!",
                  style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 17.5,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}