import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/Screens/Homescreen.dart';
import 'package:chatapp/Screens/SelectContact.dart';
import 'package:chatapp/Widget/callcard.dart';
import 'package:chatapp/Widget/storycard.dart';
import 'package:flutter/material.dart';

class CallScareen extends StatefulWidget {
  CallScareen({Key key, this.chatmodels, this.sourchat}) : super(key: key);
  final List<ChatModel> chatmodels;
  final ChatModel sourchat;

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<CallScareen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: ListView.builder(
          itemCount: widget.chatmodels.length,
          itemBuilder: (contex, index) => CallCard(
            chatModel: widget.chatmodels[index],
            sourchat: widget.sourchat,
          ),
        ),
      ),
    );
  }
}
