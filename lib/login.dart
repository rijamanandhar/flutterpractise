// import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool isvisible = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           TextFormField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Enter Your Number",
//               prefix: Icon(Icons.person),
//             ),
//           ),
//           TextFormField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Password",
//               prefix: Icon(Icons.lock),
//               suffix: InkWell(
//                 onTap: () {
//                   setState(() {
//                     isvisible = !isvisible;
//                   },);
//                 },
//                 child: Icon(isvisible == true ? Icon.visibility: Icon.),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
