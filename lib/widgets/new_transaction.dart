import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  // controller are analogous to useRef hook
  // where they store text from
  // a particular input
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount.isNegative) {
      return;
    }

    // with widget we can access var from
    // StateFullClass inside State class
    widget.addTx(
      enteredTitle,
      enteredAmount,
    );

    // pop current context from screen
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData()),
          FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: submitData)
        ],
      ),
    ));
  }
}
