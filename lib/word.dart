import 'package:flutter/material.dart';

class Word {
  Word(this.enWord, this.arWord, this.id);
  final String enWord;
  final String arWord;
  final String id;
}

class WordList extends ChangeNotifier {
  final List<Word> list = [];
  void addItem(String en, String ar, String x) {
    list.add(Word(en, ar, x));
    notifyListeners();
  }

  void removeItem(String x) {
    list.removeWhere((element) => element.id == x);
    notifyListeners();
  }
}