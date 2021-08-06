import 'package:flutter/material.dart';

class TestPage5 extends StatelessWidget {
  const TestPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(child: TestForm());
  }
}

class TestForm extends StatefulWidget {
  const TestForm({Key? key}) : super(key: key);

  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TestPage5"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (text) {
                  if (text!.isEmpty) {
                    return "글자를 입력하세요.";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    final currentState = _formKey.currentState;
                    if (currentState != null && currentState.validate()) {
                      ScaffoldMessenger
                          .of(context)
                          .showSnackBar(
                          SnackBar(content: Text("검증 완료"))
                      );
                    }
                  },
                  child: Text("Button")
              )
            ],
          ),
        ),
      ),
    );
  }
}
