import 'package:flutter/material.dart';

class MazagineHome extends StatefulWidget {
  MazagineHome({Key key}) : super(key: key);

  @override
  _MazagineHomeState createState() => _MazagineHomeState();
}

class _MazagineHomeState extends State<MazagineHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title:Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(
                      text: "热门",
                      icon: Icon(Icons.hot_tub),
                    ),
                    Tab(text: "推荐")
                  ],
                  labelColor: Colors.red,
                ) ,
              )
            ],
          )
        ),
      body: TabBarView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "magazine Home "
                  ),  
              ),
              RaisedButton(
                child: Text("进入杂志详情页面"),
                  onPressed: (){
                    Navigator.pushNamed(context, "/magazineDetail",arguments: {
                    "id":123456781122
                  });
                },
              ),
            ],
          ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("第二个Tab"),),
            ListTile(title: Text("第二个Tab"),),
            ListTile(title: Text("第二个Tab"),),
            ListTile(title: Text("第二个Tab"),),
          ],
        )
        ],
      )
    
    ),
    );
  }
}