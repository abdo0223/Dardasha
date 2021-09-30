import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/Screens/Homescreen.dart';
import 'package:chatapp/Widget/ButtonCard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ChatModel sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Sela",
      isGroup: false,
      message: "عامل اي",
      time: "4:00",
      icon: "assets/Screenshot_1632700022.png",
      id: 1,
    ),
    ChatModel(
      name: "Labanita",
      isGroup: false,
      message: "انجوميه ",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),

    ChatModel(
      name: "Ahmed ali",
      isGroup: false,
      message: "ازيك يا عبدو",
      time: "8:00",
      icon: "person.svg",
      id: 3,
    ),

    ChatModel(
      name: "Seif nagib",
      isGroup: false,
      message: "اععععاااا",
      time: "2:00",
      icon: "person.svg",
      id: 4,
    ),
    ChatModel(
      name: "Sela",
      isGroup: false,
      message: "عامل اي",
      time: "4:00",
      icon: "assets/Screenshot_1632700022.png",
      id: 1,
    ),
    ChatModel(
      name: "Labanita",
      isGroup: false,
      message: "انجوميه ",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),

    ChatModel(
      name: "Ahmed ali",
      isGroup: false,
      message: "ازيك يا عبدو",
      time: "8:00",
      icon: "person.svg",
      id: 3,
    ),

    ChatModel(
      name: "Seif nagib",
      isGroup: false,
      message: "اععععاااا",
      time: "2:00",
      icon: "person.svg",
      id: 4,
    ),
    ChatModel(
      name: "Seif nagib",
      isGroup: false,
      message: "اععععاااا",
      time: "2:00",
      icon: "person.svg",
      id: 4,
    ),

    // ChatModel(
    //   name: "NodeJs Group",
    //   isGroup: true,
    //   message: "New NodejS Post",
    //   time: "2:00",
    //   icon: "group.svg",
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (contex, index) => InkWell(
                onTap: () {
                  sourceChat = chatmodels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Homescreen(
                                chatmodels: chatmodels,
                                sourchat: sourceChat,
                              )));
                },
                child: ButtonCard(
                  name: chatmodels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
