import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                "Flutter is an open-source UI orive, and flexible way to create user interfaces. One of its standout features iswhich enables developers to see changes instantly without restarting the app. With a wide range of pre-designed widgets and tools, Flutter simplifies the app development process while ensuring high performance and a smooth user experience across platforms.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 243, 33, 33),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Flutter is an open-source UI orive, and flexible way to create user interfaces. One of its standout features iswhich enables developers to see changes instantly without restarting the app. With a wide range of pre-designed widgets and tools, Flutter simplifies the app development process while ensuring high performance and a smooth user experience across platforms.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 33, 243, 240),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Flutter dart is an open-source UI toolkit developed by Google that enables developers to create natively compiled applications for mobile, web, and desktop using a single codebase. It is built using the Dart programming language and is known for its fast development cycle, expressive UI, and high performance. One of its key features is hot reload, which allows developers to instantly view changes made in the code without restarting the entire application. With a rich set of customizable widgets and a flexible architecture, Flutter makes it easier to design visually appealing and responsive user interfaces across multiple platforms.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: 40),

              // Row(
              //   children: [
              //     Text(
              //       "facebook",
              //       style: TextStyle(
              //         fontSize: 32,
              //         fontWeight: FontWeight.w800,
              //         color: Color.fromARGB(255, 243, 33, 33),
              //       ),
              //     ),
              //     SizedBox(width: 40),
              //     Text(
              //       "facebook",
              //       style: TextStyle(
              //         fontSize: 32,
              //         fontWeight: FontWeight.w800,
              //         color: Color.fromARGB(255, 243, 205, 33),
              //       ),
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      "hghjkv kjkhjgjgjhj gkjhjhjhgg kgjhk ghjg khj b  1 ",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(255, 33, 61, 243),
                      ),
                    ),
                  ),
                  SizedBox(width: 33, height: 20),
                  Expanded(
                    child: Text(
                      "Flutteghgfhghjhcghgfch hgfdsdfggggggggggggghjr 2",
                      style: TextStyle(
                        fontSize: 32,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(233, 12, 14, 34),
                      ),
                    ),
                  ),

                  SizedBox(width: 40),
                  // Text(
                  //   "facebook",
                  //   style: TextStyle(
                  //     fontSize: 32,
                  //     fontWeight: FontWeight.w800,
                  //     color: Color.fromARGB(255, 243, 205, 33),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
