import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  final _RandomWordPair = <WordPair>[];
  Widget _buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, item) {
          if (item.isOdd) return const Divider();

          final index = item ~/ 2;

          if (index >= _RandomWordPair.length) {
            _RandomWordPair.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_RandomWordPair[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(pair.asPascalCase),
    );
  }

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
      body: _buildList(),
    );
  }
}
