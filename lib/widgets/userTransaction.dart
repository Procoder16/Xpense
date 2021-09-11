import 'package:flutter/material.dart';
import 'package:xp/widgets/transaction_list.dart';
import 'package:xp/models/transaction.dart';
import 'newTransaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      itemName: 'Shoes',
      amount: 3499.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      itemName: 'Shirt',
      amount: 1450.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      itemName: 'Jeans',
      amount: 1689.0,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
