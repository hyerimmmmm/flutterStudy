import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 스크롤하기'),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8),
        )
      ],
    );
  }
}
