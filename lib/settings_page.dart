import 'package:firstproject/settings_card.dart';
import 'package:flutter/material.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
          ), // Couleur du titre
        ),
        backgroundColor: Colors
            .deepOrangeAccent, // Couleur transparente pour un aspect sans bordure
        elevation: 20.00, // Supprimer l'ombre de l'appBar
        centerTitle: true,
      ),
      body: Column(
        children: [
          settingsCard(title: 'Profile'),
          settingsCard(title: 'My Earnings'),
          settingsCard(title: 'Convert to Rider'),
          settingsCard(title: 'Cars'),
          settingsCard(title: 'Refer And Earn'),
          settingsCard(title: 'SOS'),
          settingsCard(title: 'Push Notifications'),
          settingsCard(title: 'Complain'),
          settingsCard(title: 'About Us'),
          settingsCard(title: 'LogOut'),
        ],
      ),
    );
  }
}
