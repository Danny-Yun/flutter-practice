import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
        elevation: 0.0,
        backgroundColor: Colors.pink[300],
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go to the Second page'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return SecondPage();
                }),
              );
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
        elevation: 0.0,
        backgroundColor: Colors.pink[300],
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go to the First page'),
            onPressed: () {
              Navigator.pop(context2);
            }),
      ),
    );
  }
}
