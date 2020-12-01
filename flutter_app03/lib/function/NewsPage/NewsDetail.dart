import 'package:flutter/material.dart';


class NewsDetail extends StatefulWidget {
  final Map arguments;

  NewsDetail({Key key,this.arguments}) : super(key: key);

  @override
  _NewsDetailState createState() => _NewsDetailState(arguments: this.arguments);
}

class _NewsDetailState extends State<NewsDetail> {
  
  final Map arguments;

  _NewsDetailState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" 传值")),
        body: Center(child: Text("news Id${this.arguments != null ? this.arguments['id'] : "0"} ")),//
        backgroundColor: Colors.lightGreenAccent,

    );
  }
}