import 'dart:math';

import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ChatModule/ChatScreen/components/Background.dart';
import 'package:joran_app/Screens/ChatModule/ChatScreen/components/ChatFakeData.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: size.height * 0.125),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  height: size.height * 0.72,
                  width: size.width,
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      children: List.generate(chatFakeData.length, (index) {
                        return chatFakeData[index];
                      })
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                width: size.width,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        buildMessageInput(),
                        buildSendButton(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildSendButton() {
    return GestureDetector(
      onTap: () {
        if (_messageController.text.isNotEmpty)
          _messageController.clear();
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0XFF87A5A6),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.send_rounded,
          color: Colors.white,
        ),
      ),
    );
  }

  Stack buildMessageInput() {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            scrollPhysics: BouncingScrollPhysics(),
            decoration: InputDecoration(
              hintText: "Message",
              enabledBorder: outlineBorder(),
              focusedBorder: outlineBorder(),
              hintStyle: TextStyle(
                  fontFamily: "NunitoSans",
                  fontSize: 17.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(.25)
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: EdgeInsets.only(top: 20, left: 20, right: 35),
            ),
            style: TextStyle(
              fontFamily: "NunitoSans",
              fontSize: 17.5,
              fontWeight: FontWeight.w700,
              color: Colors.black.withOpacity(.5),
            ),
            controller: _messageController,
          ),
        ),
        buildFileAttachment()
      ],
    );
  }

  Positioned buildFileAttachment() {
    return Positioned(
      right: 12.5,
      bottom: 12.5,
      child: Transform.rotate(
        angle: pi / 4,
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.attach_file,
            color: Colors.black.withOpacity(.5),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Colors.transparent),
      gapPadding: 10,
    );
  }
}
