import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit, {super.key});

  _submitForm() {
    final String title = titleController.text;
    final double value = double.tryParse(valueController.text) ?? 0.0;

    if (title.isEmpty || value <= 0) {
      return;
    }
    onSubmit(title, value);
  }

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
              onSubmitted: (_) => _submitForm(),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: "Valor (R\$)",
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              onSubmitted: (_) => _submitForm(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: _submitForm,
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
