import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final int index;
  final VoidCallback onTap;

  TransactionItem({required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.purple.withOpacity(0.1),
          child: Icon(Icons.payment, color: Colors.purple),
        ),
        title: Text("Transaction ${index + 1}"),
        subtitle: Text("Details of transaction ${index + 1}"),
        trailing: Text(
          "-Rp 20.000",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
      ),
    );
  }
}