import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatView(title: 'Flutter Demo Home Page'),
    );
  }
}

class ChatView extends StatefulWidget{
  ChatView({Key key, this.title}) : super(key: key);
  final String title;
  @override
  ChatViewState createState() => ChatViewState();
}

class ChatViewState extends State<ChatView> {
  var curMsg = "no msg";
  bool _loading = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yoo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("voice chat"),
          ),
          body: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  /*信息列表*/
                  new Expanded(
                    child: Center(
                      child: Container(
                        height: 500,
                        width: double.infinity,
                        //自动撑满
                        margin: new EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                new Border.all(color: Colors.grey, width: 1),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8))),
                        child: Text(
                          "$curMsg",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Expanded(
                      child: new RaisedButton(
                    onPressed: recordVoice,
                    onLongPress: longPress,
                    child: Text("record"),
                  ))
                ],
              ),
            ],
          ),
        ));
  }

  void recordVoice() {
    print("recording..");
    setState(() {
      curMsg = new DateTime.now().toString();
    });
  }

  //TODO 长按录音
  void longPress(){

  }
}
