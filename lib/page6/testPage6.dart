import 'package:flutter/material.dart';

class TestPage6 extends StatelessWidget {
  const TestPage6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StopWatch",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StopWatchPage(),
    );
  }
}

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({Key? key}) : super(key: key);

  @override
  _StopWatchPageState createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StopWatch"),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _clickButton();
        }),
        child: Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0',
                      style: TextStyle(fontSize: 50.0),
                    ),
                    Text("00")
                  ],
                ),
                Container(
                  width: 100,
                  height: 200,
                  child: ListView(
                    children: [],
                  ),
                )
              ],
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {},
                child: Icon(Icons.rotate_left),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("랩타입"),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _clickButton() {}
}
