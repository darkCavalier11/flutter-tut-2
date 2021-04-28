import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  List<Map<String, Object>> get groupTransactionValues {
    return List.generate(7, (index) {
      return {'day': 'T', 'amount': 9.99};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
