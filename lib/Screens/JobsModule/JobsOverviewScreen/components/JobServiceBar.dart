import 'package:flutter/material.dart';

class JobServiceBar extends StatelessWidget {
  const JobServiceBar({
    Key? key,
    required this.serviceFunction,
  }) : super(key: key);

  final VoidCallback serviceFunction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.06,
        decoration: BoxDecoration(
            color: Color(0XFFEDF1F4),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(-3, -3),
                  color: Colors.white.withOpacity(0.75)
              ),
              BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(3, 3),
                  color: Colors.black.withOpacity(0.15)
              ),
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              width: size.width * 0.38,
              child: Center(
                child: Text(
                  "Jobs",
                  style: TextStyle(
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 22.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            VerticalDivider(thickness: 1.5),
            GestureDetector(
              onTap: serviceFunction,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                width: size.width * 0.38,
                child: Center(
                  child: Text(
                    "Services",
                    style: TextStyle(
                      color: Color(0XFF76787A),
                      fontFamily: "NunitoSans",
                      fontSize: 22.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}