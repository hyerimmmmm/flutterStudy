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
        TestRadioButton(),
      ],
    );
  }
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestRadioValue {
  test1,
  test2,
  test3;
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestRadioValue? selectValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio<TestRadioValue>(
              value: TestRadioValue.test1,
              groupValue: selectValue,
              onChanged: (value) => setState(
                () => selectValue = value!,
              ),
            ),
            Text('test1', style: TextStyle(fontSize: 24),),
          ],
        ),
        Radio<TestRadioValue>(
          value: TestRadioValue.test2,
          groupValue: selectValue,
          onChanged: (value) => setState(
                () => selectValue = value!,
          ),
        ),
        Radio<TestRadioValue>(
          value: TestRadioValue.test2,
          groupValue: selectValue,
          onChanged: (value) => setState(
                () => selectValue = value!,
          ),
        ),
      ],
    );
  }
}
