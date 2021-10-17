import 'package:flutter/material.dart';
import 'card.dart';
import 'bottom_sheet.dart';
import 'word.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Word> _list = [];
  void addItem(String en, String ar, String x) {
    setState(() {
      _list.add(Word(en, ar, x));
    });
  }

  void removeItem(String x) {
    setState(() {
      _list.removeWhere((element) => element.id == x);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word List'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => WordCard(_list[index].enWord,
              _list[index].arWord, _list[index].id, removeItem),
          separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
          itemCount: _list.length),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => BottomSheett(addItem));
        },
      ),
    );
  }
}