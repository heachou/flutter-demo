import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'row widget',
      home: Scaffold(
          appBar: new AppBar(
            title: new Text('row widget'),
          ),
          body: new Row(
            children: <Widget>[
              Expanded(
                child: new RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: new Text('Red Button'),
                ),
              ),
              new RaisedButton(
                onPressed: () {},
                color: Colors.blueAccent,
                child: new Text('blue Button'),
              ),
              new RaisedButton(
                onPressed: () {},
                color: Colors.pinkAccent,
                child: new Text('pink Button'),
              ),
            ],
          )),
    );
  }
}
