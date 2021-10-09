import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:joran_app/Models/ChatModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/ChatProvider.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/ChatModule/ChatScreen/components/Background.dart';
import 'package:joran_app/Screens/ChatModule/ChatScreen/components/ChatBubbles.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class Body extends StatefulWidget {
  final ChatRoom chatRoom;

  const Body({Key? key, required this.chatRoom}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _messageController = TextEditingController();
  late User user;

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    List<Chat> chatList = Provider.of<ChatProvider>(context).chatList;
    user = Provider.of<UserProvider>(context).user;
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        _messageController.clear();
        return true;
      },
      child: SafeArea(
        child: Background(
          chatRoom: widget.chatRoom,
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
                        children: List.generate(chatList.length, (index) {
                          return ChatBubbles(
                            isSender: chatList[index].sender != user.userID,
                            isNotDateTime: true,
                            chat: chatList[index],
                          );
                          // return chatFakeData[index];
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
      ),
    );
  }

  GestureDetector buildSendButton() {
    return GestureDetector(
      onTap: () {
        if (_messageController.text.replaceAll(' ', '').isNotEmpty && _messageController.text.replaceAll('\n', '').isNotEmpty) {
          Provider.of<ChatProvider>(context, listen: false).addNewChat(
              Chat(
                chatID: Uuid().v1(),
                chatRoomID: widget.chatRoom.chatRoomID,
                content: _messageController.text,
                dateTime: DateTime.now().add(Duration(hours: 8)),
                sender: user.userID,
                isChat: true,
              )
          );
        }

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

  Future takePicture() async {
    try {
      final XFile? _pickedFile = await _picker.pickImage(source: ImageSource.camera);

      if (_pickedFile == null)
        return;


    } on PlatformException {

    }
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
              contentPadding: EdgeInsets.only(top: 20, left: 20, right: 37.5),
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
      right: 13,
      bottom: 13,
      child: Row(
        children: [
          Transform.rotate(
            angle: pi / 4,
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.attach_file,
                color: Colors.black.withOpacity(.5),
              ),
            ),
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: takePicture,
            child: Icon(
              Icons.photo_camera_rounded,
              color: Colors.black.withOpacity(.5),
            ),
          )
        ],
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
