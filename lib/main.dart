
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var materialApp = new MaterialApp(
      home:new MyHomePage(),
      title: '导航例子',
      //命名路由
      routes: {
        '/hello':(BuildContext context)=>HelloPage()
      },
    );
    return materialApp;
  }


}

//首页实例
class MyHomePage extends StatefulWidget{

  _MyHomePageState createState()=> new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('MateriaalApp 示例'),
      ),
      body: Center(

        child:new RaisedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/hello');
            },child: Text('go to hello page'),),
      ),
    );
  }
}

//hello page
class HelloPage extends StatefulWidget{

  _HelloPageState createState()=> new _HelloPageState();
}

class _HelloPageState extends State<HelloPage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Hello !!'),
      ),
      body: Center(
        child: Text('hello page'),
      ),
    );
  }
}