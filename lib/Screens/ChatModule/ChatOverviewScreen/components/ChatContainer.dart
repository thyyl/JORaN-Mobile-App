import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/Models/ChatModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/ChatProvider.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/ChatModule/ChatScreen/ChatScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ChatContainer extends StatelessWidget {

  final ChatRoom chatRoom;

  const ChatContainer({Key? key, required this.chatRoom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    User user = Provider.of<UserProvider>(context).user;

    late User chatUser;

    for (User chatParticipant in chatRoom.chatParticipants)
      if (user.userID != chatParticipant.userID)
        chatUser = chatParticipant;

    return GestureDetector(
      onTap: () {
        Provider.of<ChatProvider>(context, listen: false).setChatList(
            fakeChatList.where((element) => element.chatRoomID == chatRoom.chatRoomID).toList()
        );

        Navigator.push(context, PageTransition(
            type: PageTransitionType.fade,
            child: ChatScreen(
              chatRoom: chatRoom,
            ))
        );

        Provider
            .of<ChatProvider>(context, listen: false)
            .updateNewMessage(chatRoom.chatRoomID);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                height: size.height * 0.075,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image(
                              image: AssetImage(chatUser.userProfilePicture),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (chatRoom.newMessages > 0)
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Text(
                                  chatRoom.newMessages.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: "NunitoSans"
                                  ),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        width: size.width * 0.75,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  chatUser.name,
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "NunitoSans",
                                      color: Colors.black
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Today",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "NunitoSans",
                                          color: Colors.black.withOpacity(0.4)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.black.withOpacity(0.4),
                                        size: 12.5,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: chatRoom.newMessages > 0
                                      ? FontWeight.w800 : FontWeight.w600,
                                  fontFamily: "NunitoSans",
                                  color: chatRoom.newMessages > 0
                                      ? Colors.black : Colors.black.withOpacity(0.4)
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                height: 0.5,
                width: size.width,
                color: Colors.grey.shade600.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
