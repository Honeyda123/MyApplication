import 'package:firstproject/components/settings_card.dart';
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
    return MaterialApp(
      home: Scaffold(
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
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'My Earnings',
                    icon: Icons.monetization_on,
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'Convert to Rider',
                    icon: Icons.fire_truck,
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'Cars',
                    icon: Icons.car_crash,
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'Refer And Earn',
                    icon: Icons.monetization_on_sharp,
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'SOS',
                    icon: Icons.fire_truck,
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'Push Notifications',
                    icon: Icons.notifications,
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'Complain',
                    icon: Icons.bug_report,
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'About Us',
                    icon: Icons.info,
                    path: const ProfileSettings()),
                settingsCard(
                    title: 'LogOut',
                    icon: Icons.logout,
                    path: const ProfileSettings()),
              ],
            ),
          ),
          bottomNavigationBar: customNavBar(index: 3)),
    );
  }
}
