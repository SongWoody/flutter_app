import 'package:flutter/material.dart';

class TestPage5 extends StatelessWidget {
  const TestPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
          appBar: AppBar(title: Text("TestPage5"),),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(),
              )
            ],
          ),
        )
    );
  }
}
