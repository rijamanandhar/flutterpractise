import 'package:flutter/material.dart';

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: double.infinity,
        color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          children: [
            Column(
              children: [Container(height: 20, width: 20, color: Colors.red)],
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),

              child: Column(
                children: [
                  SizedBox(height: 39),
                  Text("Good Morning,"),
                  Icon(Icons.abc),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
