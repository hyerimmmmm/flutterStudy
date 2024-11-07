import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 상하로 배치하기'),
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
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 80,
            child: Text('Containainer 1'),
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 80,
            child: Text('Containainer 2'),
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 80,
            child: Text('Containainer 3'),
          ),
        ],
      ),
    );
  }
}
