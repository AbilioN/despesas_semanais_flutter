import 'package:despesas_semanais_flutter/components/transaction_form.dart';
import 'package:flutter/material.dart';
import 'package:despesas_semanais_flutter/models/transaction.dart';
import 'package:despesas_semanais_flutter/components/transaction_list.dart';

class TransactionUser extends StatefulWidget {
  TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
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
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}
