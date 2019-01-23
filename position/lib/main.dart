import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('https://avatars1.githubusercontent.com/u/643040?v=4'),
          radius: 100.0,
        ),
        new Positioned(
          top: 10.0,
          left: 10.0,
          child: new Text('position widget',
          ),
        ),
        
        new Positioned(
          bottom: 30.0,
          right: 10.0,
          child: new Container(
            height: 30,
            width: 130,
            decoration: new BoxDecoration(
              color: Colors.lightBlue
            ),
            padding: EdgeInsets.all(5.0),
            child: Text('position widget'),
          ),
        ),
        new Positioned(
          bottom: 10.0,
          left: 10.0,
          child: new Text('position widget'),
        ),
      ],
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('position widget'),
        ),
        body: Center(
          child: stack,
        ),
      )
    );
  }
}

