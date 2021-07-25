import 'package:flutter/material.dart';
import 'example.dart';

void main() {
  exampleMain();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome to Flutter', home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Gennerator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.camera),
          title: Text("camera"),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.map),
          title: Text("map"),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("alarm"),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.add_ic_call),
          title: Text("add call"),
          trailing: Icon(Icons.navigate_next),
        )
      ],
    );
  }
}