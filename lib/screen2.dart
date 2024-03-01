import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: SingleChildScrollView(
        //   child:
        body: ListView(children: [
      Stack(
        children: [
          Image.asset(
            "images/salad.jpg",
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                  child: Text(
                "Corn Salad With Red Beans",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ))),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.restaurant),
                Text("305.5"),
                Text("Calories")
              ],
            ),
            Column(
              children: [Icon(Icons.alarm_add), Text("20mins"), Text("Time")],
            ),
            Column(
              children: [Icon(Icons.groups_3), Text("4"), Text("Serve")],
            ),
            Column(
              children: [Icon(Icons.shopping_cart), Text("8"), Text("Count")],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "Ingredients Required",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      Container(
        width: 100,
        color: Color.fromARGB(255, 146, 144, 144),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.add_circle,
                color: Colors.green,
              ),
              Text("  1(15 1/4 ounce) can red kidney beans")
            ],
          ),
        ),
      ),
      Container(
        width: 100,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.remove_circle, color: Colors.red),
              Text("  1/2 yellow onion")
            ],
          ),
        ),
      ),
      Container(
        width: 100,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.remove_circle,
                color: Colors.red,
              ),
              Text("  2 garlic cloves")
            ],
          ),
        ),
      ),
      Container(
        width: 100,
        color: const Color.fromARGB(255, 146, 144, 144),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.add_circle,
                color: Colors.green,
              ),
              Text("  1(15 ounce) can corn kernels")
            ],
          ),
        ),
      ),
    ]));
  }
}
