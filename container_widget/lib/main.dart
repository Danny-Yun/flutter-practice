import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      // SafeArea를 사용함으로써 컨테이너 위젯이 화면 밖으로 넘어가지 않게 된다.
      body: SafeArea(
        // 컨테이너 위젯은 자식이 없으면 할 수 있는 최대한의 공간을 차지하기도 한다.
        // 그리고 컨테이너 위젯은 오직 하나의 자식을 가진다.
        child: Container(
          color: Colors.lime,
          width: 100,
          height: 100,
          // margin: EdgeInsets.all(40),
          margin: EdgeInsets.symmetric(
            vertical: 180,
            horizontal: 130,
          ),
          padding: EdgeInsets.all(30),
          child: Text('Come on!'),
        ),
      ),
    );
  }
}
