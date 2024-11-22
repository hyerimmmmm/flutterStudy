import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:part2_ch06/screen/new_page.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(path: '/', name: 'Home', builder: (context, _) => HomeWidget()),
          GoRoute(path: '/new1', name: 'New1', builder: (context, _) => NewPage()),
          GoRoute(path: '/new2', name: 'New2', builder: (context, _) => NewPage2())
        ],
      ),
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter에서 화면 이동하기'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => context.pushNamed('New1'),
          child: Text('Go to Page'),
        ),
      ),
    );
  }
}
