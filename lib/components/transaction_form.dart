import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  // final titleController = TextEditingController();
  // final valueController = TextEditingController();
  const TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              // controller: titleController,
              decoration: InputDecoration(labelText: 'Titulo'),
            ),
            TextField(
              // controller: valueController,
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {},
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
    );
  }
}
