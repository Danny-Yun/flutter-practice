import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 화면 우상단 debug 띠 없애기
      title: 'GATSBY',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('GATSBY'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0, // 높이를 0으로, appBar의 입체감을 없애줌
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          // crossAxisAlignment는 위젯들을 가로축으로 정렬할 때 쓴다
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/party.gif'),
                radius: 60.0, // radius는 써클의 크기를 지정할 때 사용
              ),
            ),
            Divider(
              // Divider는 구분선 역할을 함
              height: 60.0, // 여기서 높이는 선을 기준으로 위 아래 높이 간격을 나타낸다
              color: Colors.grey[800],
              thickness: 0.5, // 선의 두께
              endIndent: 30.0, // endIndent는 divider 선이 끝에서 어느정도 떨어져야 할지를 지정함
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, // 글자 간의 간격 지정
              ),
            ),
            SizedBox(
              // SizedBox 위젯은 2가지 속성을 가진다(height, width)
              height: 10.0,
            ),
            Text(
              'GATSBY',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "GATSBY'S POWER LEVEL",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '13',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              // Row는 위젯들을 가로로 나열할 때 사용한다
              children: <Widget>[
                /*
                  아래처럼 위젯s. 처럼 뒤에 찍히는 이 점을 여러 번 보았다
                  이는 항상 위젯이 가지고 있는 여러가지 속성이나 기능 또는 
                  관련 아이템들 중에서 하나를 선택하고 싶을 때 사용한다. 
                */
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'face hero tattoo',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'fire flames',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/gatsby.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
