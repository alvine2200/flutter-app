import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//class hello World with title and text center
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random();
    return MaterialApp(
        theme: ThemeData(primaryColor: const Color.fromARGB(255, 62, 20, 140)),
        // home: Scaffold(
        //     appBar: AppBar(
        //         backgroundColor: Colors.purple[900],
        //         centerTitle: true,
        //         title: const Text(
        //           'WordPair Counter',
        //           style: TextStyle(color: Color.fromARGB(255, 243, 239, 239)),
        //         )),
        //     body: Center(child: Text(wordpair.asPascalCase)),
        //   ));
        home: RandomWords());
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
        title: const Text(
          'Random Word Pairs',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 190, 35, 152),
        centerTitle: true,
      ),
    );
  }
}



