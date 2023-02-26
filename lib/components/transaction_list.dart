import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transaction;

  const TransactionList(this._transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: _transaction.isEmpty
          ? Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  "Nenuma Transação Cadastrada!",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 80,
                  child: Image.asset(
                    "assets/images/waiting.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: _transaction.length,
              itemBuilder: (BuildContext ctx, int index) {
                final tr = _transaction[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      radius: 35,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FittedBox(
                          child: Text(
                            style: const TextStyle(color: Colors.white),
                            "R\$${tr.value}",
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      tr.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    subtitle: Text(
                      DateFormat("d MMM y").format(tr.date),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
