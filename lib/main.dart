import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  String mytext = "hello world";
  
  void _changeText() {
    setState(() {
      if(mytext.startsWith("h")){
        mytext = "welcome to my app";
      }else{
        mytext = "hello world";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(mytext),
            RaisedButton(
              child: Text("click"),
              onPressed: () {
                _changeText();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: _bodyWidget(),
    );
  }
}
