import 'package:joran_app/Models/UserModel.dart';

class ChatRoom {
  String chatRoomID;
  List<User> chatParticipants;
  int newMessages;

  ChatRoom({
    required this.chatRoomID,
    required this.chatParticipants,
    required this.newMessages,
  });

  factory ChatRoom.fromJson(Map<String, dynamic> responseData){
    return ChatRoom(
      chatRoomID: responseData['chatRoomID'],
      chatParticipants: responseData['chatParticipants'],
      newMessages: responseData['newMessages'],
    );
  }
}

class Chat {
  String chatID;
  String chatRoomID;
  String content;
  String sender;
  DateTime dateTime;
  bool isChat;

  Chat({
    required this.chatID,
    required this.chatRoomID,
    required this.content,
    required this.sender,
    required this.dateTime,
    required this.isChat,
  });

  factory Chat.fromJson(Map<String, dynamic> responseData){
    return Chat(
      chatID: responseData['chatID'],
      chatRoomID: responseData['chatRoomID'],
      content: responseData['text'],
      sender: responseData['sender'],
      dateTime: responseData['dateTime'],
      isChat: responseData['isChat'],
    );
  }
}