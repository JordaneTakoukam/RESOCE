// class ChatModel {
//   final String id;
//   final bool userDestId;
//   final String userDestId;
//   final String destinataireName;
//   final String lastMessage;
//   final String unreadMessages;
//   final String messageStatus;
//   final String sendTime;

//   ChatModel({
//     required this.id,
//     required this.online,
//     required this.profileImage,
//     required this.destinataireName,
//     required this.lastMessage,
//     required this.unreadMessages,
//     required this.messageStatus,
//     required this.sendTime,
//   });

//   factory ChatModel.fromJson(Map<String, dynamic> json) {
//     return ChatModel(
//       id: json['id'],
//       online: json['online'],
//       profileImage: json['profileImage'],
//       destinataireName: json['destinataireName'],
//       lastMessage: json['lastMessage'],
//       unreadMessages: json['unreadMessages'],
//       messageStatus: json['messageStatus'],
//       sendTime: json['sendTime'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'online': online,
//       'profileImage': profileImage,
//       'destinataireName': destinataireName,
//       'lastMessage': lastMessage,
//       'unreadMessages': unreadMessages,
//       'messageStatus': messageStatus,
//       'sendTime': sendTime,
//     };
//   }
// }
//   // "id": "abcde",
//   //   "online": false,
//   //   "profileImage": "https://postimg.cc/V0sbHz8w",
//   //   "destinationId": "1234567890",
//   //   "destinataireName": "Emma Cooper",
//   //   "lastMessage": "Je suis en route ! ❤️❤️",
//   //   "unreadMessages": "1",
//   //   "messageStatus": "2",
//   //   "sendTime": "2024-01-25 10:46:32",
//   //   "pinned": false,