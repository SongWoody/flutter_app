import 'package:flutter/material.dart';
import 'package:flutter_app/page5/testPage5.dart';
import 'package:flutter_app/page6/testPage6.dart';
import 'package:flutter_app/page7/testPage7.dart';
import 'package:flutter_app/page8/testPage8.dart';
import 'package:flutter_app/testPage1.dart';
import 'package:flutter_app/testPage2.dart';
import 'package:flutter_app/testPage3.dart';
import 'package:flutter_app/page4/testPage4.dart';
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

class MenuData {
  IconData? iconData;
  String title;
  Function(BuildContext a)? onClick;
  MenuData(this.iconData, this.title, {this.onClick});
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  List<MenuData> items = [
    MenuData(Icons.contact_page, "TestPage1", onClick: (ctx) => {
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => TestPage1()))
    }),
    MenuData(Icons.map, "TestPage2(Animation)", onClick: (ctx) => {
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => TestPage2()))
    }),
    MenuData(Icons.access_alarm, "TestPage3", onClick: (ctx) async {
      final result = await Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => TestPage3()));
      print(result);
    }),
    MenuData(Icons.add_ic_call, "navigate_next", onClick: (ctx) => {
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => TestPage4()))
    }),
    MenuData(Icons.add_ic_call, "TestPage5", onClick: (ctx) => {
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => TestPage5()))
    }),
    MenuData(Icons.add_ic_call, "TestPage6", onClick: (ctx) => {
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => TestPage6()))
    }),
    MenuData(Icons.add_ic_call, "TestPage7", onClick: (ctx) => {
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => TestPage7()))
    }),
    MenuData(Icons.add_ic_call, "TestPage8", onClick: (ctx) => {
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => TestPage8()))
    })

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
        return _buildType(items[index]);
      },
    );
  }

  Widget _buildType(MenuData item) {
    return GestureDetector(
      child: ListTile(
        leading: Icon(item.iconData),
        title: Text(item.title),
        trailing: Icon(Icons.navigate_next),
      ),
      onTap: () {
        item.onClick?.call(context);
      },
    );
  }
}