import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 비율로 배치하기'),
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
      children: [
        Container(
         width: double.infinity,
         height: 200,
         color: Colors.red,
        ),
        Flexible(child: Container(
          color: Colors.orange,
          height: 100,
        )),
        Expanded(child: Container(
          color: Colors.yellow,
          height: 100,
        ))
      ],
    );
  }
}
