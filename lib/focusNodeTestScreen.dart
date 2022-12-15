import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FocusNodeTestScreen extends StatelessWidget {
  FocusNodeTestScreen({Key? key}) : super(key: key);

  FocusNode focus1 = FocusNode();
  FocusNode focus2 = FocusNode();
  FocusNode focus3 = FocusNode();
  FocusNode focus4 = FocusNode();
  FocusNode focus5 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("FocusNodeTutorial"),
        ),
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  focusNode: focus1,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Textfeld 1',
                  ),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  focusNode: focus2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Textfeld 2',
                  ),
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  focusNode: focus3,
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Textfeld 3',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  focusNode: focus5,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Textfeld 4',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  focusNode: focus5,
                  initialValue: 'Textfeld 5',
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () => focus3.requestFocus(),
                  child: const Text("Ich fokussiere mich auf Feld 3"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
