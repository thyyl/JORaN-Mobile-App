import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Models/ChatModel.dart';
import 'package:joran_app/Provider/ChatProvider.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/components/ChatContainer.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/components/HeaderContainer.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<ChatRoom> chatRoomList = Provider.of<ChatProvider>(context).chatRoomList;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              HeaderContainer(),
              Container(
                height: size.height * 0.815,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: List.generate(chatRoomList.length, (index) =>
                        ChatContainer(
                          chatRoom: chatRoomList[index]
                        )
                      ),
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
}
