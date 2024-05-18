import 'package:flutter/material.dart';


class addMoney extends StatelessWidget {
  final TextEditingController _amountController = TextEditingController();

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
              controller: _amountController,
              decoration: const InputDecoration(
                labelText: 'Add Amount (TND)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  // Logic to handle adding money
                  _amountController.text =
                      'TND10'; // Update text field with TND10
                  FocusScope.of(context)
                      .requestFocus(FocusNode()); // Focus text field
                },
                child: const Text('TND10\nTND'),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Logic to handle adding money
                String enteredAmount = _amountController.text;
                if (enteredAmount.isNotEmpty) {
                  // Perform actions with enteredAmount
                  print('Adding money: $enteredAmount');
                } else {
                  // Show error or handle empty input
                  print('Please enter an amount');
                }
              },
              child: const Text('Add Money'),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    ));
  }
}
