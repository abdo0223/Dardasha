import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/Screens/IndividualPage.dart';
import 'package:chatapp/Widget/storypageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallCard extends StatelessWidget {
  const CallCard({Key key, this.chatModel, this.sourchat}) : super(key: key);
  final ChatModel chatModel;
  final ChatModel sourchat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: SvgPicture.asset(
                chatModel.isGroup ? "assets/groups.svg" : "assets/person.svg",
                color: Colors.white,
                height: 36,
                width: 36,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  chatModel.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.call,
                  size: 25,
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_made,
                  size: 20,
                  color: Colors.red,
                ),
                Text("25 Septamber,"),
                Text(chatModel.time),
                SizedBox(
                  width: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
