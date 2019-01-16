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
            // color: Colors.blueGrey,// 和渐变重复,保留一个
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.blueGrey,Colors.cyan,Colors.deepOrange]
              ),
              border: Border.all(width: 4,color: Colors.purple)
            ),
            padding: const EdgeInsets.fromLTRB(10,20,30,40),
            margin: const EdgeInsets.all(40),
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
