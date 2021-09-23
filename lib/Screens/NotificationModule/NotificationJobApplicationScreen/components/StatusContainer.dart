import 'package:flutter/material.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    Key? key,
    required this.status,
    required this.date,
  }) : super(key: key);

  final String status;
  final String date;

  bool otherIcon(String status) {
    if (status == "Accepted" || status == "Rejected" || status == "Application" || status == "Interview")
      return false;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      width: size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.125,
              child: Text(
                date,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A)
                ),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)
              ),
              child: Center(
                child: Image(
                  image: otherIcon(status)
                      ? AssetImage("assets/pictures/other.png")
                      : AssetImage("assets/pictures/${status.toLowerCase()}.png"),
                ),
              ),
            ),
            Container(
              width: size.width * 0.35,
              child: Text(
                status,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}