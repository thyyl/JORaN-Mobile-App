import 'package:flutter/material.dart';

class CategoriesIndividual extends StatelessWidget {
  const CategoriesIndividual({
    Key? key,
    required this.category,
    required this.function,
  }) : super(key: key);

  final String category;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: size.height * 0.075,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0XFFEDF1F4).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image(
                            image: AssetImage("assets/pictures/${category.toLowerCase()}.png")
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Text(
                      category,
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0XFFEDF1F4).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Icon(
                        Icons.arrow_forward_ios_rounded
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}