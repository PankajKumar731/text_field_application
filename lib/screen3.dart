import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  var nameController = TextEditingController();
  var contactController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  var namefocused = FocusNode();
  var contactfocused = FocusNode();
  var emailfocused = FocusNode();
  var addressfocused = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          "Hello",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            size: 40,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 40),
              child: Text("ADD COMPANY",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "First Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            TextField(
              controller: nameController,
              focusNode: namefocused,
              decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4))),
              onSubmitted: (value) {
                contactfocused.requestFocus();
              },
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Contact No.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            TextField(
              controller: contactController,
              focusNode: contactfocused,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4))),
              onSubmitted: (value) {
                emailfocused.requestFocus();
              },
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            TextField(
              controller: emailController,
              focusNode: emailfocused,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4))),
              onSubmitted: (value) {
                addressfocused.requestFocus();
              },
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            TextField(
              controller: addressController,
              focusNode: addressfocused,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4))),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Add Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
