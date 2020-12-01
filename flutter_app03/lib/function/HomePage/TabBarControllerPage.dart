import 'package:flutter/material.dart';
class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {
  
  TabController _tabController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(this._tabController.index);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TapController"),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(child: Text("热门"),),
            Tab(child: Text("推荐"),)
          ],
        ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            Center(child: Text("第一个 Tab 热门"),),
            Center(child: Text("第2个 Tab 推荐"),),
          ],
        ),

    );
  }
}