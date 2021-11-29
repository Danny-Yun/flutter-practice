import 'package:flutter/material.dart';

void main() => runApp(ReviewApp());

class ReviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first_app_review',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ReviewHomePage(),
    );
  }
}

class ReviewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is review page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello'),
            Text('my age is 21'),
            Text('my name is riudiu'),
          ],
        ),
      ),
    );
  }
}
