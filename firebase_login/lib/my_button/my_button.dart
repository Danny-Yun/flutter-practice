import 'package:flutter/material.dart';
import '/login_app/login.dart';

class MyButton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final style;
  final double radius;
  final VoidCallback onPressed;

  MyButton(
      {required this.image,
      required this.text,
      required this.style,
      required this.radius,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final LogIn logIn = new LogIn();
    logIn.buildButton();

    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/glogo.png'),
            Text(
              'Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          minimumSize: Size(250, 50),
        ),
        onPressed: () {},
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
    );
  }
}
