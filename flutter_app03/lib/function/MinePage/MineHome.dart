import 'package:flutter/material.dart';
class MineHome extends StatefulWidget {
  MineHome({Key key}) : super(key: key);

  @override
  _MineHomeState createState() => _MineHomeState();
}

class _MineHomeState extends State<MineHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("我的页面"),
          RaisedButton(
            child: Text("登陆"),
            onPressed: (){
              Navigator.of(context).pushNamed("/LoginPage");
            },
          ),
        ],
      ),
    );
  }
}