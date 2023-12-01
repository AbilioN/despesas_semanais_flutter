import 'dart:math';

import 'package:despesas_semanais_flutter/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'title22',
      value: 30.5,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'another title',
      value: 25.5,
      date: DateTime.now(),
    )
  ];

  void _newTransaction() {
    // _transactions.add(Transaction(
    //     id: Random().nextInt(100).toString(),
    //     title: title,
    //     value: double.parse(value),
    //     date: DateTime.now()));

    print(titleController.text);
    print(valueController.text);
  }

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas pessoais'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
              color: Color.fromRGBO(180, 72, 29, 1),
              elevation: 5,
              child: Text('Grafico'),
            ),
          ),
          Column(children: <Widget>[
            ..._transactions.map((tr) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      )),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'R\$ ${tr.value.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tr.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat('d MMM y').format(tr.date),
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ]),
          Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(labelText: 'Titulo'),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(labelText: 'Valor (R\$)'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: _newTransaction,
                        child: Text(
                          'Novo gasto',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          Colors.purple.shade600,
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
