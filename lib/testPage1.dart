import 'package:flutter/material.dart';

class TestPage1 extends StatelessWidget {
  const TestPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text(this.toString())),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "이름을 입력해 주세요."),
              controller: _nameController,
            ),
            SizedBox(height: 20),
            Text("hi", style: TextStyle(fontSize: 30),),
            MyCheckBox()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print("name: ${_nameController.text}");
            return showMyDialog(context, _nameController.text);
          },
        ),
      ),
    );
  }

  dynamic showMyDialog(BuildContext context, String text) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(
              'Message $text',
            ),
          );
        }
    );
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: _isCheck, onChanged: (value) {
      setState(() {
        _isCheck = value!;
      });
    });
  }
}

