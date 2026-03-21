import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget{
  final bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F7),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(seconds: 3),
      child:
      Image.asset('images/splash_logo.png'),
      ),
    ),
  );
  }
}