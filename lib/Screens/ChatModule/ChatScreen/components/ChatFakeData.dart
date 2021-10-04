import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Bubble> chatFakeData = [
  Bubble(
    alignment: Alignment.center,
    color: Color.fromRGBO(212, 234, 244, 1.0),
    child: Text('TODAY', textAlign: TextAlign.center, style: TextStyle(fontSize: 15.0)),
  ),
  Bubble(
    margin: BubbleEdges.symmetric(vertical: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: Color(0XFFE7FFDB),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
      child: Text(
        'Hello, World!',
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 17.5,
          fontFamily: "NunitoSans",
        )
      ),
    ),
  ),
  Bubble(
    margin: BubbleEdges.symmetric(vertical: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
      child: Text(
        'Hello, World! sndsjndsjndjsndsjnddsjnsjn',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.5,
          fontFamily: "NunitoSans",
        )
      ),
    ),
  ),
  Bubble(
    margin: BubbleEdges.symmetric(vertical: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: Color(0XFFE7FFDB),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
      child: Text(
          'Hello, World!',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 17.5,
            fontFamily: "NunitoSans",
          )
      ),
    ),
  ),

];