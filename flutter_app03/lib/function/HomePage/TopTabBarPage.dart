import 'package:flutter/material.dart';

class TopTabBarPage extends StatefulWidget {
  TopTabBarPage({Key key}) : super(key: key);

  @override
  _TopTabBarPageState createState() => _TopTabBarPageState();
}

class _TopTabBarPageState extends State<TopTabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("customTopTabBar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Center(child: Text("热门")),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(3)
                  ),
                )
                ),
                Tab(child: Container(
                  child: Center(child: Text("推荐")),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(3)
                  ),
                ))
            ],
            
          ),
          ),
        body:TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),ListTile(
                  title: Text("第一个Tab"),
                ),ListTile(
                  title: Text("第一个Tab"),
                ),ListTile(
                  title: Text("第一个Tab"),
                ),ListTile(
                  title: Text("第一个Tab"),
                )

              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第2个Tab"),
                ),ListTile(
                  title: Text("第2个Tab"),
                ),ListTile(
                  title: Text("第2个Tab"),
                ),ListTile(
                  title: Text("第2个Tab"),
                ),ListTile(
                  title: Text("第2个Tab"),
                )

              ],
            ),
          ],
        )
        ) ,
      );
  }
}