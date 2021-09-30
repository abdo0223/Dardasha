class MessageModel {
  String type;
  String message;
  String time;
  MessageModel({this.message, this.type, this.time});
}

class MessageModel00 {
  String senderId;
  String receiverId;
  String dateTime;
  String text;
  String imagePath;

  MessageModel00({
    this.senderId,
    this.receiverId,
    this.dateTime,
    this.text,
    this.imagePath,
  });

  MessageModel00.fromJson(Map<String, dynamic> json) {
    senderId = json['senderId'];
    receiverId = json['receiverId'];
    dateTime = json['dateTime'];
    text = json['text'];
    imagePath = json['imagePath'];
  }

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'receiverId': receiverId,
      'dateTime': dateTime,
      'text': text,
      'imagePath': imagePath,
    };
  }
}
