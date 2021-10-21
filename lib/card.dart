import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_list/word.dart';

class WordCard extends StatelessWidget {
  final String enWord;
  final String arWord;
  final String id;

  const WordCard(this.enWord, this.arWord, this.id, {Key? key})
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
            Provider.of<WordList>(context, listen: false).removeItem(id);
          }),
    );
  }
}