import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/ChatModel.dart';

class ChatProvider extends ChangeNotifier {
  late List<ChatRoom> _chatRoomList;
  late ChatRoom _chatRoom;
  late List<Chat> _chatList;

  List<ChatRoom> get chatRoomList => _chatRoomList;
  ChatRoom get chatRoom => _chatRoom;
  List<Chat> get chatList => _chatList;

  void setChatRoomList(List<ChatRoom> chatRoomList) {
    _chatRoomList = chatRoomList;
    notifyListeners();
  }

  void setChatRoom(ChatRoom chatRoom) {
    _chatRoom = chatRoom;
    notifyListeners();
  }

  void setChatList(List<Chat> chatList) {
    _chatList = chatList;
    notifyListeners();
  }

  void addNewChatRoom(ChatRoom chatRoom) {
    _chatRoomList.add(chatRoom);
    notifyListeners();
  }

  void addNewChat(Chat chat) {
    _chatList.add(chat);
    notifyListeners();
  }

  void updateNewMessage(String id) {
    _chatRoomList.firstWhere((element) =>
        element.chatRoomID == id
    ).newMessages = 0;

    notifyListeners();
  }
}