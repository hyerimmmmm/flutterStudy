import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Text(
          'hello flutter',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    ),
  ));
}
