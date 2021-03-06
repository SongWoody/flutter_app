


import 'package:flutter/material.dart';

class TestPage3 extends StatelessWidget {
  const TestPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(this.toString()),
              background: Image.asset('imageAssets/comp1_100.png', fit: BoxFit.cover,),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Text("Hi"),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context, "Hi");
                }, child: Text("Pop Button"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
