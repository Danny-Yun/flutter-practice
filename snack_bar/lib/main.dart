import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snack Bar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
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
        title: Text('Snack Bar'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          // 버튼 3가지 - TextButton, ElevatedButton, OutlinedButton
          child: ElevatedButton(
            child: Text(
              'show me',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                content: const Text('A SnackBar has been shown'),
              ));
            },
          ),
        );
      }),
    );
  }
}
