import 'package:flutter/material.dart';

class BottomSheett extends StatefulWidget {
  const BottomSheett(this.addItem, {Key? key}) : super(key: key);
  final Function(String en, String ar, String x) addItem;

  @override
  State<BottomSheett> createState() => _BottomSheettState();
}

class _BottomSheettState extends State<BottomSheett> {
  var enWord = TextEditingController();

  var arWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[600],
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: enWord,
                decoration: const InputDecoration(
                    labelText: 'EN', border: OutlineInputBorder()),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: arWord,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'AR',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  widget.addItem(
                      enWord.text, arWord.text, DateTime.now().toString());
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}