import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 193, 255),
        title: const Center(child: Text("Strawberry Pavlova")),
      ),
      body: const Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing ",
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('170 Reviews'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.book_outlined),
                  Text("Prep:"),
                  Text("25 min")
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Icon(Icons.alarm_outlined),
                    Text("COOK:"),
                    Text("1 hr")
                  ],
                ),
              ),
              Column(
                children: [Icon(Icons.restaurant), Text("FEEDS"), Text("4-6")],
              ),
            ],
          )
        ],
      ),
    );
  }
}
