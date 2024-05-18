import 'package:flutter/material.dart';

class drawMoney extends StatefulWidget {
  const drawMoney({Key? key}) : super(key: key);

  @override
  State<drawMoney> createState() => _DrawMoneyState();
}

class _DrawMoneyState extends State<drawMoney> {
  final TextEditingController _drawController = TextEditingController();

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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            TextField(
              controller: _drawController,
              decoration: const InputDecoration(
                labelText: 'Withdraw Amount (TND)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Logic to handle withdrawing money
                String enteredAmount = _drawController.text;
                if (enteredAmount.isNotEmpty) {
                  // Perform actions with enteredAmount
                  print('Withdrawing money: $enteredAmount');
                } else {
                  // Show error or handle empty input
                  print('Please enter an amount');
                }
              },
              child: const Text('Withdraw Money'),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    ));
  }
}
