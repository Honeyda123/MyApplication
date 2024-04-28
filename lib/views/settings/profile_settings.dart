import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Settings',
          style: TextStyle(
            color: Colors.black,
          ), // Couleur du titre
        ),
        backgroundColor: Colors
            .deepOrangeAccent, // Couleur transparente pour un aspect sans bordure
        elevation: 20.00, // Supprimer l'ombre de l'appBar
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 56,
              backgroundColor: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8), // Border radius
                child: ClipOval(
                    child:
                        Image.network('https://i.stack.imgur.com/HiVO6.png')),
              ),
            ),
            const Text(
              "Houneyda",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              width: 400,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTileWidget(title: 'Email', subtitle: 'Test@gmail.com', icon: Icons.email, iconBtn: Icons.edit, onpressed: null,),
                      ListTileWidget(title: 'Phone', subtitle: '123456798', icon: Icons.phone, iconBtn: Icons.edit, onpressed: null,),
                      ListTileWidget(title: 'Language', subtitle: 'English', icon: Icons.language, iconBtn: Icons.arrow_downward, onpressed: null,),
                      Card(
                        shadowColor: Colors.white60,
                        child: ListTile(
                          title: Text('Referral ID'),
                          subtitle: Text('SIWBG'),
                          leading: Icon(Icons.perm_identity),
                          onTap: (){},
                        ),
                      ),
                      Card(
                        shadowColor: Colors.white60,
                        child: ListTile(
                          title: Text('Vehicule Type'),
                          subtitle: Text('PICKUP TRUCK'),
                          leading: Icon(Icons.fire_truck),
                          onTap: (){},
                        ),
                      ),
                      Card(
                        shadowColor: Colors.white60,
                        child: ListTile(
                          title: Text('Driver Rating'),
                          subtitle: const Row(
                            children: [
                              Text('4.7'),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          ),
                          leading: Icon(Icons.star),
                          onTap: (){},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 2,
                backgroundColor: Colors.red,
              ),
              onPressed: () { },
              child: const Text('Delete Account'),
            )
          ],
        ),
      ),
    );
  }
}


class ListTileWidget extends StatelessWidget {
  String title;
  String subtitle;
  IconData icon;
  IconData iconBtn;
  void onpressed;
  ListTileWidget({super.key, required  this.title, required this.subtitle, required this.icon, required this.iconBtn, required  this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white60,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(icon),
        trailing: IconButton(
          onPressed: () {
            onpressed;
          },
          icon: Icon(iconBtn),
        ),
      ),
    );
  }
}

