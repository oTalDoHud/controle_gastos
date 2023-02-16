import 'package:controle_gastos/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(const ControleGastosApp());

class ControleGastosApp extends StatelessWidget {
  const ControleGastosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatelessWidget {
  final _transaction = [
    Transaction(
      id: "t1",
      title: "Novo Tênis de Coridda",
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

  MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despesas Pessoais"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Card(
            elevation: 5,
            color: Colors.blue,
            child: Text("Gráfico"),
          ),
          Card(
            elevation: 5,
            child: Text("Lista de Transações"),
          ),
        ],
      ),
    );
  }
}
