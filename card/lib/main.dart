import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('成都市高新区环球'),
            subtitle: Text('工作地址'),
            leading: new Icon(Icons.account_box,color:Colors.lightGreen),
          ),
          new Divider(color: Colors.black),
          ListTile(
            title: Text('成都市高新区环球'),
            subtitle: Text('工作地址'),
            leading: new Icon(Icons.account_box,color:Colors.lightGreen),
          ),
          new Divider(color: Colors.black),
          ListTile(
            title: Text('成都市高新区环球'),
            subtitle: Text('15112121221'),
            leading: new Icon(Icons.account_box,color:Colors.lightGreen),
          ),
          new Divider(color: Colors.black),
          ListTile(
            title: Text('成都市高新区环球'),
            subtitle: Text('15112121221'),
            leading: new Icon(Icons.account_box,color:Colors.lightGreen),
          ),
          new Divider(color: Colors.black),
          ListTile(
            title: Text('成都市高新区环球'),
            subtitle: Text('15112121221'),
            leading: new Icon(Icons.account_box,color:Colors.lightGreen),
          )
        ],
      ),
    );
    return MaterialApp(
      title: 'card widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('card widget'),
        ),
        body: card,
      )
    );
  }
}
