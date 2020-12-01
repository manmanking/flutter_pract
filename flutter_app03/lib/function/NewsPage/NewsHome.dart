import 'package:flutter/material.dart';
class NewsHome extends StatefulWidget {
  NewsHome({Key key}) : super(key: key);

  @override
  _NewsHomeState createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child:Column(
         children: <Widget>[
           RaisedButton(
             child: Text("详情页面"),
             onPressed: (){
               Navigator.pushNamed(context,"/newsDetail");
             },

             ),

         ],
       )
    ),
    backgroundColor:Colors.green ,
    );
  }
}