import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  StoryPageView({Key key, this.chatModel, this.sourchat}) : super(key: key);
  final ChatModel chatModel;
  final ChatModel sourchat;

  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();

    final List<StoryItem> storyItems = [
      StoryItem.text(
          title: 'عبدالغور البرعي وفاطنه كشري ', backgroundColor: Colors.red),
      StoryItem.pageImage(
          url:
              "https://www.masrtimes.com/upload/photo/news/1/4/600x338o/314.jpg?q=1",
          controller: _storyController),
      StoryItem.pageImage(
          url:
              "https://cdn.elwatannews.com/watan/840x473/15625828831568696309.jpg",
          controller: _storyController,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
