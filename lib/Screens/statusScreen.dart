import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/Screens/Homescreen.dart';
import 'package:chatapp/Screens/SelectContact.dart';
import 'package:chatapp/Widget/storycard.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  StatusScreen({Key key, this.chatmodels, this.sourchat}) : super(key: key);
  final List<ChatModel> chatmodels;
  final ChatModel sourchat;

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            color: Colors.white,
            elevation: 2,
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        'https://s3.amazonaws.com/wll-community-production/images/no-avatar.png'),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 1.0,
                    child: Container(
                        height: 20,
                        width: 20,
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.green[800],
                          ),
                          onPressed: () {},
                        )),
                  )
                ],
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap to add status update"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Text(
              "Recent Updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Scaffold(
              body: ListView.builder(
                itemCount: widget.chatmodels.length,
                itemBuilder: (contex, index) => StotyCard(
                  chatModel: widget.chatmodels[index],
                  sourchat: widget.sourchat,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
