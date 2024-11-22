import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:part2_ch06/main.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome New Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text('Go to Back'),
            ),
            TextButton(
              onPressed: () => context.pushNamed('New2'),
              child: Text('Go to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome New Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text('Go to Back'),
            ),
            TextButton(
              onPressed: () => context.goNamed('Home'),
              child: Text('Go to Home'),
            )
          ],
        ),
      ),
    );
  }
}
