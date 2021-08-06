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

class TestForm extends StatefulWidget {
  const TestForm({Key? key}) : super(key: key);

  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final myController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  _printLatestValue() {
    print("${myController.text}");

  }
}

