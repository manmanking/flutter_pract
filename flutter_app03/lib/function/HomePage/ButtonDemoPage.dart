import 'package:flutter/material.dart';

class ButtonDemoPage extends StatefulWidget {
  ButtonDemoPage({Key key}) : super(key: key);

  @override
  _ButtonDemoPageState createState() => _ButtonDemoPageState();
}

class _ButtonDemoPageState extends State<ButtonDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Button 样式 page") ,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              RaisedButton(
                child: Text("普通按钮 "),
                onPressed: (){
                print("RasiseButton");
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("颜色"),
                onPressed: (){
                print("RasiseButton");
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("阴影"),
                onPressed: (){
                print("RasiseButton");
                },
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
              ),
           ],
         ),
         SizedBox(height: 20),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                width: 100,
                child: RaisedButton(
                  child: Text("宽高"),
                  onPressed: (){
                    print("设置宽度高度");
                  },
                  textColor: Colors.white,
                  color: Colors.blue,
                ),
              ),
              SizedBox(width: 10,),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label:Text("图标按钮"),
                onPressed: (){
                  print(" 图标按钮");
                },
                color: Colors.orange,
                textColor: Colors.blue,
                ),
              IconButton(
                icon:Icon(Icons.search,),
                 onPressed: null,
              ),
              Container(
                width: 100,
                height: 50,
                child:RaisedButton.icon(
                  icon: Icon(Icons.search), 
                  label:Text("图标按钮"),
                  onPressed: (){
                    print("按钮图标");
                  },
                  textColor: Colors.white,
                  color: Colors.yellow),
                color: Colors.green,
                
              )
            ],
         ),
         SizedBox(height: 20),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("自适应按钮"),
                    onPressed: (){
                      print("设置宽度高度");
                    },
                    textColor: Colors.white,
                    color: Colors.blue,
                  ),
                )
              )
            ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             RaisedButton(
               child: Text("圆角按钮"),
                  onPressed: (){
                      print("设置宽度高度");
                  },
                  textColor: Colors.white,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
             ),
            RaisedButton(
              child: Text("圆形按钮"),
                  onPressed: (){
                      print("设置宽度高度");
                  },
                  textColor: Colors.white,
                  color: Colors.blue,
                  splashColor: Colors.green,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.green
                    )
                  )
             ),
             FlatButton(
               child: Text("flat button"),
               color: Colors.blue,
               textColor: Colors.yellow,
               onPressed: (){
                 print("flat button");

               },
               
             ),
             OutlineButton(
               textColor: Colors.white,
               color: Colors.blue,
               child: Text("OutLineButton"),
               onPressed: (){
                 print("outLineButton");
               },
             )
           ],
         )
       ],
    ),
    );
  }
}