
import 'package:flutter/material.dart';

class AlertDialogDemoPage extends StatefulWidget {
  AlertDialogDemoPage({Key key}) : super(key: key);

  @override
  _AlertDialogDemoPageState createState() => _AlertDialogDemoPageState();
}

class _AlertDialogDemoPageState extends State<AlertDialogDemoPage> {


  _alertDialog() async{
    var result = await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("提示信息"),
          content: Text("确定要删除吗"),
          actions: [
            FlatButton(
              child: Text("q取消"),
              onPressed: (){
                print("取消");
                Navigator.pop(context,"cancle");
              },
            ),
            FlatButton(
              child: Text("确定"),
              onPressed: (){
                print("确定");
                Navigator.pop(context,"ok");
              },
            )
          ],
        );
      }
    );

  print("result:${result}");
  }

  _simpleDialog() async{

   var result = await showDialog(
      context:context,
      builder:(context){

        return SimpleDialog(
          title: Text("选择内容"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("option A"),
              onPressed: (){
                print("selected A");
                Navigator.pop(context,"A");
              },
            ),
             SimpleDialogOption(
              child: Text("option B"),
              onPressed: (){
                print("selected B");
                Navigator.pop(context,"A");
              },
            ),
             SimpleDialogOption(
              child: Text("option C"),
              onPressed: (){
                print("selected C");
                Navigator.pop(context,"A");
              },
            ),
          ],
        );

      }
    );

  print("result:${result}");

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Alert Dialog"),
            onPressed: (){
              _alertDialog();
            },
          ),
          RaisedButton(
            child: Text("Simple Dialog"),
            onPressed: (){
              _simpleDialog();
            },
          ),
          RaisedButton(
            child: Text("Alert Dialog"),
            onPressed: (){
              
            },
          ),
          RaisedButton(
            child: Text("Alert Dialog"),
            onPressed: (){
              
            },
          ),
        ],
      ),
      )
    );
  }
}