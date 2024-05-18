import 'package:flutter/material.dart';
import 'package:firstproject/views/settings/profile_settings.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                  'assets/logo.png'), // Replace 'assets/logo.png' with your logo image path
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Welcome to Our Company!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultricies erat nec ultrices elementum. Sed nec arcu sit amet arcu interdum feugiat.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 400,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      buildListTile(
                        title: 'Phone',
                        subtitle: '123456798',
                        icon: Icons.phone,
                      ),
                      buildListTile(
                        title: 'Email',
                        subtitle: 'Test@gmail.com',
                        icon: Icons.email,
                      ),
                      buildListTile(
                        title: 'Company Website',
                        subtitle: 'https://app.optifret.com',
                        icon: Icons.http,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile({
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: () {
        // Handle edit action here
        print('Edit tapped for $title');
      },
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(icon),
      ),
    );
  }
}
