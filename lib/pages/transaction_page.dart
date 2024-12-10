import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  final int index;

  TransactionPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Details'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Transaction ${index + 1}",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Details of transaction ${index + 1}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Amount: -Rp 20.000",
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}