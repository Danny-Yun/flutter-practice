import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget',
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            // center 위젯이 상하좌우 모두에 대한 통제권을 가질 수 있도록, 세로축을 컨테이너의 필수 공간만큼으로 줄어들게 함
            mainAxisSize: MainAxisSize.min,
            // 세로축 정렬
            // mainAxisAlignment: MainAxisAlignment.center, (start, end, spaceEvenly, spaceBetween)

            // Column 위젯은 여러 자식을 갖기 때문에 children 어규먼트를 사용한다.
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 1'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
              // invisible container
              // Container(
              //   width: double.infinity,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
