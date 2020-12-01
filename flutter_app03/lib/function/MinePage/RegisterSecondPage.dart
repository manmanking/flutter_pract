import 'package:flutter/material.dart';
import 'package:flutter_app03/function/Tabbars/CustomTabBars.dart';
class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key key}) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("邮箱登陆")),
      body: Column(
        children: <Widget>[
          Text("邮箱登陆"),
          RaisedButton(
            child: Text("邮箱登陆完成"),
            onPressed: (){
              //Navigator.of(context).pushNamedAndRemoveUntil("/", (route) => route == null);
              Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context)=> CustomTabBars(currentIndex: 3)),(route) => false);
            },
          )
        ],
      ),
    );
  }
}