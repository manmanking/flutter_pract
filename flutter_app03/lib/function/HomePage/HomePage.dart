import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map userInfo = {
      "userName":"张三",
      "age":20
    };

    var jsonStr = json.encode(userInfo);
    print( userInfo is Map);

    print( jsonStr is String);

    var userMap = json.decode(jsonStr);
    print("userMap ${userMap is Map}");
    print(userMap["userName"]);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           RaisedButton(child: Text("搜索"),
           onPressed: (){
            Navigator.pushNamed(context, "/search",arguments: {
              "id":1234567345678
            });
              // 下面是普通路由 实现 页面的跳转
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder:(context)=>SearchHome())
              // );
              },
           ),
           RaisedButton(
             child: Text("跳转到TabbarController"),
             onPressed: (){

               Navigator.pushNamed(context, "/TabBarControllerPage");
               // 下面是普通路由 实现 页面的跳转
              //  Navigator.of(context).push(
              //    MaterialPageRoute(builder: (context)=>NewsDetail(newsId: "12345678sjkdjkslds"))
              //  );
             },
           ),
           RaisedButton(
            child: Text("CustomTapBar"),
            onPressed: (){
              Navigator.pushNamed(context, "/TopTabBarPage");
            },
           ),
           RaisedButton(
             child: Text("按钮demopage"),
             onPressed: (){
              Navigator.pushNamed(context, "/ButtonDemoPage");
             },
           ),
           RaisedButton(
             child: Text("formDemopage"),
             onPressed: (){
              Navigator.pushNamed(context, "/TextFieldDemoPage");
             },
           ),
           RaisedButton(
             child: Text("AlertDialog"),
             onPressed: (){
              Navigator.pushNamed(context, "/AlertDialogDemoPage");
             },
           ),
           RaisedButton(
             child: Text("checkBox"),
             onPressed: (){
              //Navigator.pushNamed(context, "/ButtonDemoPage");
             },
           ),
           RaisedButton(
             child: Text("按钮demopage"),
             onPressed: (){
              //Navigator.pushNamed(context, "/ButtonDemoPage");
             },
           ),
           RaisedButton(
             child: Text("RadioDemo"),
             onPressed: (){
              //Navigator.pushNamed(context, "/ButtonDemoPage");
             },
           )

         ],
       ),
      backgroundColor: Colors.pink,
      
       
    );
  }
}