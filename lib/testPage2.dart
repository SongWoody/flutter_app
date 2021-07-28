import 'package:flutter/material.dart';

class TestPage2 extends StatelessWidget {
  const TestPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text(this.toString()),),
        body: Center(
          child: GestureDetector(
            child: Hero(
              tag: 'image',
              child: Image.asset('imageAssets/comp1_100.png', width: 100, height: 100),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HeroDetailPage())
              );
            },
          ),
        ),
      ),
    );
  }
}


class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Detail"),),
      body: Center(
        child: Hero(
          tag: 'image',
          child: Image.asset(
            "imageAssets/comp1_100.png",
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
