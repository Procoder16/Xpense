import 'package:flutter/material.dart';
import 'transaction.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      itemName: 'Shoes',
      amount: 2399.0,
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
      itemName: 'Macbook',
      amount: 82000.0,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('XPENSE'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text('CHART'),
                color: Colors.blue,
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Row(
                    children: [
                      Text(
                        tx.amount.toString(),
                      ),
                      Column(
                        children: [
                          Text(tx.itemName),
                          Text(
                            tx.date.toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
