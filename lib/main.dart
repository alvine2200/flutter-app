import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//class hello World with title and text center
class MyApp extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: const Color.fromARGB(255, 140, 20, 40)),
        home: Scaffold(
          appBar: AppBar(title: const Text('WordPair Counter')),
          body: const Center(child: Text('Hello World')),
        ));
  }
}
