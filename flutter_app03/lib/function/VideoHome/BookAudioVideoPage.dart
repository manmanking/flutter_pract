import 'package:flutter/material.dart';

class BookAudioVideoPage extends StatefulWidget {
  BookAudioVideoPage({Key key}) : super(key: key);

  @override
  _BookAudioVideoPageState createState() => _BookAudioVideoPageState();
}

class _BookAudioVideoPageState extends State<BookAudioVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BookAudioVideoPage"),
      ),
      body: Center(
        child: Text("BookAudioVideoPage content"),
      ),
    );
  }
}
