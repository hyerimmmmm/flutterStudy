import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter의 다양한 입력들'),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TestPopupMenu(),
      ],
    );
  }
}

class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}

enum TestPopupMenuValue {
  testMenu1,
  testMenu2,
  testMenu3;
}

class _TestPopupMenuState extends State<TestPopupMenu> {
  TestPopupMenuValue selectValue = TestPopupMenuValue.testMenu1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectValue.name, style: TextStyle(fontSize: 24),),
        PopupMenuButton(
          itemBuilder: (context) {
            return TestPopupMenuValue.values
                .map(
                    (value) => PopupMenuItem(value: value, child: Text(value.name)))
                .toList();
          },
          onSelected: (newValue) => setState(() => selectValue = newValue),
        ),
      ],
    );
  }
}
