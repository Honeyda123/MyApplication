import 'package:flutter/material.dart';

class pushNotifications extends StatelessWidget {
  const pushNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push Notifications',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
        centerTitle: true,
      ),
      body: const Column(children: [
        Card(
          shadowColor: Colors.white60,
          child: ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Your text here"),

          ),
        )
      ]),
    );
  }
}
