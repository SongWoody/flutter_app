

import 'package:flutter/material.dart';
import 'dart:convert';

/// Json Test Page
class TestPage8 extends StatelessWidget {
  const TestPage8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String objText = '{ "name":"woody", "age"'':29 }';
    User? woody;
    try {
      woody = User.fromJson(jsonDecode(objText));
    } catch(e) {
      print("catch");
    }
    if (woody != null) {
      print('${woody.name}');
      print('${woody.age}');
    }

    return Scaffold(
      appBar: AppBar(title: Text("Json Test Page"),),
      body: Column(
        children: [
          Row(
            children: [
              Text("name: "),
              Text("${woody?.name}")
            ],
          ),
          Row(
            children: [
              Text("age: "),
              Text("${woody?.age}")
            ],
          ),

        ],
      ),
    );
  }
}

class User {
  String name;
  int age;

  User(this.name, this.age);

  factory User.fromJson(dynamic json) {
    return User(json['name'] as String, json['age'] as int);
  }

  @override
  String toString() {
    return '{ name:${this.name}, age:${this.age} }';
  }
}