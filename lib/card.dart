import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  final String enWord;
  final String arWord;
  final String id;
  final Function(String) delete;
  const WordCard(this.enWord, this.arWord, this.id, this.delete, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(enWord,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(arWord)
        ],
      ),
      trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            delete(id);
          }),
    );
  }
}