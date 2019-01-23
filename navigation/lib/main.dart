import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '导航演示',
  home: new FirstScreen(),
));

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('screen one'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('到 screen two'),
          color: Colors.lightBlue,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>new SecondScreen()
            ));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('screen two',
          style: TextStyle(
            color: Colors.redAccent
          )
        ),
      ),
      body:Center(
        child: RaisedButton(
          child: Text('到上一页',
            style: TextStyle(
              color: Colors.white
            )
          ),
          color: Colors.redAccent,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>new FirstScreen()
            ));
          },
        ),
      )
    );
  }
}