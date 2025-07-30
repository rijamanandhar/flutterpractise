import 'package:flutter/material.dart';

class Formpage extends StatefulWidget {
  const Formpage({super.key});

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  String? val;
  int? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.16),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 120, 127, 133),
                  ),
                  labelText: "Hello",
                ),
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                },
              ),
              SizedBox(height: 8),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: val,
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 120, 127, 133),
                  ),
                ),
              ),
              Text(val ?? ""),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 120, 127, 133),
                  ),
                  labelText: "Hello",
                ),
                onChanged: (value) {
                  setState(() {
                    data = int.tryParse(value);
                  });
                },
              ),
              SizedBox(height: 8),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: data.toString(),
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 120, 127, 133),
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
