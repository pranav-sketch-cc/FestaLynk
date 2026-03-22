import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isPasswordVisible = false;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F5),
        body:SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 50,),
                Container(
                  width:double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF8EBBFF),
                        Color(0xFFF4F5F7),
                      ],
              ),
             ),
            ),
              SizedBox(height: 50,),
              Image.asset('images/FS_naming.png',width: 240,),
        ],
          ),
            ),
          );
          


  }
}