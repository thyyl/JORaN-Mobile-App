import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    Key? key,
    required this.name,
    required this.category,
    required this.image,
    required this.title,
    required this.fee,
    required this.location,
  }) : super(key: key);

  final String name;
  final String image;
  final String category;
  final String title;
  final String fee;
  final String location;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              image: AssetImage(image),
              width: size.width * 0.75,
              fit: BoxFit.cover,
            ),
            // TODO FADE IN IMAGE FOR USER PROFILE
            // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image)
          ),
        ),
        GlassmorphicContainer(
          width: size.width * 0.75,
          height: size.height * 0.175,
          borderRadius: 20,
          blur: 50,
          alignment: Alignment.bottomCenter,
          border: 0,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFffffff).withOpacity(0.1),
                Color(0xFFFFFFFF).withOpacity(0.05),
              ],
              stops: [
                0.1,
                1,
              ]),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.5),
              Color((0xFFFFFFFF)).withOpacity(0.5),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name: $name",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Category: $category",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Title: $title",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Fee: $fee",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Location: $location",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}