import 'package:flutter/material.dart';

import 'package:flutter_app/network/myUseCase.dart';

/// Json Test Page
class TestPage8 extends StatelessWidget {
  const TestPage8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Test Page"),
      ),
      body: HackerNewsIdList(),
    );
  }
}

class HackerNewsIdList extends StatefulWidget {
  const HackerNewsIdList({Key? key}) : super(key: key);

  @override
  _HackerNewsIdListState createState() => _HackerNewsIdListState();
}

class _HackerNewsIdListState extends State<HackerNewsIdList> {
  List<int> hackerNesItem = [];

  @override
  void initState() {
    MyUseCase().getTopNewsId().then((value) {
      print("success ${value.toString()}");
      setState(() {
        hackerNesItem = value;
      });
    }).catchError((error) {
      print("failure $error");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
          context: context,
          tiles: hackerNesItem.map((e) => ListTile(
                leading: Icon(Icons.article_sharp),
                title: Text("$e"),
              )
          )
      ).toList(),
    );
  }
}
