import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('gridview widget'),
        ),
        // body: GridView.count(
        //   padding: const EdgeInsets.all(20),// 内边距
        //   crossAxisSpacing: 10.0,// 网格间距 10
        //   crossAxisCount: 3,//三列
        //   children: <Widget>[
        //     const Text('测试'),
        //     const Text('测试'),
        //     const Text('测试'),
        //     const Text('测试'),
        //     const Text('测试'),
        //   ],
        // )
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5.0,// 纵轴
            crossAxisSpacing: 5.0, // 横轴间距
            childAspectRatio: 1
          ),
          children: <Widget>[
            new Image.network('https://avatars3.githubusercontent.com/u/1268691?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/8554143?v=4'),
            new Image.network('https://avatars3.githubusercontent.com/u/12746779?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/1680273?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/643040?v=4'),
            new Image.network('https://avatars3.githubusercontent.com/u/1268691?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/8554143?v=4'),
            new Image.network('https://avatars3.githubusercontent.com/u/12746779?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/1680273?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/643040?v=4'),
            new Image.network('https://avatars3.githubusercontent.com/u/1268691?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/8554143?v=4'),
            new Image.network('https://avatars3.githubusercontent.com/u/12746779?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/1680273?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/643040?v=4')
            new Image.network('https://avatars3.githubusercontent.com/u/1268691?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/8554143?v=4'),
            new Image.network('https://avatars3.githubusercontent.com/u/12746779?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/1680273?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/643040?v=4')
            new Image.network('https://avatars3.githubusercontent.com/u/1268691?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/8554143?v=4'),
            new Image.network('https://avatars3.githubusercontent.com/u/12746779?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/1680273?v=4'),
            new Image.network('https://avatars1.githubusercontent.com/u/643040?v=4')
          ],
        ),
      ),
    );
  }
}

