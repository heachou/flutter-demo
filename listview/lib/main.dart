import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'listview widget',
        home: Scaffold(
            appBar: new AppBar(
              title: new Text('listview widget'),
            ),
            body: Center(
              child: Container(
                color: Colors.pinkAccent,
                height: 200,
                child: MyList(),
                // child: DynamicList(
                //   items:new List<String>.generate(1000, (i)=>"items $i")
                // ),
              ),
            )
          )
        );
  }
}
// 固定长度
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal, // 横向
      children: <Widget>[
        new Image.network(
            'https://avatars3.githubusercontent.com/u/1268691?v=4'),
        new Image.network(
            'https://avatars1.githubusercontent.com/u/1680273?v=4'),
        new Image.network(
            'https://avatars1.githubusercontent.com/u/643040?v=4'),
        new Image.network(
            'https://avatars1.githubusercontent.com/u/6128107?v=4'),
      ],
    );
  }
}

//  动态长度
class DynamicList extends StatelessWidget{
  final List<String> items;
  DynamicList({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context){
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
        return new ListTile(
          title: new Text('${items[index]}'),
        );
      },
    );
  }
}




