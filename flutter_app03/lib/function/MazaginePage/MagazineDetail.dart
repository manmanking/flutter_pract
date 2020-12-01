import 'package:flutter/material.dart';

class MagazineDetail extends StatefulWidget {

  final Map arguments;

  MagazineDetail({Key key,this.arguments}) : super(key: key);

  @override
  _MagazineDetailState createState() => _MagazineDetailState(arguments: this.arguments);

}

class _MagazineDetailState extends State<MagazineDetail> {

  final Map arguments;
  _MagazineDetailState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("杂志详情页面")),
      body: Center(
        child: Text("杂志内容${this.arguments != null ? this.arguments["id"] : "0"}"),
      ),
    );
  }
}