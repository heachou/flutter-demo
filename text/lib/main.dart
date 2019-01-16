import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Text widget',
      home:Scaffold(
        body:Center(
          child: Text(
            '这是一个text widge一个text widget 演示,这是是一idget 演示,这是一个text widget 示,这是一个text widget 演示,这是一个text widget 演示,',
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 255, 100, 100),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
