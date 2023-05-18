import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//class hello World with title and text center
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(primaryColor: const Color.fromARGB(255, 140, 20, 40)),
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple[900],
          centerTitle: true,
          title: const Text(
            'WordPair Counter',
            style: TextStyle(color: Color.fromARGB(255, 243, 239, 239)),
          )),
      body: const Center(child: Text('Hello World')),
    ));
  }
}
