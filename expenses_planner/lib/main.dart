import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'new_Game',
      amount: 899.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Metro',
      amount: 150,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.amber[300],
            child: Container(width: 200, child: Text('CHART!')),
            elevation: 10,
          ),
          Card(
            color: Colors.deepOrangeAccent[300],
            child: Container(width: 200, child: Text('List of txt')),
            elevation: 10,
          ),
        ],
      ),
    );
  }
}
