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

class MenuData {
  IconData iconData;
  String title;
  MenuData(this.iconData, this.title);
}

class RandomWordsState extends State<RandomWords> {
  List<MenuData> items = [
    MenuData(Icons.camera, "camera"),
    MenuData(Icons.map, "map"),
    MenuData(Icons.access_alarm, "alarm"),
    MenuData(Icons.add_ic_call, "navigate_next")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Woody Example"),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(items[index].iconData),
          title: Text(items[index].title),
          trailing: Icon(Icons.navigate_next),
        );
      },
    );
  }
}