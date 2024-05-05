import 'package:flutter/material.dart';

class settingsCard extends StatelessWidget {
  late String title;
  late IconData icon;
  late Widget path;
  settingsCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        leading: Card(
          color: Colors.cyanAccent,
          child: Icon(icon),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => path),
          );
        },
      ),
    );
  }
}
