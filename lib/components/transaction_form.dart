import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Título",
              ),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: "Valor (R\$)",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final String title = titleController.text;
                      final double value = double.tryParse(valueController.text) ?? 0.0;
                      onSubmit(title, value);
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.purple,
                        backgroundColor: Colors.white),
                    child: const Text("Nova Transação"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
