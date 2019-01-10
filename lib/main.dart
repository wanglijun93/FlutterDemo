import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('welcome to flutter'),
        ),
        body: new Center(
//          child: new Text('hello flutter'),
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    var wordPair = new WordPair.random();

    return new Text(wordPair.asUpperCase);
  }
}
