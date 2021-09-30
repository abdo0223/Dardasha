class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String message;
  String status;
  bool select = false;
  int id;
  ChatModel({
    this.name,
    this.icon,
    this.isGroup,
    this.time,
    this.message,
    this.status,
    this.select = false,
    this.id,
  });
}

class StoryItems {
  String name;
  String icon;
  bool isGroup;
  String time;
  String message;
  String status;
  bool select = false;
  int id;
  StoryItems({
    this.name,
    this.icon,
    this.isGroup,
    this.time,
    this.message,
    this.status,
    this.select = false,
    this.id,
  });
}
