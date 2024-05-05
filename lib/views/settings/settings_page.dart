import 'package:firstproject/components/settings_card.dart';
import 'package:firstproject/views/settings/documents_settings.dart';
import 'package:firstproject/views/settings/profile_settings.dart';
import 'package:flutter/material.dart';

import '../../components/custom_navigation_bar.dart';

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
          title: const Text(
            'Settings',
            style: TextStyle(
              color: Colors.black,
            ), // Couleur du titre
          ),
          backgroundColor: Colors
              .deepOrangeAccent, // Couleur transparente pour un aspect sans bordure
          elevation: 20.00, // Supprimer l'ombre de l'appBar
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              settingsCard(
                  title: 'Profile Settings',
                  icon: Icons.settings,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'Documents',
                  icon: Icons.document_scanner_sharp,
                  navigator: const documents_settings()),
              settingsCard(
                  title: 'My Earnings',
                  icon: Icons.monetization_on,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'Convert to Rider',
                  icon: Icons.fire_truck,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'Cars',
                  icon: Icons.car_crash,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'Refer And Earn',
                  icon: Icons.monetization_on_sharp,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'SOS',
                  icon: Icons.fire_truck,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'Push Notifications',
                  icon: Icons.notifications,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'Complain',
                  icon: Icons.bug_report,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'About Us',
                  icon: Icons.info,
                  navigator: const ProfileSettings()),
              settingsCard(
                  title: 'LogOut',
                  icon: Icons.logout,
                  navigator: const ProfileSettings()),
            ],
          ),
        ),
        bottomNavigationBar: customNavBar(index: 3));
  }
}
