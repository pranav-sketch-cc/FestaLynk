import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool _visible = true;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

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