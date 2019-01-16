import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.bottomRight, // 下右
            width: 500,
            height: 400,
            color: Colors.blueGrey,
            child: Text(
              'container widget test',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 255, 100, 100),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
