import 'package:flutter/material.dart';
import 'package:flutter_app03/Routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: onGenerateRoute,
      );
  }
}



class HomeContent extends StatelessWidget {
  List list = new List();

  HomeContent() {
    for (var i = 0; i < 20; i++) {
      list.add("index $i row come on baby");
    }
  }

  Widget _getDataList(content, index) {
    return ListTile(
      title: Text(
        list[index],
        style: TextStyle(color: Colors.green, fontSize: 20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return HomePageColumn();

    //CardTest();
    // ColumnAndRow()
    //IconContainer(),
    // child:ListView.builder(
    //   itemCount: this.list.length,
    //   itemBuilder: (content,index){
    //     return this._getDataList(content, index);
    //   },
    // )
  }
}


class HomePageColumn extends StatefulWidget {
  HomePageColumn({Key key}) : super(key: key);

  @override
  _HomePageColumnState createState() => _HomePageColumnState();
}

class _HomePageColumnState extends State<HomePageColumn> {
  
  int count = 0;
  List dataSourcesList = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        Column(
          children: dataSourcesList.map((value){
            return ListTile(title: Text(value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              backgroundColor: Colors.grey
            )));
          }).toList(),
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState(() {
              count ++;
              dataSourcesList.add("我是第${this.count} 新闻");
            });
          },
        )

      ],
      
    );
  }
}



class StatefulHomePage extends StatefulWidget {
  StatefulHomePage({Key key}) : super(key: key);

  @override
  _StatefulHomePageState createState() => _StatefulHomePageState();
}

class _StatefulHomePageState extends State<StatefulHomePage> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         Chip(
           label: Text("hello flutter ${this.countNum}",
            style: TextStyle(
              color: Colors.green,
              fontSize: 20
            ),
           ),
           backgroundColor: Colors.red,
         ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState(() {
              countNum++;
            });
          },
        )
      ],
    );
  }
}

class StatelessHomePage extends StatelessWidget {
  const StatelessHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("hello world"),
        RaisedButton(
          child: Text("Button"),
          onPressed: (){

          },
        )
      ],

    );
  }
}



class WrapTest extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      spacing: 10,
      runSpacing: 20,
      children: <Widget>[

        RaisedButtonTest("第一季☝️"),
        RaisedButtonTest("第2季☝️"),
        RaisedButtonTest("第3季☝️"),
        RaisedButtonTest("第4季☝️"),
        RaisedButtonTest("第5季☝️"),
        RaisedButtonTest("第6季☝️"),
        RaisedButtonTest("第7季☝️"),
        RaisedButtonTest("第8季☝️"),


      ],

    );
  }


}


class RaisedButtonTest extends StatelessWidget {

  final String text;

  const RaisedButtonTest(this.text,{Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(text),
    );
  }



}

class AlignTest extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          child: Text(
            "hello flutter",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.right,
          ),
      color: Colors.orange,
    ));
  }



}


class CardTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Align(
                child: Text(
                  "张三",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                alignment: Alignment.centerLeft,
              ),
              ListTile(
                title: Text(
                  "李四",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                  textAlign: TextAlign.left,
                ),
                subtitle: Text(
                  "高级工程师",
                  style: TextStyle(color: Colors.green, fontSize: 20.0),
                ),
              ),
            ],
          ),
          color: Colors.red,
          margin: EdgeInsets.all(10),
        ),
        Card(
            color: Colors.orange,
            child: Column(
              children: <Widget>[
                AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset("images/timg.jpeg", fit: BoxFit.cover)),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3683444931,3429416893&fm=26&gp=0.jpg")),
                  //  ClipOval(
                  //     child:Image.asset("images/timg.jpeg",fit: BoxFit.cover,width: 40,height: 40)
                  // ) ,//Icon(Icons.home),
                  title: Text("XXXXX"),
                  subtitle: Text("XXXXXXXXXXXXX"),
                )
              ],
            ),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 5)),
        Image.asset("images/timg.jpeg", fit: BoxFit.cover),
        Image.asset("images/timg.jpeg", fit: BoxFit.cover)
      ],
    );
  }
}

class StackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        Container(
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        Text("hello flutter")
      ],
    );
  }
}

class ColumnAndRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: Row(children: <Widget>[
            Expanded(
              child: Container(
                  height: 200,
                  //color: Colors.black,
                  child: Center(
                    child: Text(
                      "hello flutter",
                      style: TextStyle(color: Colors.red, fontSize: 20.0),
                    ),
                  )),
            )
          ]),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.green),
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              //flex: 2,
              child: Container(
                height: 200,
                child: Image.asset("images/timg.jpeg", fit: BoxFit.cover),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 1,
                child: Container(
                    height: 200,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 100,
                          child: Image.asset("images/timg.jpeg",
                              fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 100,
                          child: Image.asset("images/timg.jpeg",
                              fit: BoxFit.cover),
                        ),
                      ],
                    )))
          ],
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100.0,
      height: 100.0,
      child: Icon(
        Icons.home,
        color: Colors.white,
        size: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class ListViewTest extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> listData = List();

    for (var i = 0; i < 20; i++) {
      listData.add(ListTile(
        leading: Icon(Icons.settings),
        title: Text("index $i row"),
      ));
    }

    return listData;
  }

  @override
  Widget build(BuildContext context) {
    var getListData = this._getListData();
    return ListView(
        padding: EdgeInsets.fromLTRB(50, 20, 0, 0), children: getListData);
  }
}

class ImageSircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(150),
        ),
        child: Image.asset(
          "images/timg.jpeg",
          fit: BoxFit.fill,
          // width: 100,
          // height: 100,
        ),
        // child: ClipOval(
        //   child: Image.asset(
        //     "images/timg.jpeg",
        //     width: 100,
        //     height: 100,
        //     fit: BoxFit.cover,
        //   ),
      ),
      // child: Container(
      //   child:ClipOval(
      //     child: Image.network(
      //       "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2885567093,3695815372&fm=26&gp=0.jpg",
      //       width:100,
      //       height: 100,
      //       fit: BoxFit.cover,
      //     ),
      //   ) ,
      // ),
      // child: Container(
      //   width: 300,
      //   height: 300,
      //   decoration: BoxDecoration(
      //     color: Colors.yellow,
      //     // borderRadius: BorderRadius.all(
      //     //   Radius.circular(150.0)
      //     // )
      //     borderRadius: BorderRadius.circular(150),
      //     image: DecorationImage(
      //       image: NetworkImage("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2885567093,3695815372&fm=26&gp=0.jpg"),
      //       fit: BoxFit.cover
      //     ),
      //   ),

      // ),
    );
  }
}

class ImageLoadTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2885567093,3695815372&fm=26&gp=0.jpg",
        alignment: Alignment.bottomRight,
        //color: Colors.yellow,
        //colorBlendMode:BlendMode.luminosity,
        //fit: BoxFit.scaleDown,
        repeat: ImageRepeat.repeatY,
      ),
      width: 300,
      height: 800,
      decoration: BoxDecoration(color: Colors.green),
    );
  }
}

class TextTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        "2020-11-19 flutter", //有重新捡起来了，一年之计，三年之计。come on baby
        textAlign: TextAlign.right,
        overflow: TextOverflow.fade,
        //maxLines: 1,
        textScaleFactor: 1,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.dashed,
        ),
      ),
      height: 100.0,
      width: 300.0,
      decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
      //transform: Matrix4.translationValues(x, y, z),
      alignment: Alignment.bottomLeft,
    ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
