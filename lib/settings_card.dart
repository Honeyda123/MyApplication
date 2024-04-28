import 'package:flutter/material.dart';

class settingsCard extends StatelessWidget {
  late String title ;
   settingsCard ({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(title),
        children: [

        ],
        leading: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
