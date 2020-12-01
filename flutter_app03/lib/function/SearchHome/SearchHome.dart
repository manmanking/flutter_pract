import 'package:flutter/material.dart';

class SearchHome extends StatefulWidget {
  
  final Map arguments;
  SearchHome({Key key,this.arguments}) : super(key: key);

  @override
  _SearchHomeState createState() => _SearchHomeState(arguments:this.arguments);
}

class _SearchHomeState extends State<SearchHome> {
  final Map arguments;
  _SearchHomeState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title:Text("搜索页面")),
       body: Text("内容${this.arguments != null ? this.arguments['id'] : "0"}"),
    );
  }
}