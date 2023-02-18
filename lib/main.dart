import 'package:controle_gastos/components/transaction_user.dart';
import 'package:flutter/material.dart';

main() => runApp(const ControleGastosApp());

class ControleGastosApp extends StatelessWidget {
  const ControleGastosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despesas Pessoais"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Card(
            elevation: 5,
            color: Colors.blue,
            child: Text("Gráfico"),
          ),
          TransactionUser(),
        ],
      ),
    );
  }
}
