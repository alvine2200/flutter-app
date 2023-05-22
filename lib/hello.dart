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

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  @override
  
}
