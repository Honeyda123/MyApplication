import 'package:flutter/material.dart';

class ComplainForm extends StatefulWidget {
  @override
  _ComplainFormState createState() => _ComplainFormState();
}

class _ComplainFormState extends State<ComplainForm> {
  final TextEditingController _complainController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complain Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _complainController,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Enter your complain',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _submitComplain();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitComplain() {
    String complain = _complainController.text;
    // You can implement your logic here to submit the complain
    // For example, you can send it to a server, save it to a database, etc.
    print('Complain submitted: $complain');
    _showConfirmationDialog();
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Complain Submitted'),
          content: Text('Thank you for your complain. We will address it as soon as possible.'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _complainController.clear(); // Clear the text field after submission
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _complainController.dispose();
    super.dispose();
  }
}