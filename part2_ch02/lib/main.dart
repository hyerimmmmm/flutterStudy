import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 좌우로 배치하기'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 80,
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 80,
            child: Text('Container 2'),
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 80,
            child: Text('Container 3'),
          ),
        ],
      ),
    );
  }
}
