import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('study to container'),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Color(0xFF9AFFC2),
      padding: EdgeInsets.fromLTRB(10, 15, 20, 25),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Center(child: Text('Hello Container Hello Container Hello Container Hello Container Hello Container Hello Container Hello Container')),
    );
  }
}

