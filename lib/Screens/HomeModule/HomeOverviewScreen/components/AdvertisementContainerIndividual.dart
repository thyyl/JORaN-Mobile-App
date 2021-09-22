import 'package:flutter/material.dart';

class AdvertisementContainerIndividual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.height * 0.35,
        width: size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.0),
        ),
        child: Stack(
          children: [
            Container(
              height: size.height * 0.4,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35.0),
                child: Image(
                  image: AssetImage("assets/pictures/ad1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: size.height * 0.4,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: Colors.black.withOpacity(0.25),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amazon.com, Inc.",
                      style: TextStyle(
                        fontFamily: "NunitoSans",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 15
                      ),
                    ),
                    Text(
                      "Cloud Computing Engineer",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}