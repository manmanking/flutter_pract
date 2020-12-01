import 'package:flutter/material.dart';
import 'package:flutter_app03/function/Tabbars/CustomTabBars.dart';


class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key key}) : super(key: key);

  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      appBar: AppBar(
        title: Text("快捷登陆"),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              child: Container(
                child: Text("热门"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ),Tab(
              child: Container(
                child: Text("推荐"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
        ),
      body: Column(
        children: <Widget>[
          Text("快捷登陆"),
          Row(
            children: <Widget>[
              RaisedButton(
                child:Text("快捷登陆完成"),
                onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(builder:(context)=> new CustomTabBars(currentIndex: 2)), (route) => route == null
                    );
                },
              ),
              RaisedButton(
                child: Text("邮箱登陆"),
                onPressed: (){
                  Navigator.of(context).pushNamed("/RegisterSecondPage");
                },
              ),


            ],
          )
        ],
      ),
    ),
    );
  }
}