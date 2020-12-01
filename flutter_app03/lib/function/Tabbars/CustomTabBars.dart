import 'package:flutter/material.dart';
import 'package:flutter_app03/function/HomePage/HomePage.dart';
import 'package:flutter_app03/function/MazaginePage/MazaginHome.dart';
import 'package:flutter_app03/function/MinePage/MineHome.dart';
import 'package:flutter_app03/function/NewsPage/NewsHome.dart';
import 'package:flutter_app03/function/VideoHome/BookAudioVideoPage.dart';

class CustomTabBars extends StatefulWidget {
  final int currentIndex;

  CustomTabBars({Key key, this.currentIndex = 0}) : super(key: key);

  @override
  _CustomTabBarsState createState() => _CustomTabBarsState(currentIndex);
}

class _Item {
  String name, activeImage, normalImage;
  _Item(this.name, this.activeImage, this.normalImage);
}

class _CustomTabBarsState extends State<CustomTabBars> {
  int currentTab;
  List<Widget> pageList;
  final itemNames = [
    _Item("首页", "assets/images/ic_tab_home_active.png",
        "assets/images/ic_tab_home_normal.png"),
    _Item("书影音", "assets/images/ic_tab_subject_active.png",
        "assets/images/ic_tab_subject_normal.png"),
    _Item("小组", "assets/images/ic_tab_group_active.png",
        "assets/images/ic_tab_group_normal.png"),
    _Item("市集", "assets/images/ic_tab_shiji_active.png",
        "assets/images/ic_tab_shiji_normal.png"),
    _Item("我的", "assets/images/ic_tab_profile_active.png",
        "assets/images/ic_tab_profile_normal.png")
  ];

  List<BottomNavigationBarItem> itemList;

  @override
  void initState() {
    super.initState();
    if (pageList == null) {
      pageList = [
        HomePage(),
        BookAudioVideoPage(),
        NewsHome(),
        MazagineHome(),
        MineHome()
      ];
    }

    if (itemList == null) {
      itemList = itemNames
          .map((item) => BottomNavigationBarItem(
              icon: Image.asset(
                item.normalImage,
                width: 20.0,
                height: 20,
              ),
              title: Text(
                item.name,
                style: TextStyle(fontSize: 10),
              ),
              activeIcon: Image.asset(
                item.activeImage,
                width: 20,
                height: 20,
              )))
          .toList();
    }
  }

  _CustomTabBarsState(this.currentTab);

  Widget _getPagesWidget(int index) {
    return Offstage(
      offstage: currentTab != index,
      child: TickerMode(
        enabled: currentTab == index,
        child: pageList[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter Demo3"),
      ),
      body: pageList[this.currentTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentTab,
          onTap: (int index) {
            setState(() {
              this.currentTab = index;
            });
          },
          fixedColor: Colors.green,
          iconSize: 24,
          type: BottomNavigationBarType.fixed,
          items: itemList),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("userAccount"),
              accountEmail: Text("userEmail"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i2.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg@96w_96h_1c.webp")),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606584467799&di=a3cd8df658516695e589a1ce0382ed41&imgtype=0&src=http%3A%2F%2Fpic.rmb.bdstatic.com%2Fbdd221bcddf56111cd521a6460e67776.jpeg"))),
            ),
            //DrawerHeader(child: Text("234567"),),
            ListTile(
              title: Text("我的空间"),
              leading: Icon(Icons.home),
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
              title: Text("用户中心"),
              leading: Icon(Icons.people),
            ),
            Divider(
              color: Colors.green,
            ),
            ListTile(
              title: Text("设置"),
              leading: Icon(Icons.settings),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: UserAccountsDrawerHeader(
          accountName: Text("MMk"),
          accountEmail: Text("email"),
          // children: <Widget>[
          //   ListTile(title: Text("右侧菜单"),),
          //   ListTile(title: Text("右侧菜单"),),
          //   ListTile(title: Text("右侧菜单"),)
          // ],
        ),
      ),
    );
  }
}
