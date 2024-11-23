import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeWidget(),
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.amber,
          secondary: Colors.blue,
          tertiary: Colors.green
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        )
      )
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter theme')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () => count++,
          );
        },
        // backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      body: HomeBody(),
    );
  }

  Widget HomeBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Press Count',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '$count',
                style: TextStyle(fontSize: 24),
              )
            ],
          )
        ],
      ),
    );
  }
}
