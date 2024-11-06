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
      padding: EdgeInsets.fromLTRB(10, 15, 20, 25),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF9AFFC2),
        border: Border.all(color: Colors.amber, width: 2, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(5, 5), blurRadius: 5, spreadRadius: 5),
          BoxShadow(color: Colors.blue.withOpacity(0.3), offset: Offset(-5, -5), blurRadius: 5, spreadRadius: 5)
        ],
      ),
      child: Center(child: Text('Hello Container Hello Container Hello Container Hello Container Hello Container Hello Container Hello Container')),
    );
  }
}

