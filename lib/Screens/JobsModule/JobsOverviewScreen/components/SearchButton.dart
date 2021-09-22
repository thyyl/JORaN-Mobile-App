import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: GestureDetector(
        onTap: function,
        child: Container(
          width: size.width * 0.35,
          height: size.height * 0.05,
          decoration: BoxDecoration(
              color: Color(0XFF87A5A6),
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: Center(
            child: Text(
              "Search",
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
    );
  }
}