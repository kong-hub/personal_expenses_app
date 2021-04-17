import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleInputController = TextEditingController();
  final amoutInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleInputController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amoutInputController,
            ),
            ElevatedButton(
              onPressed: () {
                print(titleInputController.text);
                print(amoutInputController.text);
              },
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
