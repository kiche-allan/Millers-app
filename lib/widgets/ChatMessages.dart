// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class ChatMessages extends StatelessWidget {
//   final String millerId;

//   ChatMessages({required this.millerId});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance
//           .collection('chats')
//           .doc(millerId)
//           .collection('messages')
//           .orderBy('timestamp', descending: true)
//           .snapshots(),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }

//         List<Widget> messages = snapshot.data!.docs.map((doc) {
//           return ChatMessage(
//             text: doc['text'],
//             isFromMe: doc['sender'] == 'me',
//           );
//         }).toList();

//         return ListView(
//           reverse: true,
//           children: messages,
//         );
//       },
//     );
//   }
// }

// class ChatMessage extends StatelessWidget {
//   final String text;
//   final bool isFromMe;

//   ChatMessage({required this.text, required this.isFromMe});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10.0),
//       child: Row(
//         mainAxisAlignment:
//             isFromMe ? MainAxisAlignment.end : MainAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
//             decoration: BoxDecoration(
//               color: isFromMe ? Colors.blue : Colors.grey[200],
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: Text(
//               text,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: isFromMe ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
