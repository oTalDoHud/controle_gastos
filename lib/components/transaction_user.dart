import 'dart:math';

import 'package:controle_gastos/components/transaction_form.dart';
import 'package:controle_gastos/components/transaction_list.dart';
import 'package:flutter/cupertino.dart';

import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
      id: "t1",
      title: "Novo Tênis de Corrida",
      value: 310.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Conta de luz ",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "Conta #03",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t4",
      title: "Conta #04",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t5",
      title: "Conta #05",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t6",
      title: "Conta #06",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t7",
      title: "Conta #07",
      value: 211.30,
      date: DateTime.now(),
    ),    Transaction(
      id: "t7",
      title: "Conta #07",
      value: 211.30,
      date: DateTime.now(),
    ),    Transaction(
      id: "t7",
      title: "Conta #07",
      value: 211.30,
      date: DateTime.now(),
    ),    Transaction(
      id: "t7",
      title: "Conta #07",
      value: 211.30,
      date: DateTime.now(),
    ),    Transaction(
      id: "t7",
      title: "Conta #07",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t7",
      title: "Conta #07",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t7",
      title: "Conta #07",
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble.toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transaction),
      ],
    );
  }
}
