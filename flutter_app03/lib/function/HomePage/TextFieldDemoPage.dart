import 'package:flutter/material.dart';


class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Textfiled")
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child:TextFieldDemo()
      )
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  var _userName = TextEditingController();
  var _password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._userName.text = "初始值";
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
            TextField(),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "请输入帐号",
                border: OutlineInputBorder(

                )
              ),
            ),
            SizedBox(height:10),
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.red)
              ),
              // decoration: InputDecoration(
              //   icon: Icon(Icons.people),
              //   border: OutlineInputBorder(),
              //   labelText: "用户名"
              // ),
              controller: _userName,
              onChanged: (value){
                setState(() {
                  this._userName.text = value;
                });
              },
            ),
            SizedBox(height:10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "密码",
                labelStyle: TextStyle(

                )
                
              ),
              onChanged: (value){
                setState(() {
                  this._password = value;
                });
              },
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                child: Text("登陆"),
                onPressed: (){
                  print("username${this._userName.text}");
                  print("userPassword${this._password}");

                },
              ),
            ),

      ],
    );
  }
}