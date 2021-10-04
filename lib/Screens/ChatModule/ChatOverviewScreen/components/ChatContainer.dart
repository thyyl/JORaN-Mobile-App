import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ChatModule/ChatScreen/ChatScreen.dart';
import 'package:page_transition/page_transition.dart';

class ChatContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(
          type: PageTransitionType.fade, child: ChatScreen())
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                height: size.height * 0.075,
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                          image: AssetImage("assets/pictures/user.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                                  "Abigail Sarah Williams",
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
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "NunitoSans",
                                  color: Colors.black.withOpacity(0.4)
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
