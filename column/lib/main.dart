import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'column widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('column widget'),
        ),
        body: Center(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('column 1 column 1 column 1'),
            Expanded(
              child: Text('enpanded column 2',),
            ),
            Text('column 3'),
          ],
        ), 
        ) 
      ),
    );
  }
}

