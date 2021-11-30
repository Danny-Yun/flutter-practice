import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor card',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO ID CARD'),
        centerTitle: true, // 타이틀 중앙정렬
        backgroundColor: Colors.redAccent,
        elevation: 0.0, // elevation - 높이
      ),
      body: Center(
        // Center 위젯은 가로축에 해당
        child: Column(
          // mainAxisAlignment는 위젯들을 세로축으로 상단,중단,하단 등으로 정렬할 때 쓴다
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
