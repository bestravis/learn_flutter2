import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hi",
      home: Scaffold(
        appBar: AppBar(title: Text('appbar1'),),
        body: Center(
          child: Text("hello1"),
        ),
      ),
    );
  }
}
