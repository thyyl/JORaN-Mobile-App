import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Models/ChatModel.dart';

class ChatBubbles extends StatelessWidget {

  final bool isChat;
  final bool isSender;
  final String text;

  const ChatBubbles({
    Key? key,
    required this.isChat,
    required this.isSender,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin: BubbleEdges.symmetric(vertical: 10),
      alignment: getAlignment(),
      nip: getBubbleNip(),
      color: getColors(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
        child: Text(
            text,
            textAlign: getTextAlign(),
            style: TextStyle(
              fontSize: 17.5,
              fontFamily: "NunitoSans",
            )
        ),
      ),
    );
  }

  Alignment getAlignment() {
    if (isChat) {
      if (isSender)
        return Alignment.topLeft;
      else
        return Alignment.topRight;
    }

    return Alignment.center;
  }

  BubbleNip getBubbleNip() {
    if (isChat) {
      if (isSender)
        return BubbleNip.leftTop;
      else
        return BubbleNip.rightTop;
    }

    return BubbleNip.no;
  }

  Color getColors() {
    if (isChat) {
      if (isSender)
        return Colors.white;
      else
        return Color(0XFFE7FFDB);
    }

    return Color.fromRGBO(212, 234, 244, 1.0);
  }

  TextAlign getTextAlign() {
    if (isChat) {
      if (isSender)
        return TextAlign.left;
      else
        return TextAlign.right;
    }

    return TextAlign.center;
  }
}
