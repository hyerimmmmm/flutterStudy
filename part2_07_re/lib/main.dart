import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeWidget(),
      theme: customTheme,
    ),
  );
}

final customTheme = ThemeData(
    colorScheme: ColorScheme.dark(),
    textTheme: TextTheme(
        bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
    )
);

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
    final textTheme = customTheme.textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Press Count',
                style: textTheme.bodyLarge,
              ),
              Text(
                'Press Count',
                style: textTheme.bodyMedium,
              ),
              Text(
                'Press Count',
                style: textTheme.bodySmall,
              ),
              Text(
                '$count',
// style: TextStyle(fontSize: 24),
              )
            ],
          )
        ],
      ),
    );
  }
}
