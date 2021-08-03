import 'package:flutter/material.dart';
import 'package:flutter_app/page4/child/firstPage.dart';
import 'package:flutter_app/page4/child/secondPage.dart';
import 'package:flutter_app/page4/child/thirdPage.dart';

class TestPage4 extends StatefulWidget {
  const TestPage4({Key? key}) : super(key: key);

  @override
  _TestPage4State createState() => _TestPage4State();
}

class _TestPage4State extends State<TestPage4> {
  var _index = 0;
  var pageList = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

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
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          ],
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: pageList[_index],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "홈",
              icon: Icon(Icons.home_rounded),
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
