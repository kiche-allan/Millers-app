// import 'package:flutter/material.dart';


// class AnimationsPage extends StatelessWidget {
//   const AnimationsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Animations"),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             child: AnimationContainer(
//               curve: Curves.easeInOut,
//               duration: Duration(seconds: 1),
//               color: Colors.blue,
//               child: Center(
//                 child: Text(
//                   "AnimationContainer",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Expanded(
//             child: AnimationOpacity(
//               curve: Curves.easeInOut,
//               duration: Duration(seconds: 1),
//               opacity: 0,
//               child: Center(
//                 child: Text(
//                   "AnimationOpacity",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Expanded(
//             child: AnimationScale(
//               curve: Curves.easeInOut,
//               duration: Duration(seconds: 1),
//               scale: 0.5,
//               child: Center(
//                 child: Text(
//                   "AnimationScale",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Expanded(
//             child: AnimationSlide(
//               curve: Curves.easeInOut,
//               duration: Duration(seconds: 1),
//               slideDistance: Offset(0, -100),
//               child: Center(
//                 child: Text(
//                   "AnimationSlide",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
