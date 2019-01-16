import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'image widget',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
              'https://i2.hdslb.com/bfs/face/0cca7e53848ebd079e1b55fde929a473a882ee7f.jpg@68w_68h.webp',
              fit: BoxFit.scaleDown,
              // fit: BoxFit.contain, // 撑满一边，但是保持比例，不变型
              // fit: BoxFit.fill, // 完全充满容器，可能变形
              // fit: BoxFit.fitWidth, // 横向充满
              // fit: BoxFit.fitHeight,// 纵向充满
              // fit: BoxFit.cover,// 充满容器，可能被裁切，但是不变形
              color: Colors.cyanAccent,
              colorBlendMode: BlendMode.exclusion,
              repeat: ImageRepeat.repeat,
              ),
            width: 400,
            height: 400,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
