import 'package:flutter/material.dart';
import './random_words.dart';

void main() => runApp(MyApp());

//class hello World with title and text center
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: const Color.fromARGB(255, 62, 20, 140)),
        home: RandomWords());
  }
}
