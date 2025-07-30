import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  int gap = 2;
  int totaldays = 32;
  @override
  Widget build(BuildContext context) {
    int totalboxes = totaldays + gap;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: stringList
                    .map((value) => Expanded(child: Text(value)))
                    .toList(),
              ),

              Expanded(
                child: GridView.builder(
                  itemCount: totalboxes,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                  ),
                  itemBuilder: (context, index) {
                    if (index < gap) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red.withOpacity(0.1),
                          ),
                        ),
                      );
                    }
                    final int sday = index - gap + 1;
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red.withOpacity(0.1)),
                      ),

                      child: Center(
                        child: Text(
                          sday.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> stringList = ["आइ", "सोम", "मंगल", "बुध", "बिही", "शुक्र", "शनि"];
