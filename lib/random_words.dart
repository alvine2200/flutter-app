import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _wordpairs = <WordPair>[];
  final _savedWords = <WordPair>{};
  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, item) {
        if (item.isOdd) return const Divider();

        final index = item ~/ 2;

        if (index >= _wordpairs.length) {
          _wordpairs.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_wordpairs[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _savedWords.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: const TextStyle(fontSize: 18.0),
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border_sharp,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _savedWords.remove(pair);
          } else {
            _savedWords.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext build) {
      final Iterable<ListTile> tiles = _savedWords.map((WordPair pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: const TextStyle(fontSize: 16.0),
          ),
        );
      });

      final List<Widget> divided =
          ListTile.divideTiles(context: context, tiles: tiles).toList();

      return Scaffold(
        appBar: AppBar(
          title: const Text('Favourite WordPairs'),
        ),
        body: ListView(children: divided),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Random Word Pairs',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(onPressed: _pushSaved, icon: const Icon(Icons.menu))
        ],
        backgroundColor: const Color.fromARGB(255, 190, 35, 152),
        centerTitle: true,
      ),
      body: _buildList(),
    );
  }
}
