import 'package:flutter/material.dart';

void main() => runApp(new App());

//ListView
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "基础列表示例";
    return new MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            )
          ],
        ),
      ),
    );
  }
}
