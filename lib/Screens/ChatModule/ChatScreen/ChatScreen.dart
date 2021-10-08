import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Models/ChatModel.dart';
import 'package:joran_app/Screens/ChatModule/ChatScreen/components/Body.dart';

class ChatScreen extends StatelessWidget {
  final ChatRoom chatRoom;

  const ChatScreen({Key? key, required this.chatRoom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0XFFEDF1F4),
          statusBarIconBrightness: Brightness.dark
        ),
        toolbarHeight: 0,
        toolbarOpacity: 0,
        backgroundColor: Color(0XFFEDF1F4),
        elevation: 0,
      ),
      body: Body(
          chatRoom: chatRoom
      ),
    );
  }
}
