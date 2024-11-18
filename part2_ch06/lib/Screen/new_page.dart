import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome new Page'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go to Back')
        ),
      ),
    );
  }
}
