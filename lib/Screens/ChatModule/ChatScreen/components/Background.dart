import 'package:flutter/material.dart';
import 'package:joran_app/Models/ChatModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Provider/UserProvider.dart';
import 'package:joran_app/Screens/ChatModule/ChatRateUserScreen/ChatRateUserScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.children,
    required this.chatRoom,
  }) : super(key: key);

  final Widget children;
  final ChatRoom chatRoom;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    User user = Provider.of<UserProvider>(context).user;

    late User chatUser;

    for (User chatParticipant in chatRoom.chatParticipants)
      if (user.userID != chatParticipant.userID)
        chatUser = chatParticipant;

    return Container(
      width: size.width,
      height: size.height,
      color: Color(0XFFEDF1F4),
      child: Stack(
        children: [
          children,
          Container(
            alignment: Alignment.bottomLeft,
            height: size.height * 0.125,
            width: size.width,
            decoration: BoxDecoration(
                color: Color(0XFFEDF1F4),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(-1, 1),
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 2.0
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Icon(Icons.arrow_back_ios_rounded),
                            ),
                          ),
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
                          GestureDetector(
                            onTap: () => Navigator.push(context, PageTransition(
                                type: PageTransitionType.fade, child: ChatRateUserScreen())
                            ),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Icon(Icons.favorite_outline_rounded),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      chatUser.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: "NunitoSans",
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
