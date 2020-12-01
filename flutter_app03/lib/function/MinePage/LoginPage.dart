import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登陆页面AppBar 调整"),
        backgroundColor: Colors.red,
        //leading: Icon(Icons.menu),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed:(){
            print("Menu");
          } ,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("Search");
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print("setting");
            },
          )

        ],
        ),
      body: Column(
        children: <Widget>[
          Text("LoginView"),
          RaisedButton(
            child: Text("登陆完成"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          RaisedButton(
            child: Text("注册"),
            onPressed: (){
              Navigator.of(context).pushNamed("/RegisterFirstPage");
              //Navigator.pushNamed(context,"/RegisterSecondPage");
            },
          )
        ],
      ),
    );
  }
}