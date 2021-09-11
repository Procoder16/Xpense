import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final nameController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Item Name',
              ),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
            ),
            FlatButton(
              onPressed: () {
                print(
                  nameController.text + " && " + amountController.text,
                );
                nameController.clear();
                amountController.clear();
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
