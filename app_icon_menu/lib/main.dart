import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // leading은 간단한 위젯이나 아이콘 등을 왼쪽에 위치시키는 역할을 한다.
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   // onPressed는 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳
        //   onPressed: () {
        //     print('menu button is clicked');
        //   },
        // ),
        // action은 복수의 아이콘 등을 오른쪽에 위치시키는 역할을 한다.
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/riudiu.jpg'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/gatsby.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('RIUDIU'),
              accountEmail: Text('riudiu@riudiu.com'),
              // 더보기 아이콘
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              // 박스 모양 꾸미기
              decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            /* 
              ListTile은 리스트의 한줄 단위를 의미한다.
              리스트에서 각각의 listTile 내에서는 아이콘, 타이틀, 버튼 등 요소들의 배치가 필요하다.
              플러터에서는 이런 요소들을 패딩이나 마진 등에 전혀 신경쓰지 않고 편하게 배치할 수 있도록
              listTile 이라는 위젯을 제공한다. 
            */
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              // onPressed 함수는 주로 버튼에 사용되고, onTap은 gestureDetector나 InkWell 등에 주로 사용된다.
              // 가령 길게 누르기, 두번 탭하기 등 어떤 동작에 반응하는 이벤트를 위해서 사용된다.
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
