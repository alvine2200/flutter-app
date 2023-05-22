import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
// import 'package:hello_world/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random();
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Random Words Pair Generator',
          style: TextStyle(color: Color.fromARGB(255, 9, 10, 12)),
        ),
      ),
      body: const Text('hello There'),
    );
  }
}
