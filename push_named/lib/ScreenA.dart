import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext contextA) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Go to ScreenB'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange[600]),
              ),
              onPressed: () {
                Navigator.pushNamed(contextA, '/b');
              },
            ),
            ElevatedButton(
              child: Text('Go to ScreenC'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow[600]),
              ),
              onPressed: () {
                Navigator.pushNamed(contextA, '/c');
              },
            ),
          ],
        ),
      ),
    );
  }
}
