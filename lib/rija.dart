// import 'package:flutter/material.dart';

// class Calenders extends StatefulWidget {
//   const Calenders({super.key});

//   @override
//   State<Calenders> createState() => _calenderState();
// }

// class _calenderState extends State<Calenders> {
//   final int gap = 2;
//   final int totalDays = 32;
//   final List<String> weekdays = [
//     "आइ",
//     "सोम",
//     "मंगल",
//     "बुध",
//     "बिही",
//     "शुक्र",
//     "शनि",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     int totalboxes
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 7,
//             ),
//             itemBuilder: (context, index) {
//               if (index < weekdays.length) {
//                 return Center(
//                   child: Text(
//                     weekdays[index],
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                   ),
//                 );
//               } else {
//                 final daynumber = index - weekdays.length - gap + 1;
//                 return Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey.withOpacity(0.3)),
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
