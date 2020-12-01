import 'package:flutter/material.dart';
import 'package:flutter_app03/function/HomePage/HomePage.dart';
import 'package:flutter_app03/function/MazaginePage/MazaginHome.dart';
import 'package:flutter_app03/function/MinePage/MineHome.dart';
import 'package:flutter_app03/function/NewsPage/NewsHome.dart';

class CustomTabBars extends StatefulWidget {

  final int currentIndex;

  CustomTabBars({Key key,this.currentIndex = 0}) : super(key: key);

  @override
  _CustomTabBarsState createState() => _CustomTabBarsState(currentIndex);
}

class _CustomTabBarsState extends State<CustomTabBars> {

  int currentTab;
  final List pageList = [
    HomePage(),
    NewsHome(),
    MazagineHome(),
    MineHome()
  ];
  _CustomTabBarsState(this.currentTab);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text("flutter Demo3"),
            ),
            body: pageList[this.currentTab],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: this.currentTab,
              onTap: (int index){
                setState(() {
                  this.currentTab = index;
                });
              },
              
              fixedColor: Colors.green,
              type: BottomNavigationBarType.fixed,
              items: [
                  BottomNavigationBarItem(
                    title: Text("首页"),
                    icon: Icon(Icons.home),
                    //activeIcon: Icon(Icons.home,color: Colors.red)
                  ),
                  BottomNavigationBarItem(
                    title: Text("新闻"),
                    icon: Icon(Icons.category),
                    //activeIcon: Icon(Icons.category,color: Colors.red)
                  ),
                  BottomNavigationBarItem(
                    title: Text("杂志"),
                    icon: Icon(Icons.mail),
                    //activeIcon: Icon(Icons.mail,color: Colors.red)
                  ),
                  BottomNavigationBarItem(
                    title: Text("我的"),
                    icon: Icon(Icons.menu),
                    //activeIcon: Icon(Icons.menu,color: Colors.red)
                  ),
              ],
            ),
            drawer:Drawer(
              child: Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("userAccount"),
                    accountEmail: Text("userEmail"),
                    currentAccountPicture:CircleAvatar(
                       backgroundImage: NetworkImage("https://i2.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg@96w_96h_1c.webp")
                    ) ,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606584467799&di=a3cd8df658516695e589a1ce0382ed41&imgtype=0&src=http%3A%2F%2Fpic.rmb.bdstatic.com%2Fbdd221bcddf56111cd521a6460e67776.jpeg")
                      )
                    ),
                 ),
                  //DrawerHeader(child: Text("234567"),),
                  ListTile(
                    title: Text("我的空间"),
                    leading: Icon(Icons.home),
                    ),
                    Divider(color: Colors.red,),
                    ListTile(
                    title: Text("用户中心"),
                    leading: Icon(Icons.people),
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                    title: Text("设置"),
                    leading: Icon(Icons.settings),
                    ),
                    Divider(color: Colors.grey,),
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
