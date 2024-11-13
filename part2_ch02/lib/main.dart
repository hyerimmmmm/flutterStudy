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
          color: Colors.red,
          height: 100,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(color: Colors.blue, width: 50, height: 50, margin: const EdgeInsets.symmetric(vertical: 10),),
                  Container(color: Colors.blue, width: 50, height: 50, margin: const EdgeInsets.symmetric(vertical: 10),),
                  Container(color: Colors.blue, width: 50, height: 50, margin: const EdgeInsets.symmetric(vertical: 10),),
                  Container(color: Colors.blue, width: 50, height: 50, margin: const EdgeInsets.symmetric(vertical: 10),),
                  Container(color: Colors.blue, width: 50, height: 50, margin: const EdgeInsets.symmetric(vertical: 10),),
                  Container(color: Colors.blue, width: 50, height: 50, margin: const EdgeInsets.symmetric(vertical: 10),),
                ],
              ),
            ),
          )
        ),
        Container(
          width: double.infinity,
          color: Colors.red,
          height: 100,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
        Container(
          width: double.infinity,
          color: Colors.red,
          height: 100,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
      ],
    );
  }
}
