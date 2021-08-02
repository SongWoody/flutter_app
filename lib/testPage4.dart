import 'package:flutter/material.dart';

class TestPage4 extends StatefulWidget {
  const TestPage4({Key? key}) : super(key: key);

  @override
  _TestPage4State createState() => _TestPage4State();
}

class _TestPage4State extends State<TestPage4> {
  var _index = 0;

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
        appBar: AppBar(
          title: Text(
            "UI Example",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Text("Page ${_index + 1}"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
              label: "홈",
              icon: Icon(Icons.home_rounded)
            ),
            BottomNavigationBarItem(
              label: "이용서비스",
              icon: Icon(Icons.article_sharp)
            ),
            BottomNavigationBarItem(
              label: "내 정보",
              icon: Icon(Icons.account_circle_rounded)
            )
          ],
          onTap: (index) {
            setState(() {
              print("$index ???");
              _index = index;
            });
          },
        ),
      ),
    );
  }
}

class TabContainer extends StatefulWidget {
  const TabContainer({Key? key}) : super(key: key);

  @override
  _TabContainerState createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
