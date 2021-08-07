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
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
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
                controller: _heightController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "키"),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "키를 입력하세요.";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  controller: _weightController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "몸무게"
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "몸무게를 입력하세요.";
                    }
                    return null;
                  }
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    onPressed: () {
                      final currentState = _formKey.currentState;
                      if (currentState != null && currentState.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => TestResultPage(
                                  height: double.parse(_heightController.text),
                                  weight: double.parse(_weightController.text))
                          )
                        );
                      }
                    },
                    child: Text("결과")),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TestResultPage extends StatelessWidget {
  final double height;
  final double weight;

  const TestResultPage({Key? key, required this.height, required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));
    print("bmi: $bmi");

    return Scaffold(
      appBar: AppBar(title: Text("결과 화면"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_calcBmi(bmi), style: TextStyle(fontSize: 36),),
            SizedBox(height: 16,),
            _buildIcon(bmi)
          ],
        ),
      ),
    );
  }

  String _calcBmi(double bmi) {
    var result = '저체중';
    if (bmi >= 35) {
      return '고도 비만';
    } else if (bmi >= 30) {
      return '2단계 비만';
    } else if (bmi >= 25) {
      return '1단계 비만';
    } else if (bmi >= 23) {
      return '과체중 비만';
    } else if (bmi >= 18.5) {
      return '정상';
    }
    return result;
  }

  Widget _buildIcon(double bmi) {
    if (bmi >= 23) {
      return Icon(
        Icons.sentiment_very_dissatisfied,
        color: Colors.red,
        size: 100,
      );
    } else if (bmi >= 18.5) {
      return Icon(
        Icons.sentiment_satisfied,
        color: Colors.green,
        size: 100,
      );
    } else {
      return Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.orange,
        size: 100,
      );
    }
  }
}
