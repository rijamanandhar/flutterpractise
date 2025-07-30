import 'package:flutter/material.dart';

class HamroPatro extends StatefulWidget {
  const HamroPatro({super.key});

  @override
  State<HamroPatro> createState() => _HamroPatroState();
}

class _HamroPatroState extends State<HamroPatro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 80,
        width: double.infinity,
        color: Colors.black,
        // padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 52),

          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 93, 92, 92),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: const Color.fromARGB(255, 251, 249, 249),
                      ),
                      Spacer(),
                      Icon(Icons.replay, color: Colors.white),
                      SizedBox(width: 8),
                      Icon(Icons.close, color: Colors.white),
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.black, thickness: 24),

              Container(
                color: const Color.fromARGB(255, 0, 50, 76),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "असार २०८२",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Jun/Jul 2025",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_drop_down_circle_outlined),
                      Spacer(),
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "आज",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_left),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: 4),
                      Text(
                        "आइ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 28),
                      Text(
                        "सोम",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 28),
                      Text(
                        "मंगल",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 28),
                      Text(
                        "बुध",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        "बिही",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 28),
                      Text(
                        "शुक्र",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 28),
                      Text(
                        "शनि",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
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
