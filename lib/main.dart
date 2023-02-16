import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

main() => runApp(ControleGastosApp());

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
