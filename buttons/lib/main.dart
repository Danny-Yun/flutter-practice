import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons',
      debugShowCheckedModeBanner: false,
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              onLongPress: () {
                // 길게 눌러야 출력
                print('this is TextButton');
              },
              child: Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.lime, // primary - 글 색상
                // backgroundColor: Colors.pink,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('this is ElevatedButton');
              },
              child: Text(
                'Elevated Button',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent, // primary - 배경색
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // elevation: 0.0,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('this is OutlinedButton');
              },
              child: Text(
                'Outlined Button',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.redAccent,
                side: BorderSide(
                  color: Colors.pinkAccent,
                  width: 3, // 외곽선 두께
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
