import 'package:flutter/material.dart';

class LearnList extends StatefulWidget {
  const LearnList({super.key});

  @override
  State<LearnList> createState() => _LearnListState();
}

class _LearnListState extends State<LearnList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView(children: [Text("Im Rija "), Text("Hello")]),
          ),
          SizedBox(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text(index.toString());
                },
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                itemCount: stringList.length,
                itemBuilder: (context, index) {
                  final str = stringList[index];
                  return Text(str);
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: kuchhoList.length,
              itemBuilder: (context, index) {
                final str = kuchhoList[index];
                return Column(
                  children: [Text(str.name ?? ""), Text(str.brand ?? "")],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<String> stringList = ["Rija", "Riju", "Yunisha", "Nikhil", "Ishan"];

class Kuchho {
  String? name;
  String? brand;
  Kuchho(this.name, this.brand);
}

List<Kuchho> kuchhoList = [
  Kuchho("aksdhxsjahgdxsh", "dfs"),
  Kuchho("aksdhxsjahgdxsh", "dfs"),
];
