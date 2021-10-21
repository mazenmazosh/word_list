import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'card.dart';
import 'bottom_sheet.dart';
import 'word.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word List'),
      ),
      body: Consumer<WordList>(builder: (context, wordData, child) {
        return ListView.separated(
            itemBuilder: (context, index) => WordCard(
                  wordData.list[index].enWord,
                  wordData.list[index].arWord,
                  wordData.list[index].id,
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: wordData.list.length);
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => const BottomSheett());
        },
      ),
    );
  }
}