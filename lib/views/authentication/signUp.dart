import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController nomController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController telephoneController = TextEditingController();
  final TextEditingController adresseController = TextEditingController();
  final TextEditingController paysController = TextEditingController();
  final TextEditingController typeUtilisateurController = TextEditingController();
  final TextEditingController motDePasseController = TextEditingController();

  void inscrireUtilisateur() {
    String nom = nomController.text;
    String prenom = prenomController.text;
    String telephone = telephoneController.text;
    String adresse = adresseController.text;
    String pays = paysController.text;
    String typeUtilisateur = typeUtilisateurController.text;
    String motDePasse = motDePasseController.text;

    // Envoyer les données à Firebase Firestore
    // FirebaseFirestore.instance.collection('utilisateurs').add({
    //   'nom': nom,
    //   'prenom': prenom,
    //   'telephone': telephone,
    //   'adresse': adresse,
    //   'pays': pays,
    //   'type_utilisateur': typeUtilisateur,
    //   // Autres champs que vous souhaitez sauvegarder
    // });

    // Vous pouvez également gérer les succès ou les erreurs ici
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),

      body:  Stack(
          children: [
      Container(
      decoration:const BoxDecoration(
      image: DecorationImage(

          image: AssetImage("assets/images/optima1.jpg"),
          fit: BoxFit.contain,
           ),
           ),
       ),
    // Overlay with opacity to make text more readable
    Container(
    color: Colors.black.withOpacity(0.4),
    ),

            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              TextFormField(
                controller: nomController,
                decoration: InputDecoration(labelText: 'Nom'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: prenomController,
                decoration: InputDecoration(labelText: 'Prénom'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: telephoneController,
                decoration: InputDecoration(labelText: 'Téléphone'),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: adresseController,
                decoration: InputDecoration(labelText: 'Adresse'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: paysController,
                decoration: InputDecoration(labelText: 'Pays'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: typeUtilisateurController,
                decoration: InputDecoration(labelText: 'Type d\'utilisateur'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: motDePasseController,
                decoration: InputDecoration(labelText: 'Mot de passe'),
                validator:(value){
                  if(value!.isEmpty){
                    return "champs invalide";
                  }
                  if (value.length>10){
                    return"le champs n'est pas etre sup 10";
                  }
              const SizedBox(height: 16.0);
              ElevatedButton(
                onPressed: inscrireUtilisateur,
                child: Text('S\'inscrire'),
              );})])
            )],
          ),
      );
  }
}






// import 'package:flutter/material.dart';
/*
class SignupPage extends StatelessWidget {
  SignupPage({super.key});
 final TextEditingController nom=TextEditingController();
 final TextEditingController prenom=TextEditingController();
 final TextEditingController phone=TextEditingController();
 final TextEditingController  mail=TextEditingController();
 final TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
      ),
      body: Container(
        color: Colors.blueGrey[50], // Couleur de fond du container
        padding:const EdgeInsets.all(16.0), // Espacement intérieur du container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              children:[

                Expanded(
                  child: TextField(
                    controller:nom ,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'nom',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'prenom',
                      filled: true,
                      fillColor: Colors.white,

                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      filled: true,
                      fillColor: Colors.white,

                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Adresse e-mail',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox  (height: 16.0),
           const TextField(
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implémentez la logique d'inscription ici
              },
              child:const Text('S\'inscrire'),
            ),
          ],
        ),
      ),
    );
  }
}*/
























           /* TextField(
              decoration: InputDecoration(labelText: 'Nom'),
              keyboardType: TextInputType.name,
              controller: name,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Prénom'),
              keyboardType: TextInputType.name,
              controller: lastname ,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Adresse e-mail'),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            MaterialButton(
              child: Text('S\'inscrire'),
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog();
                    }
                  // Implémentez la logique d'inscription ici


                );
              }),
          ],
        ),
      ),
    );
  }
}*/