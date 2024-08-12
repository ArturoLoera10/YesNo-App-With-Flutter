import 'package:flutter/material.dart';
import 'package:yes_no_app_two/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Mundo', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);

    messageList.add(newMessage);

    notifyListeners();
  }
}
