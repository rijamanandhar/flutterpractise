import 'package:flutter/material.dart';

class Practise1 extends StatefulWidget {
  const Practise1({super.key});

  @override
  State<Practise1> createState() => _Practise1State();
}

class _Practise1State extends State<Practise1> {
  int totalboxes = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: stringList
                    .map((value) => Expanded(child: Text(value)))
                    .toList(),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.withOpacity(0.2)),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> stringList = ["Apple ", "Banana", "Mango", "Orange"];
