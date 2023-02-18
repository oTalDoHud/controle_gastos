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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transaction),
        TransactionForm(),
      ],
    );
  }
}
