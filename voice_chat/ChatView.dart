import 'package:flutter/material.dart';

var title = "voice chat";
List msgList;
void main() => runApp(new App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: double.infinity,//自动撑满
            decoration: BoxDecoration(
                color: Colors.white,
                border: new Border.all(color: Colors.grey, width: 8),
                borderRadius: const BorderRadius.all(const Radius.circular(8))),
            child: Text(
              'Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}

void check() {}
