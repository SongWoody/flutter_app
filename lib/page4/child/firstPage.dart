import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildTop(),
          _buildMiddle(),
          _buildBottom(),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Opacity(
                opacity: 0,
                child: Column(
                  children: [
                    Icon(Icons.local_taxi, ),
                    Text("택시"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return Text("Middle");
  }

  Widget _buildBottom() {
    return Text("Bottom");
  }
}