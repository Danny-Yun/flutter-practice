import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget',
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: SafeArea(
        child: Center(
          child: Row(
            // 끝까지 쭉 뻗게끔
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Text('Container1'),
              ),
              Container(
                color: Colors.white,
                width: 100,
                height: 100,
                child: Text('Container2'),
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text('Container3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
