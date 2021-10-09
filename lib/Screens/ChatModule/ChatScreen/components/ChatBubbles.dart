import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:joran_app/FullScreenImage.dart';
import 'package:joran_app/Models/ChatModel.dart';

class ChatBubbles extends StatelessWidget {

  final bool isNotDateTime;
  final bool isSender;
  final Chat chat;

  const ChatBubbles({
    Key? key,
    required this.isNotDateTime,
    required this.isSender,
    required this.chat,
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
        child: Column(
          crossAxisAlignment: getCrossAxisAlignment(),
          children: [
            chat.isChat
             ? Text(
                chat.content,
                textAlign: getTextAlign(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "NunitoSans",
                )
            )
            : FullScreenWidget(
              disposeLevel: DisposeLevel.Low,
                backgroundColor: Colors.transparent,
                child: Hero(
                  tag: chat.chatID,
                  child: Container(
                    height: 150,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(chat.content),
                    ),
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                  DateFormat('Hm').format(chat.dateTime),
                  textAlign: getTextAlign(),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: "NunitoSans",
                  )
              ),
            )
          ],
        )
      ),
    );
  }

  Alignment getAlignment() {
    if (isNotDateTime) {
      if (isSender)
        return Alignment.topLeft;
      else
        return Alignment.topRight;
    }

    return Alignment.center;
  }

  BubbleNip getBubbleNip() {
    if (isNotDateTime) {
      if (isSender)
        return BubbleNip.leftTop;
      else
        return BubbleNip.rightTop;
    }

    return BubbleNip.no;
  }

  Color getColors() {
    if (isNotDateTime) {
      if (isSender)
        return Colors.white;
      else
        return Color(0XFFD4F4DD);
    }

    return Color.fromRGBO(212, 234, 244, 1.0);
  }

  TextAlign getTextAlign() {
    if (isNotDateTime) {
      if (isSender)
        return TextAlign.left;
      else
        return TextAlign.right;
    }

    return TextAlign.center;
  }

  CrossAxisAlignment getCrossAxisAlignment() {
    if (isNotDateTime) {
      if (isSender)
        return CrossAxisAlignment.start;
      else
        return CrossAxisAlignment.end;
    }

    return CrossAxisAlignment.center;
  }
}
