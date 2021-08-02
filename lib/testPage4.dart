import 'package:flutter/material.dart';

class TestPage4 extends StatefulWidget {
  const TestPage4({Key? key}) : super(key: key);

  @override
  _TestPage4State createState() => _TestPage4State();
}

class _TestPage4State extends State<TestPage4> {

  @override
  void initState() {
    super.initState();
    print("Test Page4 Init State");
  }

  @override
  Widget build(BuildContext context) {
    print("Test Page4 build");
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text(this.toString()),),
        body: Center(
          child: TextButton(
            child: Text("Next Page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return TestPage4_1();
              }));
            },
          ),
        ),
      ),
    );
  }
}

class TestPage4_1 extends StatefulWidget {
  const TestPage4_1({Key? key}) : super(key: key);

  @override
  _TestPage4_1State createState() => _TestPage4_1State();
}

class _TestPage4_1State extends State<TestPage4_1> {

  @override
  void initState() {
    super.initState();
    print("Test Page4_1 Init State");
  }

  @override
  void dispose() {
    super.dispose();
    print("Test Page4_1 dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("Test Page4_1 build");
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text(this.toString()),),
        body: Center(
          child: TextButton(
            child: Text("Next Page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return TestPage4_1();
              }));
            },
          ),
        ),
      ),
    );
  }
}

